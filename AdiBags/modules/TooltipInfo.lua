--[[
AdiBags - Adirelle's bag addon.
Copyright 2010-2011 Adirelle (adirelle@tagada-team.net)
All rights reserved.
--]]

local addonName, addon = ...
local L = addon.L

--<GLOBALS
local _G = _G
local format = _G.format
local GameTooltip = _G.GameTooltip
local IsAltKeyDown = _G.IsAltKeyDown
local IsControlKeyDown = _G.IsControlKeyDown
local IsModifierKeyDown = _G.IsModifierKeyDown
local IsShiftKeyDown = _G.IsShiftKeyDown
local pairs = _G.pairs
local setmetatable = _G.setmetatable
local tconcat = _G.table.concat
local tinsert = _G.tinsert
local tsort = _G.table.sort
local wipe = _G.wipe
--GLOBALS>

local mod = addon:NewModule('TooltipInfo', 'AceEvent-3.0', 'AceHook-3.0')
mod.uiName = L['Tooltip information']
mod.uiDesc = L['Add more information in tooltips related to items in your bags.']

function mod:OnInitialize()
	self.db = addon.db:RegisterNamespace(self.name, {profile={
		item = 'any',
		container = 'any',
		filter = 'any',
	}})
end

function mod:OnEnable()
	if not self.hooked then
		GameTooltip:HookScript('OnTooltipSetItem', function(...)
			if self:IsEnabled() then
				return self:OnTooltipSetItem(...)
			end
		end)
		self.hooked = true
	end
end

function mod:GetOptions()
	local modMeta = { __index = {
		type = "select",
		width = "double",
		values = {
			never = L["Never"],
			shift = L["When shift is held down"],
			ctrl = L["When ctrl is held down"],
			alt = L["When alt is held down"],
			any = L["When any modifier key is held down"],
			always = L["Always"],
		},
	}}
	return {
		item = setmetatable({
			name = L["Show item information..."],
			order = 10,
		}, modMeta),
		container = setmetatable({
			name = L["Show container information..."],
			order = 20,
		}, modMeta),
		filter = setmetatable({
			name = L["Show filtering information..."],
			order = 30,
		}, modMeta),
	}, addon:GetOptionHandler(self)
end

local modifierTests = {
	never = function() end,
	always = function() return true end,
	any = IsModifierKeyDown,
	shift = IsShiftKeyDown,
	ctrl = IsControlKeyDown,
	alt = IsAltKeyDown,
}

local function TestModifier(name)
	return modifierTests[mod.db.profile[name] or "never"]()
end

local t = {}
local GetBagSlotFromId = addon.GetBagSlotFromId

function mod:OnTooltipSetItem(tt)
	local button = tt:GetOwner()
	if not button then return end
	local bag, slot, container = button.bag, button.slot, button.container
	if not (bag and slot and container) then return end

	local slotData = container.content[bag][slot]

	local stack = button:GetStack()
	if stack then
		button = stack
	end

	local numLines = tt:NumLines()

	if slotData.link and TestModifier("item") then
		tt:AddLine(" ")
		tt:AddLine(L["Item information"], 1, 1, 1)
		tt:AddDoubleLine(L["Maximum stack size"], slotData.maxStack)
		tt:AddDoubleLine(L["AH category"], slotData.class)
		tt:AddDoubleLine(L["AH subcategory"], slotData.subclass)
	end

	if TestModifier("container") then
		tt:AddLine(" ")
		tt:AddLine(L["Container information"], 1, 1, 1)
		local vBag, vSlot = bag, slot
		if stack then
			wipe(t)
			for slotId in pairs(stack.slots) do
				tinsert(t, format("(%d,%d)", GetBagSlotFromId(slotId)))
			end
			if #t > 1 then
				tsort(t)
				tt:AddDoubleLine(L["Virtual stack slots"], tconcat(t, ", "))
				vBag, vSlot = nil, nil
			end
		end
		if vBag and vSlot then
			tt:AddDoubleLine(L["Bag number"], vBag)
			tt:AddDoubleLine(L["Slot number"], vSlot)
		end
	end

	if TestModifier("filter") then
		tt:AddLine(" ")
		tt:AddLine(L["Filtering information"], 1, 1, 1)
		tt:AddDoubleLine(L["Filter"], button.filterName or "-")
		local section = button:GetSection()
		tt:AddDoubleLine(L["Section"], section.name or "-")
		tt:AddDoubleLine(L["Category"], section.category or "-")
	end

	if tt:NumLines() > numLines then
		tt:Show()
	end
end
