--[[
Name: LibBabble-Inventory-3.0
Revision: $Rev: 144 $
Maintainers: ckknight, nevcairiel, Ackis
Website: http://www.wowace.com/projects/libbabble-inventory-3-0/
Dependencies: None
License: MIT
]]

local MAJOR_VERSION = "LibBabble-Inventory-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Rev: 144 $"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub.") end
local lib = LibStub("LibBabble-3.0"):New(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local GAME_LOCALE = GetLocale()

lib:SetBaseTranslations {
	Alchemy = "Alchemy",
	["Ammo Pouch"] = "Ammo Pouch",
	Archaeology = "Archaeology",
	Armor = "Armor",
	["Armor Enchantment"] = "Armor Enchantment",
	Arrow = "Arrow",
	Axe = "Axe",
	Back = "Back",
	Bag = "Bag",
	Bandage = "Bandage",
	Blacksmithing = "Blacksmithing",
	Blue = "Blue",
	Book = "Book",
	Bow = "Bow",
	Bows = "Bows",
	Bullet = "Bullet",
	Chest = "Chest",
	Cloth = "Cloth",
	Cogwheel = "Cogwheel",
	Companion = "Companion",
	Companions = "Companions",
	Consumable = "Consumable",
	Container = "Container",
	Cooking = "Cooking",
	Crossbow = "Crossbow",
	Crossbows = "Crossbows",
	Dagger = "Dagger",
	Daggers = "Daggers",
	["Death Knight"] = "Death Knight",
	Devices = "Devices",
	Drink = "Drink",
	Druid = "Druid",
	Elemental = "Elemental",
	Elixir = "Elixir",
	Enchant = "Enchant",
	Enchanting = "Enchanting",
	["Enchanting Bag"] = "Enchanting Bag",
	Engineering = "Engineering",
	["Engineering Bag"] = "Engineering Bag",
	Explosives = "Explosives",
	Feet = "Feet",
	["First Aid"] = "First Aid",
	Fish = "Fish",
	Fishing = "Fishing",
	["Fishing Lure"] = "Fishing Lure",
	["Fishing Pole"] = "Fishing Pole",
	["Fishing Poles"] = "Fishing Poles",
	["Fist Weapon"] = "Fist Weapon",
	["Fist Weapons"] = "Fist Weapons",
	Flask = "Flask",
	["Flying Mount"] = "Flying Mount",
	Food = "Food",
	["Food & Drink"] = "Food & Drink",
	Gem = "Gem",
	["Gem Bag"] = "Gem Bag",
	Glyph = "Glyph",
	Green = "Green",
	["Ground Mount"] = "Ground Mount",
	Gun = "Gun",
	Guns = "Guns",
	Hands = "Hands",
	Head = "Head",
	["Held in Off-Hand"] = "Held in Off-Hand",
	Herb = "Herb",
	Herbalism = "Herbalism",
	["Herb Bag"] = "Herb Bag",
	Holiday = "Holiday",
	Hunter = "Hunter",
	Hydraulic = "Hydraulic",
	Idol = "Idol",
	Idols = "Idols",
	Inscription = "Inscription",
	["Inscription Bag"] = "Inscription Bag",
	["Item Enchantment"] = "Item Enchantment",
	["Item Enhancement"] = "Item Enhancement",
	Jewelcrafting = "Jewelcrafting",
	Junk = "Junk",
	Key = "Key",
	Leather = "Leather",
	Leatherworking = "Leatherworking",
	["Leatherworking Bag"] = "Leatherworking Bag",
	Legs = "Legs",
	Libram = "Libram",
	Librams = "Librams",
	Mace = "Mace",
	Mage = "Mage",
	Mail = "Mail",
	["Main Hand"] = "Main Hand",
	Materials = "Materials",
	Meat = "Meat",
	Meta = "Meta",
	["Metal & Stone"] = "Metal & Stone",
	Mining = "Mining",
	["Mining Bag"] = "Mining Bag",
	Miscellaneous = "Miscellaneous",
	Mount = "Mount",
	Mounts = "Mounts",
	Neck = "Neck",
	["Off Hand"] = "Off Hand",
	["One-Hand"] = "One-Hand",
	["One-Handed Axes"] = "One-Handed Axes",
	["One-Handed Maces"] = "One-Handed Maces",
	["One-Handed Swords"] = "One-Handed Swords",
	Orange = "Orange",
	Other = "Other",
	Paladin = "Paladin",
	Parts = "Parts",
	Pet = "Pet",
	Plate = "Plate",
	Polearm = "Polearm",
	Polearms = "Polearms",
	Potion = "Potion",
	Priest = "Priest",
	Prismatic = "Prismatic",
	Projectile = "Projectile",
	Purple = "Purple",
	Quest = "Quest",
	Quiver = "Quiver",
	Ranged = "Ranged",
	Reagent = "Reagent",
	Recipe = "Recipe",
	Red = "Red",
	Relic = "Relic",
	Riding = "Riding",
	Ring = "Ring",
	Rogue = "Rogue",
	Scroll = "Scroll",
	Shaman = "Shaman",
	Shield = "Shield",
	Shields = "Shields",
	Shirt = "Shirt",
	Shoulder = "Shoulder",
	Sigils = "Sigils",
	Simple = "Simple",
	Skinning = "Skinning",
	["Soul Bag"] = "Soul Bag",
	Staff = "Staff",
	Staves = "Staves",
	Sword = "Sword",
	Tabard = "Tabard",
	Tabards = "Tabards",
	["Tackle Box"] = "Tackle Box",
	Tailoring = "Tailoring",
	Thrown = "Thrown",
	Totem = "Totem",
	Totems = "Totems",
	["Trade Goods"] = "Trade Goods",
	Trinket = "Trinket",
	["Two-Hand"] = "Two-Hand",
	["Two-Handed Axes"] = "Two-Handed Axes",
	["Two-Handed Maces"] = "Two-Handed Maces",
	["Two-Handed Swords"] = "Two-Handed Swords",
	Waist = "Waist",
	Wand = "Wand",
	Wands = "Wands",
	Warlock = "Warlock",
	Warrior = "Warrior",
	Weapon = "Weapon",
	["Weapon Enchantment"] = "Weapon Enchantment",
	Wrist = "Wrist",
	Yellow = "Yellow",
}


if GAME_LOCALE == "enUS" then
	lib:SetCurrentTranslations(true)
elseif GAME_LOCALE == "deDE" then
	lib:SetCurrentTranslations {
	Alchemy = "Alchemie",
	["Ammo Pouch"] = "Munitionsbeutel",
	Archaeology = "Archäologie",
	Armor = "Rüstung",
	["Armor Enchantment"] = "Rüstungsverzauberung",
	Arrow = "Pfeil",
	Axe = "Axt",
	Back = "Rücken",
	Bag = "Behälter",
	Bandage = "Verband",
	Blacksmithing = "Schmiedekunst",
	Blue = "Blau",
	Book = "Buch",
	Bow = "Bogen",
	Bows = "Bögen",
	Bullet = "Kugel",
	Chest = "Brust",
	Cloth = "Stoff",
	Cogwheel = "Zahnrad",
	Companion = "Haustier",
	Companions = "Haustiere",
	Consumable = "Verbrauchbar",
	Container = "Behälter",
	Cooking = "Kochkunst",
	Crossbow = "Armbrust",
	Crossbows = "Armbrüste",
	Dagger = "Dolch",
	Daggers = "Dolche",
	["Death Knight"] = "Todesritter",
	Devices = "Geräte",
	Drink = "Getränk",
	Druid = "Druide",
	Elemental = "Elementar",
	Elixir = "Elixier",
	Enchant = "Verzauberung",
	Enchanting = "Verzauberkunst",
	["Enchanting Bag"] = "Verzauberertasche",
	Engineering = "Ingenieurskunst",
	["Engineering Bag"] = "Ingenieurstasche",
	Explosives = "Sprengstoff",
	Feet = "Füße",
	["First Aid"] = "Erste Hilfe",
	Fish = "Fisch",
	Fishing = "Angeln",
	["Fishing Lure"] = "Köder",
	["Fishing Pole"] = "Angelrute",
	["Fishing Poles"] = "Angelruten",
	["Fist Weapon"] = "Faustwaffe",
	["Fist Weapons"] = "Faustwaffen",
	Flask = "Fläschchen",
	["Flying Mount"] = "Flugreittier",
	Food = "Essen",
	["Food & Drink"] = "Speis & Trank",
	Gem = "Edelstein",
	["Gem Bag"] = "Edelsteintasche",
	Glyph = "Glyphe",
	Green = "Grün",
	["Ground Mount"] = "Bodenreittier",
	Gun = "Schusswaffe",
	Guns = "Schusswaffen",
	Hands = "Hände",
	Head = "Kopf",
	["Held in Off-Hand"] = "In Schildhand geführt",
	Herb = "Kräuter",
	Herbalism = "Kräuterkunde",
	["Herb Bag"] = "Kräutertasche",
	Holiday = "Festtag",
	Hunter = "Jäger",
	Hydraulic = "Hydraulisch", -- Needs review
	Idol = "Götze",
	Idols = "Götzen",
	Inscription = "Inschriftenkunde",
	["Inscription Bag"] = "Schreibertasche",
	["Item Enchantment"] = "Gegenstandsverzauberung",
	["Item Enhancement"] = "Gegenstandsverbesserung",
	Jewelcrafting = "Juwelenschleifen",
	Junk = "Plunder",
	Key = "Schlüssel",
	Leather = "Leder",
	Leatherworking = "Lederverarbeitung",
	["Leatherworking Bag"] = "Lederertasche",
	Legs = "Beine",
	Libram = "Buchband",
	Librams = "Buchbände",
	Mace = "Streitkolben",
	Mage = "Magier",
	Mail = "Kette",
	["Main Hand"] = "Waffenhand",
	Materials = "Materialien",
	Meat = "Fleisch",
	Meta = "Meta",
	["Metal & Stone"] = "Metall & Stein",
	Mining = "Bergbau",
	["Mining Bag"] = "Bergbautasche",
	Miscellaneous = "Verschiedenes",
	Mount = "Reittier",
	Mounts = "Reittiere",
	Neck = "Hals",
	["Off Hand"] = "Schildhand",
	["One-Hand"] = "Einhändig",
	["One-Handed Axes"] = "Einhandäxte",
	["One-Handed Maces"] = "Einhandstreitkolben",
	["One-Handed Swords"] = "Einhandschwerter",
	Orange = "Orange",
	Other = "Sonstige",
	Paladin = "Paladin",
	Parts = "Teile",
	Pet = "Begleiter",
	Plate = "Platte",
	Polearm = "Stangenwaffe",
	Polearms = "Stangenwaffen",
	Potion = "Trank",
	Priest = "Priester",
	Prismatic = "Prismatisch",
	Projectile = "Projektil",
	Purple = "Violett",
	Quest = "Quest",
	Quiver = "Köcher",
	Ranged = "Distanz",
	Reagent = "Reagenz",
	Recipe = "Rezept",
	Red = "Rot",
	Relic = "Relikt",
	Riding = "Reiten",
	Ring = "Finger",
	Rogue = "Schurke",
	Scroll = "Rolle",
	Shaman = "Schamane",
	Shield = "Schild",
	Shields = "Schilde",
	Shirt = "Hemd",
	Shoulder = "Schulter",
	Sigils = "Siegel",
	Simple = "Einfach",
	Skinning = "Kürschnerei",
	["Soul Bag"] = "Seelentasche",
	Staff = "Stab",
	Staves = "Stäbe",
	Sword = "Schwert",
	Tabard = "Wappenrock",
	Tabards = "Wappenröcke",
	["Tackle Box"] = "Werkzeugkasten", -- Needs review
	Tailoring = "Schneiderei",
	Thrown = "Wurfwaffe",
	Totem = "Totem",
	Totems = "Totems",
	["Trade Goods"] = "Handwerkswaren",
	Trinket = "Schmuck",
	["Two-Hand"] = "Zweihändig",
	["Two-Handed Axes"] = "Zweihandäxte",
	["Two-Handed Maces"] = "Zweihandstreitkolben",
	["Two-Handed Swords"] = "Zweihandschwerter",
	Waist = "Taille",
	Wand = "Zauberstab",
	Wands = "Zauberstäbe",
	Warlock = "Hexenmeister",
	Warrior = "Krieger",
	Weapon = "Waffe",
	["Weapon Enchantment"] = "Waffenverzauberung",
	Wrist = "Handgelenke",
	Yellow = "Gelb",
}
elseif GAME_LOCALE == "frFR" then
	lib:SetCurrentTranslations {
	Alchemy = "Alchimie",
	["Ammo Pouch"] = "Giberne",
	Archaeology = "Archéologie",
	Armor = "Armure",
	["Armor Enchantment"] = "Enchantement d'armure",
	Arrow = "Flèche",
	Axe = "Hache",
	Back = "Dos",
	Bag = "Sac",
	Bandage = "Bandage",
	Blacksmithing = "Forge",
	Blue = "Bleu",
	Book = "Livre",
	Bow = "Arc",
	Bows = "Arcs",
	Bullet = "Balle",
	Chest = "Torse",
	Cloth = "Tissu",
	Cogwheel = "Cogwheel", -- Needs review
	Companion = "Compagnon",
	Companions = "Compagnons",
	Consumable = "Consommable",
	Container = "Conteneur",
	Cooking = "Cuisine",
	Crossbow = "Arbalète",
	Crossbows = "Arbalètes",
	Dagger = "Dague",
	Daggers = "Dagues",
	["Death Knight"] = "Chevalier de la mort",
	Devices = "Appareils",
	Drink = "Breuvage",
	Druid = "Druide",
	Elemental = "Élémentaire",
	Elixir = "Élixir",
	Enchant = "Enchantement",
	Enchanting = "Enchantement",
	["Enchanting Bag"] = "Sac d'enchanteur",
	Engineering = "Ingénierie",
	["Engineering Bag"] = "Sac d'ingénieur",
	Explosives = "Explosifs",
	Feet = "Pieds",
	["First Aid"] = "Secourisme",
	Fish = "Pêche",
	Fishing = "Pêche",
	["Fishing Lure"] = "Appât de pêche", -- Needs review
	["Fishing Pole"] = "Canne à pêche",
	["Fishing Poles"] = "Cannes à pêche",
	["Fist Weapon"] = "Arme de pugilat",
	["Fist Weapons"] = "Armes de pugilat",
	Flask = "Flacon",
	["Flying Mount"] = "Monture volante", -- Needs review
	Food = "Ration",
	["Food & Drink"] = "Nourriture & boissons",
	Gem = "Gemme",
	["Gem Bag"] = "Sac de gemmes",
	Glyph = "Glyphe",
	Green = "Verte",
	["Ground Mount"] = "Ground Mount", -- Needs review
	Gun = "Arme à feu",
	Guns = "Fusils",
	Hands = "Mains",
	Head = "Tête",
	["Held in Off-Hand"] = "Tenu(e) en main gauche",
	Herb = "Herbes",
	Herbalism = "Herboristerie",
	["Herb Bag"] = "Sac d'herbes",
	Holiday = "Vacances",
	Hunter = "Chasseur",
	Hydraulic = "Hydraulic", -- Needs review
	Idol = "Idole",
	Idols = "Idoles",
	Inscription = "Calligraphie",
	["Inscription Bag"] = "Sac de calligraphie",
	["Item Enchantment"] = "Item Enchantment", -- Needs review
	["Item Enhancement"] = "Amélioration d'objet",
	Jewelcrafting = "Joaillerie",
	Junk = "Camelote",
	Key = "Clé",
	Leather = "Cuir",
	Leatherworking = "Travail du cuir",
	["Leatherworking Bag"] = "Sac de travail du cuir",
	Legs = "Jambes",
	Libram = "Libram",
	Librams = "Librams",
	Mace = "Masse",
	Mage = "Mage",
	Mail = "Mailles",
	["Main Hand"] = "Main droite",
	Materials = "Matériaux",
	Meat = "Viande",
	Meta = "Méta",
	["Metal & Stone"] = "Métal & pierre",
	Mining = "Minage",
	["Mining Bag"] = "Sac de mineur",
	Miscellaneous = "Divers",
	Mount = "Monture",
	Mounts = "Montures",
	Neck = "Cou",
	["Off Hand"] = "Main gauche",
	["One-Hand"] = "A une main",
	["One-Handed Axes"] = "Haches à une main",
	["One-Handed Maces"] = "Masses à une main",
	["One-Handed Swords"] = "Epées à une main",
	Orange = "Orange",
	Other = "Autre",
	Paladin = "Paladin",
	Parts = "Eléments",
	Pet = "Familier",
	Plate = "Plaques",
	Polearm = "Arme d'hast",
	Polearms = "Armes d'hast",
	Potion = "Potion",
	Priest = "Prêtre",
	Prismatic = "Prismatique",
	Projectile = "Projectile",
	Purple = "Violette",
	Quest = "Quête",
	Quiver = "Carquois",
	Ranged = "À distance",
	Reagent = "Réactif",
	Recipe = "Recette",
	Red = "Rouge",
	Relic = "Relique",
	Riding = "Monte",
	Ring = "Anneau",
	Rogue = "Voleur",
	Scroll = "Parchemin",
	Shaman = "Chaman",
	Shield = "Bouclier",
	Shields = "Boucliers",
	Shirt = "Chemise",
	Shoulder = "Epaule",
	Sigils = "Glyphes",
	Simple = "Simple",
	Skinning = "Dépeçage",
	["Soul Bag"] = "Sac d'âme",
	Staff = "Bâton",
	Staves = "Bâtons",
	Sword = "Epée",
	Tabard = "Tabard",
	Tabards = "Tabards",
	["Tackle Box"] = "Tackle Box", -- Needs review
	Tailoring = "Couture",
	Thrown = "Armes de jets",
	Totem = "Totem",
	Totems = "Totems",
	["Trade Goods"] = "Artisanat",
	Trinket = "Bijou",
	["Two-Hand"] = "Deux mains",
	["Two-Handed Axes"] = "Haches à deux mains",
	["Two-Handed Maces"] = "Masses à deux mains",
	["Two-Handed Swords"] = "Epées à deux mains",
	Waist = "Taille",
	Wand = "Baguette",
	Wands = "Baguettes",
	Warlock = "Démoniste",
	Warrior = "Guerrier",
	Weapon = "Arme",
	["Weapon Enchantment"] = "Enchantement d'arme",
	Wrist = "Poignets",
	Yellow = "Jaune",
}
elseif GAME_LOCALE == "koKR" then
	lib:SetCurrentTranslations {
	Alchemy = "연금술",
	["Ammo Pouch"] = "탄환 주머니",
	Archaeology = "고고학",
	Armor = "방어구",
	["Armor Enchantment"] = "방어구 마법부여",
	Arrow = "화살",
	Axe = "도끼",
	Back = "등",
	Bag = "가방",
	Bandage = "붕대",
	Blacksmithing = "대장기술",
	Blue = "푸른색",
	Book = "책",
	Bow = "활",
	Bows = "활류",
	Bullet = "탄환",
	Chest = "가슴",
	Cloth = "천",
	Cogwheel = "맞물림 톱니", -- Needs review
	Companion = "친구",
	Companions = "친구",
	Consumable = "소비용품",
	Container = "가방",
	Cooking = "요리",
	Crossbow = "석궁",
	Crossbows = "석궁류",
	Dagger = "단검",
	Daggers = "단검류",
	["Death Knight"] = "죽음의 기사",
	Devices = "기계 장치",
	Drink = "음료",
	Druid = "드루이드",
	Elemental = "원소",
	Elixir = "비약",
	Enchant = "마법부여",
	Enchanting = "마법부여",
	["Enchanting Bag"] = "마법부여 가방",
	Engineering = "기계공학",
	["Engineering Bag"] = "기계공학 가방",
	Explosives = "폭발물",
	Feet = "발",
	["First Aid"] = "응급치료",
	Fish = "물고기",
	Fishing = "낚시",
	["Fishing Lure"] = "낚시 미끼",
	["Fishing Pole"] = "낚싯대",
	["Fishing Poles"] = "낚싯대",
	["Fist Weapon"] = "장착 무기",
	["Fist Weapons"] = "장착 무기류",
	Flask = "영약",
	["Flying Mount"] = "나는 탈것",
	Food = "음식",
	["Food & Drink"] = "음식과 음료",
	Gem = "보석",
	["Gem Bag"] = "보석 가방",
	Glyph = "문양",
	Green = "녹색 (노란+푸른)",
	["Ground Mount"] = "지상 탈것",
	Gun = "총기",
	Guns = "총기류",
	Hands = "손",
	Head = "머리",
	["Held in Off-Hand"] = "보조장비",
	Herb = "약초",
	Herbalism = "약초채집",
	["Herb Bag"] = "약초 가방",
	Holiday = "축제용품",
	Hunter = "사냥꾼",
	Hydraulic = "Hydraulic", -- Needs review
	Idol = "우상",
	Idols = "우상",
	Inscription = "주문각인",
	["Inscription Bag"] = "주문각인 가방",
	["Item Enchantment"] = "아이템 강화",
	["Item Enhancement"] = "아이템 강화",
	Jewelcrafting = "보석세공",
	Junk = "잡동사니",
	Key = "열쇠",
	Leather = "가죽",
	Leatherworking = "가죽세공",
	["Leatherworking Bag"] = "가죽세공 가방",
	Legs = "다리",
	Libram = "성서",
	Librams = "성서",
	Mace = "둔기",
	Mage = "마법사",
	Mail = "사슬",
	["Main Hand"] = "주장비",
	Materials = "재료",
	Meat = "고기",
	Meta = "얼개",
	["Metal & Stone"] = "광물",
	Mining = "채광",
	["Mining Bag"] = "채광 가방",
	Miscellaneous = "기타",
	Mount = "탈것",
	Mounts = "탈것",
	Neck = "목",
	["Off Hand"] = "보조장비",
	["One-Hand"] = "한손",
	["One-Handed Axes"] = "한손 도끼류",
	["One-Handed Maces"] = "한손 둔기류",
	["One-Handed Swords"] = "한손 도검류",
	Orange = "주황색 (노란+붉은)",
	Other = "기타",
	Paladin = "성기사",
	Parts = "부품",
	Pet = "애완동물",
	Plate = "판금",
	Polearm = "장창",
	Polearms = "장창류",
	Potion = "물약",
	Priest = "사제",
	Prismatic = "다색",
	Projectile = "투사체",
	Purple = "보라색 (붉은+푸른)",
	Quest = "퀘스트",
	Quiver = "화살통",
	Ranged = "원거리 장비",
	Reagent = "재료",
	Recipe = "제조법",
	Red = "붉은색",
	Relic = "유물",
	Riding = "탈것 타기",
	Ring = "손가락",
	Rogue = "도적",
	Scroll = "두루마리",
	Shaman = "주술사",
	Shield = "방패",
	Shields = "방패",
	Shirt = "속옷",
	Shoulder = "어깨",
	Sigils = "인장",
	Simple = "일반",
	Skinning = "무두질",
	["Soul Bag"] = "영혼의 가방",
	Staff = "지팡이",
	Staves = "지팡이류",
	Sword = "도검",
	Tabard = "휘장",
	Tabards = "휘장",
	["Tackle Box"] = "낚시상자",
	Tailoring = "재봉술",
	Thrown = "투척 무기",
	Totem = "토템",
	Totems = "토템",
	["Trade Goods"] = "직업용품",
	Trinket = "장신구",
	["Two-Hand"] = "양손",
	["Two-Handed Axes"] = "양손 도끼류",
	["Two-Handed Maces"] = "양손 둔기류",
	["Two-Handed Swords"] = "양손 도검류",
	Waist = "허리",
	Wand = "마법봉",
	Wands = "마법봉류",
	Warlock = "흑마법사",
	Warrior = "전사",
	Weapon = "무기",
	["Weapon Enchantment"] = "무기 마법부여",
	Wrist = "손목",
	Yellow = "노란색 (노란+푸른)",
}
elseif GAME_LOCALE == "esES" then
	lib:SetCurrentTranslations {
	Alchemy = "Alquimia",
	["Ammo Pouch"] = "Bolsa de munición",
	Archaeology = "Arqueología",
	Armor = "Armadura",
	["Armor Enchantment"] = "Encantamiento de Armadura",
	Arrow = "Flecha",
	Axe = "Hacha",
	Back = "Espalda",
	Bag = "Bolsa",
	Bandage = "Venda",
	Blacksmithing = "Herrería",
	Blue = "Azul",
	Book = "Libro",
	Bow = "Arco",
	Bows = "Arcos",
	Bullet = "Bala",
	Chest = "Torso",
	Cloth = "Tela",
	Cogwheel = "Engranaje",
	Companion = "Comapñero",
	Companions = "Compañeros",
	Consumable = "Consumible",
	Container = "Contenedor",
	Cooking = "Cocina",
	Crossbow = "Ballesta",
	Crossbows = "Ballestas",
	Dagger = "Daga",
	Daggers = "Dagas",
	["Death Knight"] = "Caballero de la Muerte",
	Devices = "Dispositivos",
	Drink = "Bebida",
	Druid = "Druída",
	Elemental = "Elemental",
	Elixir = "Elixir",
	Enchant = "Encantamiento",
	Enchanting = "Encantamiento",
	["Enchanting Bag"] = "Bolsa de encantamiento",
	Engineering = "Ingeniería",
	["Engineering Bag"] = "Bolsa de ingeniería",
	Explosives = "Explosivos",
	Feet = "Pies",
	["First Aid"] = "Primeros auxilios",
	Fish = [=[Pescado
]=],
	Fishing = "Pesca",
	["Fishing Lure"] = "Cebo de pesca",
	["Fishing Pole"] = "Caña de pescar",
	["Fishing Poles"] = "Cañas de pescar",
	["Fist Weapon"] = "Arma de Puño",
	["Fist Weapons"] = "Armas de Puño",
	Flask = "Frasco",
	["Flying Mount"] = "Montura Voladora",
	Food = "Comida",
	["Food & Drink"] = "Comida y bebida",
	Gem = "Gema",
	["Gem Bag"] = "Bolsa de gemas",
	Glyph = "Glifo",
	Green = "Verde",
	["Ground Mount"] = "Montura Terrestre",
	Gun = "Pistola",
	Guns = "Pistolas",
	Hands = "Manos",
	Head = "Cabeza",
	["Held in Off-Hand"] = "Sostener con la mano izquierda",
	Herb = "Herbalísmo",
	Herbalism = "Hebalismo",
	["Herb Bag"] = "Bolsa de hierbas",
	Holiday = "Festivo",
	Hunter = "Cazador",
	Hydraulic = "Hidráulico",
	Idol = "Ídolo",
	Idols = "Ídolos",
	Inscription = "Inscripción",
	["Inscription Bag"] = "Bolsa de inscripción",
	["Item Enchantment"] = "Encantamiento de Objeto",
	["Item Enhancement"] = "Mejora de Objeto",
	Jewelcrafting = "Joyería",
	Junk = "Basura",
	Key = "Llave",
	Leather = "Cuero",
	Leatherworking = "Peletería",
	["Leatherworking Bag"] = "Bolsa de peletería",
	Legs = "Piernas",
	Libram = "Tratado",
	Librams = "Tratados",
	Mace = "Maza",
	Mage = "Mago",
	Mail = "Mallas",
	["Main Hand"] = "Mano Derecha",
	Materials = "Materiales",
	Meat = "Carne",
	Meta = "Meta",
	["Metal & Stone"] = "Metal y Piedra",
	Mining = "Minería",
	["Mining Bag"] = "Bolsa de minería",
	Miscellaneous = "Misceláneas",
	Mount = "Montura",
	Mounts = "Monturas",
	Neck = "Cuello",
	["Off Hand"] = "Mano Izquierda",
	["One-Hand"] = "Una Mano",
	["One-Handed Axes"] = "Hachas de Una Mano",
	["One-Handed Maces"] = "Mazas de Una Mano",
	["One-Handed Swords"] = "Espadas de Una Mano",
	Orange = "Naranja",
	Other = "Otro",
	Paladin = "Paladín",
	Parts = "Partes",
	Pet = "Mascota",
	Plate = "Placas",
	Polearm = "Arma de asta",
	Polearms = "Armas de asta",
	Potion = "Poción",
	Priest = "Sacerdote",
	Prismatic = "Prismático",
	Projectile = "Proyectil",
	Purple = "Morado",
	Quest = "Misión",
	Quiver = "Carcaj",
	Ranged = "Rango",
	Reagent = "Reactivo",
	Recipe = "Receta",
	Red = "Rojo",
	Relic = "Reliquia",
	Riding = "Equitación",
	Ring = "Anillo",
	Rogue = "Pícaro",
	Scroll = "Pergamino",
	Shaman = "Chamán",
	Shield = "Escudo",
	Shields = "Escudos",
	Shirt = "Camisa",
	Shoulder = "Hombros",
	Sigils = "Sigilos",
	Simple = "Simple",
	Skinning = "Desuello",
	["Soul Bag"] = "Bolsa de almas",
	Staff = "Bastón",
	Staves = "Bastones",
	Sword = "Espada",
	Tabard = "Tabardo",
	Tabards = "Tabardo",
	["Tackle Box"] = "Maestro del Cebo",
	Tailoring = "Sastrería",
	Thrown = "Arrojadiza",
	Totem = "Tótem",
	Totems = "Tótems",
	["Trade Goods"] = "Objeto comerciable",
	Trinket = "Abalorio",
	["Two-Hand"] = "Dos Manos",
	["Two-Handed Axes"] = "Hachas a Dos Manos",
	["Two-Handed Maces"] = "Mazas a Dos Manos",
	["Two-Handed Swords"] = "Espadas a Dos Manos",
	Waist = "Cintura",
	Wand = "Varita",
	Wands = "Varitas",
	Warlock = "Brujo",
	Warrior = "Guerrero",
	Weapon = "Arma",
	["Weapon Enchantment"] = "Encantamiento de Armas",
	Wrist = "Muñeca",
	Yellow = "Amarillo",
}
elseif GAME_LOCALE == "esMX" then
	lib:SetCurrentTranslations {
	Alchemy = "Alquimia",
	["Ammo Pouch"] = "Bolsa de Munición",
	Archaeology = "Archaeology", -- Needs review
	Armor = "Armadura",
	["Armor Enchantment"] = "Encantamiento de Armadura",
	Arrow = "Flecha",
	Axe = "Hacha",
	Back = "Espalda",
	Bag = "Bolsa",
	Bandage = "Venda",
	Blacksmithing = "Herrería",
	Blue = "Azul",
	Book = "Libro",
	Bow = "Arco",
	Bows = "Arcos",
	Bullet = "Bala",
	Chest = "Torso",
	Cloth = "Tela",
	Cogwheel = "Cogwheel", -- Needs review
	Companion = "Companion", -- Needs review
	Companions = "Companions", -- Needs review
	Consumable = "Consumible",
	Container = "Contenedor",
	Cooking = "Cocina",
	Crossbow = "Ballesta",
	Crossbows = "Ballestas",
	Dagger = "Daga",
	Daggers = "Dagas",
	["Death Knight"] = "Caballero de la Muerte",
	Devices = "Dispositivos",
	Drink = "Bebida",
	Druid = "Druída",
	Elemental = "Elemental",
	Elixir = "Elixir",
	Enchant = "Enchant", -- Needs review
	Enchanting = "Encantamiento",
	["Enchanting Bag"] = "Bolsa de encantamiento",
	Engineering = "Ingeniería",
	["Engineering Bag"] = "Bolsa de ingeniería",
	Explosives = "Explosivos",
	Feet = "Pies",
	["First Aid"] = "Primeros auxilios",
	Fish = "Fish", -- Needs review
	Fishing = "Pesca",
	["Fishing Lure"] = "Fishing Lure", -- Needs review
	["Fishing Pole"] = "Caña de pescar",
	["Fishing Poles"] = "Cañas de pescar",
	["Fist Weapon"] = "Arma de Puño",
	["Fist Weapons"] = "Armas de Puño",
	Flask = "Frasco",
	["Flying Mount"] = "Flying Mount", -- Needs review
	Food = "Comida",
	["Food & Drink"] = "Comida y bebida",
	Gem = "Gema",
	["Gem Bag"] = "Bolsa de Gemas",
	Glyph = "Glifo",
	Green = "Verde",
	["Ground Mount"] = "Ground Mount", -- Needs review
	Gun = "Pistola",
	Guns = "Pistolas",
	Hands = "Manos",
	Head = "Cabeza",
	["Held in Off-Hand"] = "Sostener con la mano izquierda",
	Herb = "Herbalísmo",
	Herbalism = "Herbalism", -- Needs review
	["Herb Bag"] = "Bolsa de hierbas",
	Holiday = "Festivo",
	Hunter = "Cazador",
	Hydraulic = "Hydraulic", -- Needs review
	Idol = "Ãdolo",
	Idols = "Ãdolos",
	Inscription = "Inscription", -- Needs review
	["Inscription Bag"] = "Bolsa de inscripción",
	["Item Enchantment"] = "Item Enchantment", -- Needs review
	["Item Enhancement"] = "Mejora de Objeto",
	Jewelcrafting = "Joyería",
	Junk = "Basura",
	Key = "Llave",
	Leather = "Cuero",
	Leatherworking = "Peletería",
	["Leatherworking Bag"] = "Bolsa de Peletería",
	Legs = "Piernas",
	Libram = "Tratado",
	Librams = "Tratados",
	Mace = "Maza",
	Mage = "Mago",
	Mail = "Mallas",
	["Main Hand"] = "Mano Derecha",
	Materials = "Materiales",
	Meat = "Carne",
	Meta = "Meta",
	["Metal & Stone"] = "Metal y Piedra",
	Mining = "Mining", -- Needs review
	["Mining Bag"] = "Bolsa de Minería",
	Miscellaneous = "Miscelánea",
	Mount = "Montura",
	Mounts = "Mounts", -- Needs review
	Neck = "Cuello",
	["Off Hand"] = "Mano Izquierda",
	["One-Hand"] = "Una Mano",
	["One-Handed Axes"] = "Hachas de Una Mano",
	["One-Handed Maces"] = "Mazas de Una Mano",
	["One-Handed Swords"] = "Espadas de Una Mano",
	Orange = "Naranja",
	Other = "Otro",
	Paladin = "Paladín",
	Parts = "Partes",
	Pet = "Mascota",
	Plate = "Placas",
	Polearm = "Arma de asta",
	Polearms = "Armas de asta",
	Potion = "Poción",
	Priest = "Sacerdote",
	Prismatic = "Prismático",
	Projectile = "Proyectil",
	Purple = "Morado",
	Quest = "Misión",
	Quiver = "Carcaj",
	Ranged = "Rango",
	Reagent = "Reactivo",
	Recipe = "Receta",
	Red = "Rojo",
	Relic = "Reliquia",
	Riding = "Riding", -- Needs review
	Ring = "Anillo",
	Rogue = "Pícaro",
	Scroll = "Pergamino",
	Shaman = "Chamán",
	Shield = "Escudo",
	Shields = "Escudos",
	Shirt = "Camisa",
	Shoulder = "Hombros",
	Sigils = "Sigilos",
	Simple = "Simple",
	Skinning = "Skinning", -- Needs review
	["Soul Bag"] = "Bolsa de Almas",
	Staff = "Bastón",
	Staves = "Bastones",
	Sword = "Espada",
	Tabard = "Tabardo",
	Tabards = "Tabards", -- Needs review
	["Tackle Box"] = "Tackle Box", -- Needs review
	Tailoring = "Sastrería",
	Thrown = "Arrojadiza",
	Totem = "Tótem",
	Totems = "Tótems",
	["Trade Goods"] = "Objeto comerciable",
	Trinket = "Abalorio",
	["Two-Hand"] = "Dos Manos",
	["Two-Handed Axes"] = "Hachas a Dos Manos",
	["Two-Handed Maces"] = "Mazas a Dos Manos",
	["Two-Handed Swords"] = "Espadas a Dos Manos",
	Waist = "Cintura",
	Wand = "Varita",
	Wands = "Varitas",
	Warlock = "Brujo",
	Warrior = "Guerrero",
	Weapon = "Arma",
	["Weapon Enchantment"] = "Encantamiento de Armas",
	Wrist = "Muñeca",
	Yellow = "Amarillo",
}
elseif GAME_LOCALE == "ptBR" then
	lib:SetCurrentTranslations {
	Alchemy = "Alquimia",
	["Ammo Pouch"] = "bolsa de munição",
	Archaeology = "Arqueologia",
	Armor = "Armadura",
	["Armor Enchantment"] = "encantamento de armadura",
	Arrow = "Flecha",
	Axe = "Machado",
	Back = "Costas",
	Bag = "Bolsa",
	Bandage = "Bandagem",
	Blacksmithing = "Ferraria",
	Blue = "Azul",
	Book = "Livro",
	Bow = "Arco",
	Bows = "Arcos",
	Bullet = "bala",
	Chest = "Torso",
	Cloth = "Tecido",
	Cogwheel = "Engrenagem",
	Companion = "Mascote",
	Companions = "Mascotes",
	Consumable = "Consumível",
	Container = "Recipiente",
	Cooking = "Culinária",
	Crossbow = "Besta",
	Crossbows = "Bestas",
	Dagger = "Adaga",
	Daggers = "Adagas",
	["Death Knight"] = "Cavaleiro da Morte",
	Devices = "Dispositivos",
	Drink = "Bebida",
	Druid = "Druida",
	Elemental = "Elemental",
	Elixir = "Elixir",
	Enchant = "Encantamento",
	Enchanting = "Encantamento",
	["Enchanting Bag"] = "Bolsa de Encantamento",
	Engineering = "Engenharia",
	["Engineering Bag"] = "Bolsa de Engenharia",
	Explosives = "Explosivos",
	Feet = "Pés",
	["First Aid"] = "Primeiros Socorros",
	Fish = "Peixe",
	Fishing = "Pescaria",
	["Fishing Lure"] = "Isca",
	["Fishing Pole"] = "Vara de Pescar",
	["Fishing Poles"] = "Varas de Pescar",
	["Fist Weapon"] = "Arma de Punho",
	["Fist Weapons"] = "Armas de Punho",
	Flask = "Frasco",
	["Flying Mount"] = "montaria voadora",
	Food = "Comida",
	["Food & Drink"] = "Comida e Bebida",
	Gem = "Gema",
	["Gem Bag"] = "Bolsa de Gemas",
	Glyph = "Glifo",
	Green = "Verde",
	["Ground Mount"] = "montaria terrestre",
	Gun = "Arma de fogo",
	Guns = "Armas de fogo",
	Hands = "Mãos",
	Head = "Cabeça",
	["Held in Off-Hand"] = "Empunhado na mão secundária",
	Herb = "Planta",
	Herbalism = "Herborismo",
	["Herb Bag"] = "Bolsa de Herborismo",
	Holiday = "Feriado",
	Hunter = "Caçador",
	Hydraulic = "Hidráulico",
	Idol = "ídolo",
	Idols = "ídolos",
	Inscription = "Escrivania",
	["Inscription Bag"] = "Bolsa de Escrivania",
	["Item Enchantment"] = "encantamento de item",
	["Item Enhancement"] = "Aperfeiçoamento de Item",
	Jewelcrafting = "Joalheria",
	Junk = "Sucata",
	Key = "Chave",
	Leather = "Couro",
	Leatherworking = "Couraria",
	["Leatherworking Bag"] = "Bolsa de Couraria",
	Legs = "Pernas",
	Libram = "Incunábulo",
	Librams = "Incunábulos",
	Mace = "Maça",
	Mage = "Mago",
	Mail = "Malha",
	["Main Hand"] = "Mão principal",
	Materials = "Materiais",
	Meat = "Carne",
	Meta = "Meta",
	["Metal & Stone"] = "Metal e Pedra",
	Mining = "Mineração",
	["Mining Bag"] = "Bolsa de Mineração",
	Miscellaneous = "Diversos",
	Mount = "Montaria",
	Mounts = "Montarias",
	Neck = "Pescoço",
	["Off Hand"] = "Mão Secundária",
	["One-Hand"] = "Uma Mão",
	["One-Handed Axes"] = "Machados de Uma Mão",
	["One-Handed Maces"] = "Maças de Uma Mão",
	["One-Handed Swords"] = "Espadas de Uma Mão",
	Orange = "Laranja",
	Other = "Outro",
	Paladin = "Paladino",
	Parts = "Peças",
	Pet = "Mascote",
	Plate = "Placas",
	Polearm = "Arma de Haste",
	Polearms = "Armas de Haste",
	Potion = "Poção",
	Priest = "Sacerdote",
	Prismatic = "Prismática",
	Projectile = "Projétil",
	Purple = "Roxa",
	Quest = "Missão",
	Quiver = "Aljava",
	Ranged = "Longo alcance",
	Reagent = "Reagente",
	Recipe = "Receita",
	Red = "Vermelha",
	Relic = "Relíquia",
	Riding = "cavalgar",
	Ring = "Anel",
	Rogue = "Ladino",
	Scroll = "Pergaminho",
	Shaman = "Xamã",
	Shield = "Escudo",
	Shields = "Escudos",
	Shirt = "Camisa",
	Shoulder = "Ombros",
	Sigils = "Signos",
	Simple = "Simples",
	Skinning = "Esfolamento",
	["Soul Bag"] = "Bolsa de Almas",
	Staff = "Cajado",
	Staves = "Báculos",
	Sword = "Espada",
	Tabard = "Tabardo",
	Tabards = "Tabardos",
	["Tackle Box"] = "Caixa de Apetrechos",
	Tailoring = "Alfaiataria",
	Thrown = "Arremesso",
	Totem = "totem",
	Totems = "totens",
	["Trade Goods"] = "Mercadorias",
	Trinket = "Berloque",
	["Two-Hand"] = "Duas Mãos",
	["Two-Handed Axes"] = "Machados de Duas Mãos",
	["Two-Handed Maces"] = "Maças de Duas Mãos",
	["Two-Handed Swords"] = "Espadas de Duas Mãos",
	Waist = "Cintura",
	Wand = "Varinha",
	Wands = "Varinhas",
	Warlock = "Bruxo",
	Warrior = "Guerreiro",
	Weapon = "Arma",
	["Weapon Enchantment"] = "Encantamento de arma",
	Wrist = "Pulso",
	Yellow = "Amarela",
}
elseif GAME_LOCALE == "ruRU" then
	lib:SetCurrentTranslations {
	Alchemy = "Алхимия",
	["Ammo Pouch"] = "Подсумок",
	Archaeology = "Археология",
	Armor = "Доспехи",
	["Armor Enchantment"] = "Чары для оружия",
	Arrow = "Стрелы",
	Axe = "Топор",
	Back = "Спина",
	Bag = "Сумка",
	Bandage = "Бинты",
	Blacksmithing = "Кузнечное дело",
	Blue = "Синий",
	Book = "Книга",
	Bow = "Лук",
	Bows = "Луки",
	Bullet = "Пули",
	Chest = "Грудь",
	Cloth = "Ткань",
	Cogwheel = "Cogwheel", -- Needs review
	Companion = "Спутник",
	Companions = "Спутники",
	Consumable = "Расходуемые",
	Container = "Сумки",
	Cooking = "Кулинария",
	Crossbow = "Арбалет",
	Crossbows = "Арбалеты",
	Dagger = "Кинжал",
	Daggers = "Кинжалы",
	["Death Knight"] = "Рыцарь смерти",
	Devices = "Устройства",
	Drink = "Питье",
	Druid = "Друид",
	Elemental = "Стихии",
	Elixir = "Эликсир",
	Enchant = "Чары",
	Enchanting = "Наложение чар",
	["Enchanting Bag"] = "Сумка зачаровывателя",
	Engineering = "Механика",
	["Engineering Bag"] = "Сумка инженера",
	Explosives = "Взрывчатка",
	Feet = "Ступни",
	["First Aid"] = "Первая помощь",
	Fish = "Рыба",
	Fishing = "Рыбная ловля",
	["Fishing Lure"] = "Рыбацкая приманка",
	["Fishing Pole"] = "Удочка",
	["Fishing Poles"] = "Удочки",
	["Fist Weapon"] = "Кистевое",
	["Fist Weapons"] = "Кистевое",
	Flask = "Фляга",
	["Flying Mount"] = "Летающий транспорт",
	Food = "Еда",
	["Food & Drink"] = "Еда и напитки",
	Gem = "Самоцветы",
	["Gem Bag"] = "Сумка ювелира",
	Glyph = "Символ",
	Green = "Зеленый",
	["Ground Mount"] = "Наземный транспорт",
	Gun = "Огнестрельное",
	Guns = "Огнестрельное",
	Hands = "Кисти рук",
	Head = "Голова",
	["Held in Off-Hand"] = "Левая рука",
	Herb = "Трава",
	Herbalism = "Травничество",
	["Herb Bag"] = "Сумка травника",
	Holiday = "Праздник",
	Hunter = "Охотник",
	Hydraulic = "Hydraulic", -- Needs review
	Idol = "Идол",
	Decorate = "Трансмог",
	Idols = "Идолы",
	Inscription = "Начертание",
	["Inscription Bag"] = "Сумка начертателя",
	["Item Enchantment"] = "Item Enchantment", -- Needs review
	["Item Enhancement"] = "Улучшение",
	Jewelcrafting = "Ювелирное дело",
	Junk = "Мусор",
	Key = "Ключ",
	Leather = "Кожа",
	Leatherworking = "Кожевничество",
	["Leatherworking Bag"] = "Сумка кожевника",
	Legs = "Ноги",
	Libram = "Манускрипт",
	Librams = "Манускрипты",
	Mace = "Дробящее",
	Mage = "Маг",
	Mail = "Кольчуга",
	["Main Hand"] = "Правая рука",
	Materials = "Материалы",
	Meat = "Мясо",
	Meta = "Особый",
	["Metal & Stone"] = "Металл и камень",
	Mining = "Горное дело",
	["Mining Bag"] = "Сумка шахтера",
	Miscellaneous = "Разное",
	Mount = "Верховые животные",
	Mounts = "Верховые животные",
	Neck = "Шея",
	["Off Hand"] = "Левая рука",
	["One-Hand"] = "Одноручное",
	["One-Handed Axes"] = "Одноручные топоры",
	["One-Handed Maces"] = "Одноручное дробящее",
	["One-Handed Swords"] = "Одноручные мечи",
	Orange = "Оранжевый",
	Other = "Другое",
	Paladin = "Паладин",
	Parts = "Детали",
	Pet = "Питомцы",
	Plate = "Латы",
	Polearm = "Древковое",
	Polearms = "Древковое",
	Potion = "Зелье",
	Priest = "Жрец",
	Prismatic = "Радужный",
	Projectile = "Боеприпасы",
	Purple = "Фиолетовый",
	Quest = "Задания",
	Quiver = "Амуниция",
	Ranged = "Для оружия дальнего боя",
	Reagent = "Реагенты",
	Recipe = "Рецепты",
	Red = "Красный",
	Relic = "Реликвия",
	Riding = "Верховая езда",
	Ring = "Палец",
	Rogue = "Разбойник",
	Scroll = "Свиток",
	Shaman = "Шаман",
	Shield = "Щит",
	Shields = "Щиты",
	Shirt = "Рубашка",
	Shoulder = "Плечо",
	Sigils = "Печати",
	Simple = "Простой",
	Skinning = "Снятие шкур",
	["Soul Bag"] = "Сумка душ",
	Staff = "Посох",
	Staves = "Посохи",
	Sword = "Меч",
	Tabard = "Гербовая накидка",
	Tabards = "Накидки",
	["Tackle Box"] = "Tackle Box", -- Needs review
	Tailoring = "Портняжное дело",
	Thrown = "Метательное",
	Totem = "Тотем",
	Totems = "Тотемы",
	["Trade Goods"] = "Хозяйственные товары",
	Trinket = "Аксессуар",
	["Two-Hand"] = "Двуручное",
	["Two-Handed Axes"] = "Двуручные топоры",
	["Two-Handed Maces"] = "Двуручное дробящее",
	["Two-Handed Swords"] = "Двуручные мечи",
	Waist = "Пояс",
	Wand = "Жезл",
	Wands = "Жезлы",
	Warlock = "Чернокнижник",
	Warrior = "Воин",
	Weapon = "Оружие",
	["Weapon Enchantment"] = "Чары для доспехов",
	Wrist = "Запястья",
	Yellow = "Желтый",
}
elseif GAME_LOCALE == "zhCN" then
	lib:SetCurrentTranslations {
	Alchemy = "炼金术",
	["Ammo Pouch"] = "弹药袋",
	Archaeology = "考古学",
	Armor = "护甲",
	["Armor Enchantment"] = "护甲强化",
	Arrow = "箭",
	Axe = "斧",
	Back = "背部",
	Bag = "容器",
	Bandage = "绷带",
	Blacksmithing = "锻造",
	Blue = "蓝色",
	Book = "书籍",
	Bow = "弓",
	Bows = "弓",
	Bullet = "子弹",
	Chest = "胸部",
	Cloth = "布甲",
	Cogwheel = "齿轮",
	Companion = "小伙伴",
	Companions = "小伙伴",
	Consumable = "消耗品",
	Container = "容器",
	Cooking = "烹饪",
	Crossbow = "弩",
	Crossbows = "弩",
	Dagger = "匕首",
	Daggers = "匕首",
	["Death Knight"] = "死亡骑士",
	Devices = "装置",
	Drink = "饮料",
	Druid = "德鲁伊",
	Elemental = "元素",
	Elixir = "药剂",
	Enchant = "附魔",
	Enchanting = "附魔",
	["Enchanting Bag"] = "附魔材料袋",
	Engineering = "工程学",
	["Engineering Bag"] = "工程学材料袋",
	Explosives = "爆炸物",
	Feet = "脚",
	["First Aid"] = "急救",
	Fish = "魚",
	Fishing = "钓鱼",
	["Fishing Lure"] = "鱼饵",
	["Fishing Pole"] = "鱼竿",
	["Fishing Poles"] = "鱼竿",
	["Fist Weapon"] = "拳套",
	["Fist Weapons"] = "拳套",
	Flask = "合剂",
	["Flying Mount"] = "飞行坐骑",
	Food = "食物",
	["Food & Drink"] = "食物和饮料",
	Gem = "宝石",
	["Gem Bag"] = "宝石袋",
	Glyph = "雕文",
	Green = "绿色",
	["Ground Mount"] = "地面坐骑",
	Gun = "枪械",
	Guns = "枪械",
	Hands = "手",
	Head = "头部",
	["Held in Off-Hand"] = "副手物品",
	Herb = "草药",
	Herbalism = "草药学",
	["Herb Bag"] = "草药袋",
	Holiday = "节日",
	Hunter = "猎人",
	Hydraulic = "液压",
	Idol = "神像",
	Idols = "神像",
	Inscription = "铭文",
	["Inscription Bag"] = "铭文包",
	["Item Enchantment"] = "物品强化",
	["Item Enhancement"] = "物品强化",
	Jewelcrafting = "珠宝加工",
	Junk = "垃圾",
	Key = "钥匙",
	Leather = "皮甲",
	Leatherworking = "制皮",
	["Leatherworking Bag"] = "制皮材料袋",
	Legs = "腿部",
	Libram = "圣契",
	Librams = "圣契",
	Mace = "锤",
	Mage = "法师",
	Mail = "锁甲",
	["Main Hand"] = "主手",
	Materials = "原料",
	Meat = "肉类",
	Meta = "多彩",
	["Metal & Stone"] = "金属和矿石",
	Mining = "采矿",
	["Mining Bag"] = "矿石袋",
	Miscellaneous = "其它",
	Mount = "坐骑",
	Mounts = "坐骑",
	Neck = "颈部",
	["Off Hand"] = "副手",
	["One-Hand"] = "单手",
	["One-Handed Axes"] = "单手斧",
	["One-Handed Maces"] = "单手锤",
	["One-Handed Swords"] = "单手剑",
	Orange = "橙色",
	Other = "其它",
	Paladin = "圣骑士",
	Parts = "零件",
	Pet = "宠物",
	Plate = "板甲",
	Polearm = "长柄武器",
	Polearms = "长柄武器",
	Potion = "药水",
	Priest = "牧师",
	Prismatic = "棱彩",
	Projectile = "弹药",
	Purple = "紫色",
	Quest = "任务",
	Quiver = "箭袋",
	Ranged = "远程",
	Reagent = "材料",
	Recipe = "配方",
	Red = "红色",
	Relic = "圣物",
	Riding = "骑术",
	Ring = "手指",
	Rogue = "潜行者",
	Scroll = "卷轴",
	Shaman = "萨满祭司",
	Shield = "盾牌",
	Shields = "盾牌",
	Shirt = "衬衫",
	Shoulder = "肩部",
	Sigils = "魔印",
	Simple = "简易",
	Skinning = "剥皮",
	["Soul Bag"] = "灵魂袋",
	Staff = "法杖",
	Staves = "法杖",
	Sword = "剑",
	Tabard = "战袍",
	Tabards = "战袍",
	["Tackle Box"] = "工具箱 ",
	Tailoring = "裁缝",
	Thrown = "投掷武器",
	Totem = "图腾",
	Totems = "图腾",
	["Trade Goods"] = "商品",
	Trinket = "饰品",
	["Two-Hand"] = "双手",
	["Two-Handed Axes"] = "双手斧",
	["Two-Handed Maces"] = "双手锤",
	["Two-Handed Swords"] = "双手剑",
	Waist = "腰部",
	Wand = "魔杖",
	Wands = "魔杖",
	Warlock = "术士",
	Warrior = "战士",
	Weapon = "武器",
	["Weapon Enchantment"] = "武器强化",
	Wrist = "手腕",
	Yellow = "黄色",
}
elseif GAME_LOCALE == "zhTW" then
	lib:SetCurrentTranslations {
	Alchemy = "鍊金術",
	["Ammo Pouch"] = "彈藥包",
	Archaeology = "考古學",
	Armor = "護甲",
	["Armor Enchantment"] = "護甲附魔",
	Arrow = "箭",
	Axe = "斧",
	Back = "背部",
	Bag = "容器",
	Bandage = "繃帶",
	Blacksmithing = "鍛造",
	Blue = "藍色",
	Book = "書籍",
	Bow = "弓",
	Bows = "弓",
	Bullet = "子彈",
	Chest = "胸部",
	Cloth = "布甲",
	Cogwheel = "榫輪",
	Companion = "夥伴",
	Companions = "夥伴們",
	Consumable = "消耗品",
	Container = "容器",
	Cooking = "烹飪",
	Crossbow = "弩",
	Crossbows = "弩",
	Dagger = "匕首",
	Daggers = "匕首",
	["Death Knight"] = "死亡騎士",
	Devices = "裝置",
	Drink = "飲料",
	Druid = "德魯伊",
	Elemental = "元素材料",
	Elixir = "藥劑",
	Enchant = "附魔",
	Enchanting = "附魔",
	["Enchanting Bag"] = "附魔包",
	Engineering = "工程學",
	["Engineering Bag"] = "工程包",
	Explosives = "爆炸物",
	Feet = "腳",
	["First Aid"] = "急救",
	Fish = "釣魚",
	Fishing = "釣魚",
	["Fishing Lure"] = "魚餌",
	["Fishing Pole"] = "魚竿",
	["Fishing Poles"] = "魚竿",
	["Fist Weapon"] = "拳套",
	["Fist Weapons"] = "拳套",
	Flask = "精煉藥劑",
	["Flying Mount"] = "飛行坐騎",
	Food = "食物",
	["Food & Drink"] = "食物和飲料",
	Gem = "寶石",
	["Gem Bag"] = "寶石包",
	Glyph = "雕紋",
	Green = "綠色",
	["Ground Mount"] = "陸行座騎",
	Gun = "槍械",
	Guns = "槍械",
	Hands = "手",
	Head = "頭部",
	["Held in Off-Hand"] = "副手物品",
	Herb = "草藥",
	Herbalism = "草藥學",
	["Herb Bag"] = "草藥包",
	Holiday = "節慶用品",
	Hunter = "獵人",
	Hydraulic = "液壓",
	Idol = "塑像",
	Idols = "塑像",
	Inscription = "銘文學",
	["Inscription Bag"] = "銘文包",
	["Item Enchantment"] = "物品附魔",
	["Item Enhancement"] = "物品強化",
	Jewelcrafting = "珠寶設計",
	Junk = "垃圾",
	Key = "鑰匙",
	Leather = "皮甲",
	Leatherworking = "製皮",
	["Leatherworking Bag"] = "製皮包",
	Legs = "腿部",
	Libram = "聖契",
	Librams = "聖契",
	Mace = "錘",
	Mage = "法師",
	Mail = "鎖甲",
	["Main Hand"] = "主手",
	Materials = "原料",
	Meat = "肉類",
	Meta = "變換",
	["Metal & Stone"] = "金屬與石頭",
	Mining = "採礦",
	["Mining Bag"] = "礦石包",
	Miscellaneous = "其他",
	Mount = "座騎",
	Mounts = "座騎",
	Neck = "頸部",
	["Off Hand"] = "副手",
	["One-Hand"] = "單手",
	["One-Handed Axes"] = "單手斧",
	["One-Handed Maces"] = "單手錘",
	["One-Handed Swords"] = "單手劍",
	Orange = "橘色",
	Other = "其他",
	Paladin = "聖騎士",
	Parts = "零件",
	Pet = "寵物",
	Plate = "鎧甲",
	Polearm = "長柄武器",
	Polearms = "長柄武器",
	Potion = "藥水",
	Priest = "牧師",
	Prismatic = "稜彩",
	Projectile = "彈藥",
	Purple = "紫色",
	Quest = "任務",
	Quiver = "箭袋",
	Ranged = "遠程",
	Reagent = "施法材料",
	Recipe = "配方",
	Red = "紅色",
	Relic = "聖物",
	Riding = "騎術",
	Ring = "手指",
	Rogue = "盜賊",
	Scroll = "卷軸",
	Shaman = "薩滿",
	Shield = "盾牌",
	Shields = "盾牌",
	Shirt = "襯衣",
	Shoulder = "肩部",
	Sigils = "符印",
	Simple = "簡單",
	Skinning = "剝皮",
	["Soul Bag"] = "靈魂裂片包",
	Staff = "法杖",
	Staves = "法杖",
	Sword = "劍",
	Tabard = "外袍",
	Tabards = "外袍",
	["Tackle Box"] = "工具箱",
	Tailoring = "裁縫",
	Thrown = "投擲武器",
	Totem = "圖騰",
	Totems = "圖騰",
	["Trade Goods"] = "商品",
	Trinket = "飾品",
	["Two-Hand"] = "雙手",
	["Two-Handed Axes"] = "雙手斧",
	["Two-Handed Maces"] = "雙手錘",
	["Two-Handed Swords"] = "雙手劍",
	Waist = "腰部",
	Wand = "魔杖",
	Wands = "魔杖",
	Warlock = "術士",
	Warrior = "戰士",
	Weapon = "武器",
	["Weapon Enchantment"] = "武器附魔",
	Wrist = "手腕",
	Yellow = "黃色",
}

else
	error(("%s: Locale %q not supported"):format(MAJOR_VERSION, GAME_LOCALE))
end
