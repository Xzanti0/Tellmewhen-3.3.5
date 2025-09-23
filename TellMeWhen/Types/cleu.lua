-- --------------------
-- TellMeWhen
-- Originally by Nephthys of Hyjal <lieandswell@yahoo.com>

-- Other contributions by
-- Sweetmms of Blackrock
-- Oozebull of Twisting Nether
-- Oodyboo of Mug'thol
-- Banjankri of Blackrock
-- Predeter of Proudmoore
-- Xenyr of Aszune

-- Currently maintained by
-- Cybeloras of Mal'Ganis
-- --------------------

local TMW = TMW
if not TMW then return end
local L = TMW.L

local db
local _G = _G
local strlower, bit_band =
	  strlower, bit.band
local UnitGUID, GetSpellTexture, GetItemIcon =
	  UnitGUID, GetSpellTexture, GetItemIcon
local print = TMW.print
local SpellTextures = TMW.SpellTextures

local pGUID = UnitGUID("player") -- this isnt actually defined right here (it returns nil at this stage of loading), so I will do it later too
local clientVersion = select(4, GetBuildInfo())
local strlowerCache = TMW.strlowerCache


local Type = TMW.Classes.IconType:New()
Type.type = "cleu" --aka combat events
Type.name = L["ICONMENU_CLEU"]
Type.desc = L["ICONMENU_CLEU_DESC"]
Type.usePocketWatch = 1
Type.AllowNoName = true
Type.chooseNameTitle = L["ICONMENU_CHOOSENAME"] .. " " .. L["ICONMENU_CHOOSENAME_ORBLANK"]
Type.SUGType = "cleu"
Type.spacebefore = true
-- Type.leftCheckYOffset = -130 -- nevermind


Type.WhenChecks = {
	text = L["ICONMENU_SHOWWHEN"],
	{ value = "alpha",			text = L["ICONMENU_COUNTING"], 		tooltipText = L["ICONMENU_COUNTING_DESC"],		colorCode = "|cFF00FF00" },
	{ value = "unalpha", 		text = L["ICONMENU_NOTCOUNTING"], 	tooltipText = L["ICONMENU_NOTCOUNTING_DESC"],	colorCode = "|cFFFF0000" },
	{ value = "always", 		text = L["ICONMENU_ALWAYS"] },
}
Type.RelevantSettings = {
	CLEUEvents = true,
	CLEUDur = true,
	SourceUnit = true,
	DestUnit = true,
	SourceFlags = true,
	DestFlags = true,
	ShowCBar = true,
	CBarOffs = true,
	InvertBars = true,
	DurationMin = true,
	DurationMax = true,
	DurationMinEnabled = true,
	DurationMaxEnabled = true,
}

Type.EventDisabled_OnStack = true
Type.EventDisabled_OnCLEUEvent = false



function Type:Update()
	db = TMW.db
	pGUID = UnitGUID("player")
end


local EnvironmentalTextures = {
	DROWNING = "Interface\\Icons\\Spell_Shadow_DemonBreath",
	FALLING = TMW_GetSpellTexture(130),
	FATIGUE = "Interface\\Icons\\Ability_Suffocate",
	FIRE = TMW_GetSpellTexture(84668),
	LAVA = TMW_GetSpellTexture(90373),
	SLIME = TMW_GetSpellTexture(49870),
}

local EventsWithoutSpells = {
	ENCHANT_APPLIED = true,
	ENCHANT_REMOVED = true,
	SWING_DAMAGE = true,
	SWING_MISSED = true,
	UNIT_DIED = true,
	UNIT_DESTROYED = true,
	UNIT_DISSIPATES = true,
	PARTY_KILL = true,
	ENVIRONMENTAL_DAMAGE = true,
}

local function CLEU_OnEvent(icon, event, timestamp, suffix, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellID, spellName, bb, buffOrDebuff, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, ...)
	if suffix == "SPELL_MISSED" and arg4 == "REFLECT" then
		-- make a fake suffix for spell reflects
		suffix = "SPELL_REFLECT"

		-- swap the source and the destination
		local a, b, c = sourceGUID, sourceName, sourceFlags
		sourceGUID, sourceName, sourceFlags = destGUID, destName, destFlags
		destGUID, destName, destFlags = a, b, c
	elseif suffix == "SPELL_INTERRUPT" then
		-- fake an suffix that allow filtering based on the spell that caused an interrupt rather than the spell that was interrupted.
		-- fire it in addition to, not in place of, SPELL_INTERRUPT
		CLEU_OnEvent(icon, event, timestamp, "SPELL_INTERRUPT_SPELL", sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellID, spellName, bb, buffOrDebuff, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, ...)
	end

	if icon.AllowAnyEvents or icon.CLEUEvents[suffix] then

		if sourceName and sourceFlags and icon.SourceFlags then
			if bit_band(icon.SourceFlags, sourceFlags) ~= sourceFlags then
				return
			end
		end

		if destName and destFlags and icon.DestFlags then
			if bit_band(icon.DestFlags, destFlags) ~= destFlags then
				return
			end
		end

		local SourceUnits = icon.SourceUnits
		local sourceUnit = sourceName
		if SourceUnits and sourceName then
			local matched
			for i = 1, #SourceUnits do
				local unit = SourceUnits[i]
				local sourceName = strlowerCache[sourceName]
				if unit == sourceName then -- match by name
					matched = 1
					break
				elseif UnitGUID(unit) == sourceGUID then
					sourceUnit = unit -- replace with the actual unitID
					matched = 1
					break
				end
			end
			if not matched then
				return
			end
		end

		local DestUnits = icon.DestUnits
		local destUnit = destName
		if DestUnits and destName then
			local matched
			for i = 1, #DestUnits do
				local unit = DestUnits[i]
				local destName = strlowerCache[destName]
				if unit == destName then -- match by name
					matched = 1
					break
				elseif UnitGUID(unit) == destGUID then
					destUnit = unit -- replace with the actual unitID
					matched = 1
					break
				end
			end
			if not matched then
				return
			end
		end

		local tex, extraID, extraName
		if suffix == "SWING_DAMAGE" or suffix == "SWING_MISSED" then
			spellName = ACTION_SWING
			-- dont define spellID here so that ACTION_SWING will be used in %s substitutions
			tex = SpellTextures[6603]
		elseif suffix == "ENCHANT_APPLIED" or suffix == "ENCHANT_REMOVED" then
			--spellID = arg1
			--spellName = arg2
			tex = GetItemIcon(arg2)
		elseif suffix == "SPELL_INTERRUPT" or suffix == "SPELL_DISPEL" or suffix == "SPELL_DISPEL_FAILED" or suffix == "SPELL_STOLEN" then
			extraID = arg1 -- the spell used (kick, cleanse, spellsteal)
			extraName = arg2
			--spellID = arg4 -- the other spell (polymorph, greater heal, arcane intellect, corruption)
			--spellName = arg5
			tex = SpellTextures[spellID]
		elseif suffix == "SPELL_AURA_BROKEN_SPELL" or suffix == "SPELL_INTERRUPT_SPELL" then
			extraID = arg4 -- the spell that broke it
			extraName = arg5
			--spellID = arg1 -- the spell that was broken
			--spellName = arg2
			tex = SpellTextures[spellID]
		--TODO: wotlk backport - disabling this for now
		--elseif suffix == "ENVIRONMENTAL_DAMAGE" then
		--	spellName = _G["ACTION_ENVIRONMENTAL_DAMAGE_" .. arg1]
		--	tex = EnvironmentalTextures[arg1] or "Interface\\Icons\\INV_Misc_QuestionMark" -- arg1 is
		elseif suffix == "UNIT_DIED" or suffix == "UNIT_DESTROYED" or suffix == "UNIT_DISSIPATES" or suffix == "PARTY_KILL" then
			spellName = L["CLEU_DIED"]
			tex = "Interface\\Icons\\Ability_Rogue_FeignDeath"
			if not sourceUnit then
				sourceUnit = destUnit -- clone it
			end
		else
			--spellID = arg1
			--spellName = arg2
			--[[
			--"SPELL_REFLECT", -- normal BUT  NOT ACTUALLY AN EVENT
			--"SPELL_AURA_APPLIED_DOSE"					--SEMI-NORMAL, CONSIDER SPECIAL IMPLEMENTATION
			--"SPELL_AURA_REMOVED_DOSE"					--SEMI-NORMAL, CONSIDER SPECIAL IMPLEMENTATION
			]]
		end	
		tex = tex or SpellTextures[spellID] or SpellTextures[spellName] -- [spellName] should never be used, but whatever

		local NameHash = icon.NameHash
		local duration
		if NameHash and not EventsWithoutSpells[suffix] then
			local key = (NameHash[spellID] or NameHash[strlowerCache[spellName]])
			if not key then
				return
			else
				duration = icon.Durations[key]
				if duration == 0 then
					duration = nil
				end
			end
		end

		-- bind text updating
		local BindTextObj = icon.BindTextObj
		if BindTextObj and BindTextObj.hasAnySubstitutions then
			local usedSubstitutions = BindTextObj.usedSubstitutions
			if
				(icon.cleu_sourceUnit ~= sourceUnit	and usedSubstitutions.o)	or
				(icon.cleu_destUnit ~= destUnit		and usedSubstitutions.e)	or
				(icon.cleu_extraSpell ~= extraID	and usedSubstitutions.x)
			then
				BindTextObj:UpdateNonOnUpdateSubstitutions()
			end
		end

		icon.cleu_start = TMW.time
		icon.cleu_duration = duration or icon.CLEUDur
		icon.cleu_spell = spellID or spellName -- perfer ID over name, but events without real names (DIED, ENVIRONMENTAL_DAMAGE, SWING) dont have spellIDs, so pass the spellName the be displayed on the icon

		icon.cleu_sourceUnit = sourceUnit
		icon.cleu_destUnit = destUnit
		icon.cleu_extraSpell = extraID

		-- Unlike some icon types, an immedite update is needed here (because of the event)
		icon:Update(true, tex)
		
		if icon.EventHandlersSet.OnCLEUEvent then
			icon:QueueEvent("OnCLEUEvent")
			icon:ProcessQueuedEvents()
		end
	end
end

local function CLEU_OnUpdate(icon, time, tex)
	-- tex is passed in when calling from OnEvent, otherwise its nil (causing there to be no update)
	local start = icon.cleu_start
	local duration = icon.cleu_duration

	--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
	if time - start > duration then
		local color = icon:CrunchColor(false)

		icon:SetInfo(icon.UnAlpha, color, tex, 0, 0, icon.cleu_spell, nil, nil, nil, nil, icon.cleu_destUnit or icon.cleu_sourceUnit)
	else
		local color = icon:CrunchColor(true, duration)

		icon:SetInfo(icon.Alpha, color, tex, start, duration, icon.cleu_spell, nil, nil, nil, nil, icon.cleu_destUnit or icon.cleu_sourceUnit)
	end

	--icon.LastUpdate = time -- sometimes we call this function whenever the hell we want ("OnEvent"), so at least have the decency to delay the next update (nevermind, might cause weird event behav)
end

function Type:Setup(icon, groupID, iconID)
	icon.NameHash = icon.Name ~= "" and TMW:GetSpellNames(icon, icon.Name, nil, nil, 1)
	icon.Durations = TMW:GetSpellDurations(icon, icon.Name)

	-- only define units if there are any units. we dont want to waste time iterating an empty table.
	icon.SourceUnits = icon.SourceUnit ~= "" and TMW:GetUnits(icon, icon.SourceUnit)
	icon.DestUnits = icon.DestUnit ~= "" and TMW:GetUnits(icon, icon.DestUnit)

	-- nil out flags if they are set to default (2^32-1)
	icon.SourceFlags = icon.SourceFlags ~= 2^32-1 and icon.SourceFlags
	icon.DestFlags = icon.DestFlags ~= 2^32-1 and icon.DestFlags

	-- more efficient than checking icon.CLEUEvents[""] every OnEvent
	icon.AllowAnyEvents = icon.CLEUEvents[""]

	local tex, otherArgWhichLacksADecentName = TMW:GetConfigIconTexture(icon)
	if otherArgWhichLacksADecentName == nil then
		tex = "Interface\\Icons\\INV_Misc_PocketWatch_01"
	end
	icon:SetTexture(tex)

	-- type-specific data that events and OnUpdate use
	icon.cleu_start = icon.cleu_start or 0
	icon.cleu_duration = icon.cleu_duration or 0
	icon.cleu_spell = nil

	-- type-specific data that events use
	icon.cleu_sourceUnit = nil
	icon.cleu_destUnit = nil
	icon.cleu_extraSpell = nil

	-- safety mechanism
	if icon.AllowAnyEvents and not icon.SourceUnits and not icon.DestUnits and not icon.NameHash and not icon.SourceFlags and not icon.DestFlags then
		if db.profile.Locked and icon.Enabled then
			TMW.Warn(L["CLEU_NOFILTERS"]:format(L["GROUPICON"]:format(TMW:GetGroupName(groupID, groupID, 1), iconID)))
		end
		return
	end

	icon:SetUpdateMethod("manual")
	
	icon:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	icon:SetScript("OnEvent", CLEU_OnEvent)

	icon:SetScript("OnUpdate", CLEU_OnUpdate)
	icon:Update()
end


Type:Register()