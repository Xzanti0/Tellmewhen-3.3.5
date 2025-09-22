local major = "DRData-1.0"
local minor = 1009
assert(LibStub, string.format("%s requires LibStub.", major))

local Data = LibStub:NewLibrary(major, minor)
if not Data then return end

local L = {
	["Banish"] = "Banish",
	["Controlled stuns"] = "Controlled stuns",
	["Controlled stuns 2"] = "Controlled stuns 2",
	["Cyclone"] = "Cyclone",
	["Disarms"] = "Disarms",
	["Disorients"] = "Disorients",
	["Entrapment"] = "Entrapment",
	["Fears"] = "Fears",
	["Horrors"] = "Horrors",
	["Mind Control"] = "Mind Control",
	["Random roots"] = "Random roots",
	["Random stuns"] = "Random stuns",
	["Controlled roots"] = "Controlled roots",
	["Scatter Shot"] = "Scatter Shot",
	["Dragon's Breath"] = "Dragon's Breath",
	["Silences"] = "Silences",
	["Taunts"] = "Taunts",
}

if GetLocale() == "frFR" then
	L["Banish"] = "Bannissement"
	L["Controlled stuns"] = "Etourdissements contrôlés"
	L["Controlled stuns 2"] = "Etourdissements contrôlés 2"
	L["Cyclone"] = "Cyclone"
	L["Disarms"] = "Désarmements"
	L["Disorients"] = "Désorientations"
	L["Entrapment"] = "Piège"
	L["Fears"] = "Peurs"
	L["Horrors"] = "Horreurs"
	L["Mind Control"] = "Contrôle mental"
	L["Random roots"] = "Immobilisations aléatoires"
	L["Random stuns"] = "Etourdissemensts aléatoires"
	L["Controlled roots"] = "Immobilisations contrôlées"
	L["Scatter Shot"] = "Flèche de dispersion"
	L["Dragon's Breath"] = "Souffle du dragon"
	L["Silences"] = "Silences"
	L["Taunts"] = "Provocations"
end

-- How long before DR resets
-- While everyone will tell you it's 15 seconds, it's actually 16 - 20 seconds with 18 being a decent enough average
Data.RESET_TIME = 18

-- List of spellID -> DR category
Data.spells = {
	--[[ TAUNT ]]--
	-- Taunt (Warrior)
	[  355] = "taunt",
	[29060] = "taunt",
	[37486] = "taunt",
	[37548] = "taunt",
	[49613] = "taunt",
	[52154] = "taunt",
	[54794] = "taunt",	
	[70428] = "taunt",	
	
	-- Taunt (Hunter tenacity pet)
	[53477] = "taunt",
	
	-- Growl (Druid)
	[ 6795] = "taunt",
	
	-- Dark Command
	[56222] = "taunt",
	
	-- Hand of Reckoning
	[62124] = "taunt",
	
	-- Righteous Defense
	[31790] = "taunt",
	[31789] = "taunt",
	
	-- Distracting Shot
	[20736] = "taunt",
	[56559] = "taunt",
	
	-- Challenging Shout
	[ 1161] = "taunt",
	
	-- Challenging Roar
	[ 5209] = "taunt",
	
	[57603] = "taunt", -- Death Grip
	
	[36213] = "taunt", -- Angered Earth -- FIXME: NPC ability ?
	
	[17735] = "taunt", -- Suffering (Voidwalker)
	
	-- Twin Howl (Spirit wolves)
	[58857] = "taunt",

	--[[ DISORIENTS ]]--
	-- Hungering Cold
	[49203] = "disorient",
	[51209] = "disorient",
	
	 -- Sap
	[51724] = "disorient",
	[ 2070] = "disorient",
	[ 6770] = "disorient",
	[11297] = "disorient",
	[30980] = "disorient",
	
	-- Gouge
	[ 1776] = "disorient",
	[ 1777] = "disorient",
	[ 8629] = "disorient",
	[11285] = "disorient",
	[11286] = "disorient",
	[12540] = "disorient",
	[13579] = "disorient",
	[24698] = "disorient",
	[28456] = "disorient",
	[29425] = "disorient",
	[34940] = "disorient",
	[36862] = "disorient",
	[38764] = "disorient",	
	[38863] = "disorient",	
	
	-- Hex
	[51514] = "disorient",
	[16097] = "disorient",
	[53439] = "disorient",
	[66054] = "disorient",
	
	-- Shackle Undead
	[ 9484] = "disorient",
	[ 9485] = "disorient",
	[10955] = "disorient",
	[11444] = "disorient",
	[40135] = "disorient",
	[68342] = "disorient",
	
	-- Polymorph
	[12826] = "disorient",
	[13323] = "disorient",
	[58537] = "disorient",
	[68311] = "disorient",
	[  118] = "disorient",
	[12824] = "disorient",
	[12825] = "disorient",
	[14621] = "disorient",
	[15534] = "disorient",
	[27760] = "disorient",
	[29124] = "disorient",
	[29848] = "disorient",
	[30838] = "disorient",
	[36840] = "disorient",
	[38245] = "disorient",
	[38896] = "disorient",
	[41334] = "disorient",
	[43309] = "disorient",
	[46280] = "disorient",
	[65801] = "disorient",
	[66043] = "disorient",
	
	-- Polymorph (pig)
	[28272] = "disorient",
	[28285] = "disorient",
	
	-- Polymorph (turtle)
	[28271] = "disorient",
	
	-- Polymorph (black cat)
	[61305] = "disorient",
	
	-- Polymorph (serpent) -- TODO: gone ?
	[61025] = "disorient",
	
	-- Polymorph (rabbit)
	[61721] = "disorient",
	
	-- Polymorph (turkey)
	[61780] = "disorient",
	[71319] = "disorient",
	
	-- Freezing Trap Effect
	[14309] = "disorient",
	[55041] = "disorient",
	[ 3355] = "disorient",
	[14308] = "disorient",
	
	-- Wyvern Sting
	[49010] = "disorient",
	[49012] = "disorient",
	[19386] = "disorient",	
	[24131] = "disorient",	
	[24132] = "disorient",	
	[24133] = "disorient",	
	[24134] = "disorient",	
	[24135] = "disorient",	
	[24335] = "disorient",	
	[24336] = "disorient",	
	[26180] = "disorient",	
	[26233] = "disorient",	
	[26748] = "disorient",	
	[27068] = "disorient",	
	[27069] = "disorient",	
	[41186] = "disorient",	
	[49009] = "disorient",	
	[49011] = "disorient",	
	[65877] = "disorient",	
	[65878] = "disorient",		
	
	-- Repentance
	[20066] = "disorient",
	[29511] = "disorient",
	[32779] = "disorient",
	[66008] = "disorient",
	
	-- Hibernate
	[ 2637] = "disorient",
	[18657] = "disorient",
	[18658] = "disorient",
		
	--[[ SILENCES ]]--
	-- Nether Shock (Nether ray)
	[35334] = "silence",
	[44957] = "silence",
	[50479] = "silence",
	[53584] = "silence",
	[53586] = "silence",
	[53587] = "silence",
	[53588] = "silence",
	[53589] = "silence",
	[62347] = "silence",
	
	-- Garrote
	[ 1330] = "silence",
	
	-- Arcane Torrent
	[25046] = "silence", -- Arcane Torrent (Energy version)	
	[28730] = "silence", -- Arcane Torrent (Mana version)	
	[50613] = "silence", -- Arcane Torrent (Runic power version)
	[47779] = "silence",	
	[25048] = "silence",	
	[28733] = "silence",	
	[33390] = "silence",	
	[36022] = "silence",	
	[50615] = "silence",		
	
	-- Silence
	[15487] = "silence",
	
	-- Silencing Shot
	[34490] = "silence",
	[41084] = "silence",
	[42671] = "silence",	
	
	-- Improved Kick
	[18425] = "silence",
	
	-- Improved Counterspell
	[18469] = "silence",
	[55021] = "silence",
	
	-- Spell Lock (Felhunter or other source)
	[24259] = "silence",
	[30849] = "silence",
	[19244] = "silence",
	[19647] = "silence",
	[19648] = "silence",
	[19650] = "silence",
	[20433] = "silence",
	[20434] = "silence",
	[67519] = "silence",	
		
	-- Strangulate
	[47476] = "silence",
	[48680] = "silence",
	[49913] = "silence",
	[49914] = "silence",
	[49915] = "silence",
	[49916] = "silence",
	[51131] = "silence",
	[55314] = "silence",
	[55334] = "silence",
	[66018] = "silence",
	
	-- Gag Order (Warrior talent)
	[18498] = "silence",
	[74347] = "silence",
	
    -- Shield of the templar (NOT Avenger's Shield)
	[63529] = "silence",	
	
	--[[ DISARMS ]]--
	-- Dismantle
	[51722] = "disarm",
	
	-- Disarm
	[  676] = "disarm",
	[ 6713] = "disarm",
	[ 8379] = "disarm",
	[11879] = "disarm",
	[13534] = "disarm",
	[15752] = "disarm",
	[22691] = "disarm",
	[27581] = "disarm",
	[30013] = "disarm",
	[31955] = "disarm",
	[36139] = "disarm",
	[41062] = "disarm",
	[48883] = "disarm",
	[65935] = "disarm",
	
	-- Psychic Horror (Disarm effect)
	[64058] = "disarm",
	
	-- Snatch
	[50541] = "disarm",
	[53537] = "disarm",
	[53538] = "disarm",
	[53540] = "disarm",
	[53542] = "disarm",
	[53543] = "disarm",

	--[[ FEARS ]]--
	-- Blind
	[ 2094] = "fear",
	[42972] = "fear",
	[21060] = "fear",
	[34654] = "fear",
	[34694] = "fear",
	[43433] = "fear",
	[65960] = "fear",
	
	-- Fear (Warlock)
	[ 6215] = "fear",
	[68950] = "fear",
	[ 5782] = "fear",
	[ 6213] = "fear",
	[12096] = "fear",
	[12542] = "fear",
	[22678] = "fear",
	[26070] = "fear",
	[26580] = "fear",
	[26661] = "fear",
	[27641] = "fear",
	[27990] = "fear",
	[29168] = "fear",	
	[29321] = "fear",
	[30002] = "fear",
	[30530] = "fear",
	[30584] = "fear",
	[30615] = "fear",
	
	-- Seduction (Succubus)
	[ 6358] = "fear",
	[ 6359] = "fear",
	[20407] = "fear",
	[29490] = "fear",
	[30850] = "fear",
	[31865] = "fear",
	
	-- Howl of Terror
	[17928] = "fear",
	[ 5484] = "fear",
	[50577] = "fear",
	
	-- Psychic Scream
	[10890] = "fear",
	[13704] = "fear",
	[34322] = "fear",
	[ 8122] = "fear",
	[ 8124] = "fear",
	[10888] = "fear",
	[15398] = "fear",
	[22884] = "fear",
	[26042] = "fear",
	[27610] = "fear",
	[43432] = "fear",
	[65543] = "fear",

	-- Psychic Horror
	--[64044] = "fear",
	[65545] = "fear",
	
	-- Scare Beast
	[14327] = "fear",
	[ 1513] = "fear",
	[14326] = "fear",
	
	-- Turn Evil
	[10326] = "fear",
	
	-- Intimidating Shout
	[ 5246] = "fear",
	[20511] = "fear",
	[65930] = "fear",
	[65931] = "fear",

	--[[ CONTROL STUNS ]]--
	-- Sonic Blast (Bat)
	[50519] = "ctrlstun",
	[53564] = "ctrlstun",
	[53565] = "ctrlstun",
	[53566] = "ctrlstun",
	[53567] = "ctrlstun",
	[53568] = "ctrlstun",
	
	-- Concussion Blow
	[12809] = "ctrlstun",
	[22427] = "ctrlstun",
	[52719] = "ctrlstun",
	[32588] = "ctrlstun",
	[54132] = "ctrlstun",
	
	-- Shockwave
	[46968] = "ctrlstun",
	[58977] = "ctrlstun",
	[75418] = "ctrlstun",
	
	-- Hammer of Justice
	[10308] = "ctrlstun",
	[66940] = "ctrlstun",
	[  853] = "ctrlstun",
	[ 5588] = "ctrlstun",
	[ 5589] = "ctrlstun",
	[13005] = "ctrlstun",
	[32416] = "ctrlstun",
	[37369] = "ctrlstun",
	[39077] = "ctrlstun",
	[41468] = "ctrlstun",
	[66007] = "ctrlstun",
	[66613] = "ctrlstun",
	[66863] = "ctrlstun",
	[66941] = "ctrlstun",
	
	-- Bash
	[ 5211] = "ctrlstun",
	[ 8983] = "ctrlstun",
	[ 6798] = "ctrlstun",
	[58861] = "ctrlstun",
	
	-- Intimidation
	[24394] = "ctrlstun",
	[19577] = "ctrlstun",
	[70495] = "ctrlstun",	
	
	-- War Stomp
	[20549] = "ctrlstun",
	[19482] = "ctrlstun",
	[31408] = "ctrlstun",
	[31480] = "ctrlstun",	
	
	-- Intercept
	[20252] = "ctrlstun",
	[20253] = "ctrlstun",
	[47995] = "ctrlstun",
	
	-- Deep Freeze
	[44572] = "ctrlstun",
	[58534] = "ctrlstun",
	[71757] = "ctrlstun",
	
	-- Shadowfury
	[30283] = "ctrlstun",
	[47847] = "ctrlstun",
	[30413] = "ctrlstun",
	[30414] = "ctrlstun",
	[35373] = "ctrlstun",
	[39082] = "ctrlstun",
	[45270] = "ctrlstun",
	[47846] = "ctrlstun",
	[56733] = "ctrlstun",
	[61463] = "ctrlstun",
	
	-- Holy Wrath
	[48817] = "ctrlstun",
	[ 2812] = "ctrlstun",
	[10318] = "ctrlstun",
	[27139] = "ctrlstun",
	[48816] = "ctrlstun",
	[52836] = "ctrlstun",
	[69934] = "ctrlstun",
	[71134] = "ctrlstun",
	
	-- Inferno Effect
	[22703] = "ctrlstun",
	[31302] = "ctrlstun",
	
	-- Demon Leap (Warlock)
	[54785] = "ctrlstun",
	
	-- Gnaw (Ghoul)
	[47481] = "ctrlstun",
	
	-- Sting (Wasp)
	[56626] = "ctrlstun",
	[56627] = "ctrlstun",
	[56628] = "ctrlstun",
	[56629] = "ctrlstun",
	[56630] = "ctrlstun",
	[56631] = "ctrlstun",
	
	-- Cheap Shot
	[ 1833] = "ctrlstun",
	[ 6409] = "ctrlstun",
	[14902] = "ctrlstun",
	[30986] = "ctrlstun",
	[31819] = "ctrlstun",
	[31843] = "ctrlstun",
	[34243] = "ctrlstun",

	-- Pounce
	[27006] = "ctrlstun",
	[ 9827] = "ctrlstun",
	[ 9823] = "ctrlstun",
	[ 9005] = "ctrlstun",
	[49803] = "ctrlstun",
		
	-- Charge Stun
	[ 7922] = "ctrlstun",
	[65929] = "ctrlstun",

	--[[ CONTROL STUNS 2 ]]--
	-- Kidney Shot
	[ 8643] = "ctrlstun2",
	[72335] = "ctrlstun2",
	[  408] = "ctrlstun2",
	[27615] = "ctrlstun2",
	[30621] = "ctrlstun2",
	[30832] = "ctrlstun2",
	[32864] = "ctrlstun2",
	[41389] = "ctrlstun2",
	[49616] = "ctrlstun2",

	-- Maim
	[22570] = "ctrlstun2",
	[49802] = "ctrlstun2",	

	--[[ RANDOM STUNS ]]--
	-- Impact
	[64343] = "rndstun",
	[12355] = "rndstun",
	[11103] = "rndstun",
	[12357] = "rndstun",
	[12358] = "rndstun",
	
	[39796] = "rndstun", -- Stoneclaw Stun
	
	--[11210] = "rndstun", -- Improved Polymorph (rank 1)
	--[12592] = "rndstun", -- Improved Polymorph (rank 2)

	--[[ CYCLONE ]]--
	[33786] = "cyclone",
	[65859] = "cyclone",

	--[[ ROOTS ]]--
	-- Freeze (Water Elemental or other sources)
	[33395] = "ctrlroot",
	[63685] = "ctrlroot",
	[40875] = "ctrlroot",
	[62469] = "ctrlroot",
	
	-- Pin (Crab)
	[50245] = "ctrlroot",
	[53544] = "ctrlroot",
	[53545] = "ctrlroot",
	[53546] = "ctrlroot",
	[53547] = "ctrlroot",
	[53548] = "ctrlroot",
	
	-- Frost Nova
	[22645] = "ctrlroot",
	[32192] = "ctrlroot",
	[42917] = "ctrlroot",
	[44177] = "ctrlroot",
	[61462] = "ctrlroot",
	[70209] = "ctrlroot",
	[  122] = "ctrlroot",
	[  865] = "ctrlroot",
	[ 1194] = "ctrlroot",
	[ 1225] = "ctrlroot",
	[ 6131] = "ctrlroot",
	[ 6132] = "ctrlroot",
	[ 9915] = "ctrlroot",
	[10230] = "ctrlroot",
	[10231] = "ctrlroot",
	[11831] = "ctrlroot",
	[12674] = "ctrlroot",
	[12748] = "ctrlroot",
	[14907] = "ctrlroot",
	
	-- Entangling Roots
	[53308] = "ctrlroot",
	[53313] = "ctrlroot",
	[  339] = "ctrlroot",
	[ 1062] = "ctrlroot",
	[ 5195] = "ctrlroot",
	[ 5196] = "ctrlroot",
	[ 9852] = "ctrlroot",
	[ 9853] = "ctrlroot",
	[11922] = "ctrlroot",
	[12747] = "ctrlroot",
	[19970] = "ctrlroot",
	[19971] = "ctrlroot",
	[19972] = "ctrlroot",
	[19973] = "ctrlroot",
	[19974] = "ctrlroot",
	[19975] = "ctrlroot", -- Nature's Grasp
	[20654] = "ctrlroot",
	[20699] = "ctrlroot",	
		
	-- Earthgrab
	[64695] = "ctrlroot",
	[ 8377] = "ctrlroot",
	[31983] = "ctrlroot",
	
	-- Web (Spider)
	[ 4167] = "ctrlroot",
	
	-- Venom Web Spray
	[55509] = "ctrlroot",
	[54706] = "ctrlroot", -- Silithid
	[55505] = "ctrlroot",
	[55506] = "ctrlroot",
	[55507] = "ctrlroot",
	[55508] = "ctrlroot",
	
	
	-- Counterattack
	[52883] = "ctrlroot",
	[19306] = "ctrlroot",
	[20909] = "ctrlroot",
	[20910] = "ctrlroot",
	[27067] = "ctrlroot",
	[48998] = "ctrlroot",
	[48999] = "ctrlroot",
	[52881] = "ctrlroot",
	
	-- Improved Cone of Cold
	[11190] = "ctrlroot",
	[12489] = "ctrlroot",
	[12490] = "ctrlroot",
	
	--[[ RANDOM ROOTS ]]--
	-- Improved Hamstring -- FIXME: to check
	[23694] = "rndroot",
	[12289] = "rndroot",
	[12668] = "rndroot",
	[23695] = "rndroot",	
	
	-- Shattered Barrier
	[44745] = "rndroot", -- (rank 1)
	[54787] = "rndroot", -- (rank 2)
	[55080] = "rndroot",
	
	--[[ HORROR ]]--
	-- Death Coil
	[47860] = "horror",
	[ 6789] = "horror",
	[17925] = "horror",
	[17926] = "horror",
	
	-- Psychic Horror
	[64044] = "horror",
	
	--[[ MISC ]]--
	-- Scatter Shot
	[19503] = "scatters",
	[23601] = "scatters",
	[36732] = "scatters",
	[37506] = "scatters",
	[46681] = "scatters",
	[50733] = "scatters",	
	
	-- Dragon's Breath
	[42950] = "dragons",
	[29964] = "dragons",
	[31661] = "dragons",
	[33041] = "dragons",
	[33042] = "dragons",
	[33043] = "dragons",	
	[35250] = "dragons",
	[35289] = "dragons",
	[42949] = "dragons",	
	
	-- Mind Control
	[  605] = "mc",
	[11446] = "mc",
	[43550] = "mc",
	[67229] = "mc",
	
	-- Banish
	[  710] = "banish",
	[ 8994] = "banish",
	[18647] = "banish",
	[27565] = "banish",
	[30231] = "banish",
	[35182] = "banish",
	[37527] = "banish",
	[37546] = "banish",
	[37833] = "banish",
	[38009] = "banish",
	[38376] = "banish",
	[38791] = "banish",
	[39622] = "banish",
	[39674] = "banish",
	[40370] = "banish",	
	
	-- Entrapment
	[19185] = "entrapment",
	[64804] = "entrapment",
	[19184] = "entrapment",
	[19387] = "entrapment",
	[19388] = "entrapment",
	[64803] = "entrapment",	
}

-- DR Category names
Data.categoryNames = {
	["banish"] = L["Banish"],
	["ctrlstun"] = L["Controlled stuns"],
	["ctrlstun2"] = L["Controlled stuns 2"],
	["cyclone"] = L["Cyclone"],
	["disarm"] = L["Disarms"],
	["disorient"] = L["Disorients"],
	["entrapment"] = L["Entrapment"],
	["fear"] = L["Fears"],
	["horror"] = L["Horrors"],
	["mc"] = L["Mind Control"],
	["rndroot"] = L["Random roots"],
	["rndstun"] = L["Random stuns"],
	["ctrlroot"] = L["Controlled roots"],
	["scatters"] = L["Scatter Shot"],
	["dragons"] = L["Dragon's Breath"],
	["silence"] = L["Silences"],
	["taunt"] = L["Taunts"],
}

-- Categories that have DR in PvE as well as PvP
Data.pveDR = {
	["ctrlstun"] = true,
	["ctrlstun2"] = true,
	["rndstun"] = true,
	["taunt"] = true,
	["cyclone"] = true,
}

-- Public APIs
-- Category name in something usable
function Data:GetCategoryName(cat)
	return cat and Data.categoryNames[cat] or nil
end

-- Spell list
function Data:GetSpells()
	return Data.spells
end

-- Seconds before DR resets
function Data:GetResetTime()
	return Data.RESET_TIME
end

-- Get the category of the spellID
function Data:GetSpellCategory(spellID)
	return spellID and Data.spells[spellID] or nil
end

-- Does this category DR in PvE?
function Data:IsPVE(cat)
	return cat and Data.pveDR[cat] or nil
end

-- List of categories
function Data:GetCategories()
	return Data.categoryNames
end

-- Next DR, if it's 1.0, next is 0.50, if it's 0.[50] = "ctrlroot",next is 0.[25] = "ctrlroot",and such
function Data:NextDR(diminished)
	if( diminished == 1 ) then
		return 0.50
	elseif( diminished == 0.50 ) then
		return 0.25
	end

	return 0
end

--[[ EXAMPLES ]]--
-- This is how you would track DR easily, you're welcome to do whatever you want with the below functions

--[[
local trackedPlayers = {}
local function debuffGained(spellID, destName, destGUID, isEnemy, isPlayer)
	-- Not a player, and this category isn't diminished in PVE, as well as make sure we want to track NPCs
	local drCat = DRData:GetSpellCategory(spellID)
	if( not isPlayer and not DRData:IsPVE(drCat) ) then
		return
	end

	if( not trackedPlayers[destGUID] ) then
		trackedPlayers[destGUID] = {}
	end

	-- See if we should reset it back to undiminished
	local tracked = trackedPlayers[destGUID][drCat]
	if( tracked and tracked.reset <= GetTime() ) then
		tracked.diminished = 1.0
	end
end

local function debuffFaded(spellID, destName, destGUID, isEnemy, isPlayer)
	local drCat = DRData:GetSpellCategory(spellID)
	if( not isPlayer and not DRData:IsPVE(drCat) ) then
		return
	end

	if( not trackedPlayers[destGUID] ) then
		trackedPlayers[destGUID] = {}
	end

	if( not trackedPlayers[destGUID][drCat] ) then
		trackedPlayers[destGUID][drCat] = { reset = 0, diminished = 1.0 }
	end

	local time = GetTime()
	local tracked = trackedPlayers[destGUID][drCat]

	tracked.reset = time + DRData:GetResetTime()
	tracked.diminished = DRData:NextDR(tracked.diminished)

	-- Diminishing returns changed, now you can do an update
end

local function resetDR(destGUID)
	-- Reset the tracked DRs for this person
	if( trackedPlayers[destGUID] ) then
		for cat in pairs(trackedPlayers[destGUID]) do
			trackedPlayers[destGUID][cat].reset = 0
			trackedPlayers[destGUID][cat].diminished = 1.0
		end
	end
end

local COMBATLOG_OBJECT_TYPE_PLAYER = COMBATLOG_OBJECT_TYPE_PLAYER
local COMBATLOG_OBJECT_REACTION_HOSTILE = COMBATLOG_OBJECT_REACTION_HOSTILE
local COMBATLOG_OBJECT_CONTROL_PLAYER = COMBATLOG_OBJECT_CONTROL_PLAYER

local eventRegistered = {["SPELL_AURA_APPLIED"] = true, ["SPELL_AURA_REFRESH"] = true, ["SPELL_AURA_REMOVED"] = true, ["PARTY_KILL"] = true, ["UNIT_DIED"] = true}

local function COMBAT_LOG_EVENT_UNFILTERED(self, event, timestamp, eventType, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellID, spellName, spellSchool, auraType)
	if( not eventRegistered[eventType] ) then
		return
	end

	-- Enemy gained a debuff
	if( eventType == "SPELL_AURA_APPLIED" ) then
		if( auraType == "DEBUFF" and DRData:GetSpellCategory(spellID) ) then
			local isPlayer = ( bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) == COMBATLOG_OBJECT_TYPE_PLAYER or bit.band(destFlags, COMBATLOG_OBJECT_CONTROL_PLAYER) == COMBATLOG_OBJECT_CONTROL_PLAYER )
			debuffGained(spellID, destName, destGUID, (bit.band(destFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) == COMBATLOG_OBJECT_REACTION_HOSTILE), isPlayer)
		end

	-- Enemy had a debuff refreshed before it faded, so fade + gain it quickly
	elseif( eventType == "SPELL_AURA_REFRESH" ) then
		if( auraType == "DEBUFF" and DRData:GetSpellCategory(spellID) ) then
			local isPlayer = ( bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) == COMBATLOG_OBJECT_TYPE_PLAYER or bit.band(destFlags, COMBATLOG_OBJECT_CONTROL_PLAYER) == COMBATLOG_OBJECT_CONTROL_PLAYER )
			local isHostile = (bit.band(destFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) == COMBATLOG_OBJECT_REACTION_HOSTILE)
			debuffFaded(spellID, destName, destGUID, isHostile, isPlayer)
			debuffGained(spellID, destName, destGUID, isHostile, isPlayer)
		end

	-- Buff or debuff faded from an enemy
	elseif( eventType == "SPELL_AURA_REMOVED" ) then
		if( auraType == "DEBUFF" and DRData:GetSpellCategory(spellID) ) then
			local isPlayer = ( bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) == COMBATLOG_OBJECT_TYPE_PLAYER or bit.band(destFlags, COMBATLOG_OBJECT_CONTROL_PLAYER) == COMBATLOG_OBJECT_CONTROL_PLAYER )
			debuffFaded(spellID, destName, destGUID, (bit.band(destFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) == COMBATLOG_OBJECT_REACTION_HOSTILE), isPlayer)
		end

	-- Don't use UNIT_DIED inside arenas due to accuracy issues, outside of arenas we don't care too much
	elseif( ( eventType == "UNIT_DIED" and select(2, IsInInstance()) ~= "arena" ) or eventType == "PARTY_KILL" ) then
		resetDR(destGUID)
	end
end]]
