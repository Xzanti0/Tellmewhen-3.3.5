﻿-- --------------------
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

local db, ClockGCD
local strlower, gsub, bitband =
	  strlower, gsub, bit.band
local UnitGUID =
	  UnitGUID
local print = TMW.print
local huge = math.huge
local strlowerCache = TMW.strlowerCache
local SpellTextures = TMW.SpellTextures
--local CL_PLAYER = COMBATLOG_OBJECT_TYPE_PLAYER
local CL_CONTROL_PLAYER = COMBATLOG_OBJECT_CONTROL_PLAYER

local clientVersion = select(4, GetBuildInfo())

local DRData = LibStub("DRData-1.0", true)
if not DRData then
	error("TMW: The Diminishing Returns icon type requires DRData-1.0. It is embedded within TellMeWhen - you probably just need to restart the game.")
end
local DRSpells = DRData.spells
local DRReset = 18
local PvEDRs = {}
for spellID, category in pairs(DRSpells) do
	if DRData.pveDR[category] then
		PvEDRs[spellID] = 1
	end
end

local Type = TMW.Classes.IconType:New()
Type.type = "dr"
LibStub("AceEvent-3.0"):Embed(Type)
Type.name = L["ICONMENU_DR"]
Type.desc = L["ICONMENU_DR_DESC"]
Type.usePocketWatch = 1
Type.SUGType = "dr"
Type.WhenChecks = {
	text = L["ICONMENU_SHOWWHEN"],
	{ value = "alpha", 			text = L["ICONMENU_DRABSENT"], 		colorCode = "|cFF00FF00" },
	{ value = "unalpha",		text = L["ICONMENU_DRPRESENT"], 	colorCode = "|cFFFF0000" },
	{ value = "always", 		text = L["ICONMENU_ALWAYS"] },
}
Type.RelevantSettings = {
	Unit = true,
	ShowCBar = true,
	InvertBars = true,
	CBarOffs = true,
	StackMin = true,
	StackMax = true,
	StackMinEnabled = true,
	StackMaxEnabled = true,
	DurationMin = true,
	DurationMax = true,
	DurationMinEnabled = true,
	DurationMaxEnabled = true,
	CheckRefresh = true,
}


function Type:Update()
	db = TMW.db
	ClockGCD = db.profile.ClockGCD
end


local function DR_OnEvent(icon, event, timestamp, suffix, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellID, spellName, spellSchool, auraType)
	if event == "COMBAT_LOG_EVENT_UNFILTERED" then
		if auraType == "DEBUFF" and (suffix == "SPELL_AURA_REMOVED" or suffix == "SPELL_AURA_APPLIED" or (icon.CheckRefresh and suffix == "SPELL_AURA_REFRESH")) then
			local ND = icon.NameHash
			if ND[spellID] or ND[strlowerCache[spellName]] then
				if PvEDRs[spellID] --[[or bitband(destFlags, CL_PLAYER) == CL_PLAYER]] or bitband(destFlags, CL_CONTROL_PLAYER) == CL_CONTROL_PLAYER then
					local dr = icon[destGUID]
					local time = TMW.time
					if suffix == "SPELL_AURA_APPLIED" then
						if dr and dr.start + dr.duration <= time then
							dr.start = 0
							dr.duration = 0
							dr.amt = 100
						end
					else
						if not dr then
							dr = {
								amt = 50,
								start = time,
								duration = DRReset,
								tex = SpellTextures[spellID]
							}
							icon[destGUID] = dr
						else
							local amt = dr.amt
							if amt and amt ~= 0 then
								dr.amt = amt > 25 and amt/2 or 0
								dr.duration = DRReset
								dr.start = time
								dr.tex = SpellTextures[spellID]
							end
						end
					end
					-- DO AN UPDATE RIGHT HERE
					if icon.Update_Method == "manual" then
						icon.NextUpdateTime = 0
					end
				end
			end
		end
	else -- it must be a unit update event
		icon.NextUpdateTime = 0
	end
end

local function DR_OnUpdate(icon, time)
	local Alpha, UnAlpha, Units = icon.Alpha, icon.UnAlpha, icon.Units

	for u = 1, #Units do
		local unit = Units[u]
		local dr = icon[UnitGUID(unit)]

		--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
		if dr then
			if dr.start + dr.duration <= time then
				local color = icon:CrunchColor(true)

				icon:SetInfo(Alpha, color, dr.tex, 0, 0, icon.firstCategory, nil, nil, nil, nil, unit)
				if Alpha > 0 then
					return
				end
			else
				local duration = dr.duration

				local color = icon:CrunchColor(false, duration)

				local amt = dr.amt
				icon:SetInfo(UnAlpha, color, dr.tex, dr.start, duration, icon.firstCategory, nil, amt, amt .. "%", nil, unit)
				if UnAlpha > 0 then
					return
				end
			end
		else
			local color = icon:CrunchColor(true)

			icon:SetInfo(Alpha, color, icon.FirstTexture, 0, 0, icon.firstCategory, nil, nil, nil, nil, unit)
			if Alpha > 0 then
				return
			end
		end
	end
	icon:SetInfo(0)
end

function Type:GetNameForDisplay(icon, data, doInsertLink)
	return data and (L[data] or gsub(data, "DR%-", ""))
end

local categoryTEMP = setmetatable({}, {
	__index = function(t, k)
		-- a ghetto sort mechanism
		local len = 1
		for k, v in pairs(t) do
			len = len + 1
		end
		local str = format("%3.0f\001", len)
		t[k] = str
		return str
	end
})

local function CheckCategories(icon)
	wipe(categoryTEMP)
	local firstCategory, doWarn
	local append = ""

	for i, IDorName in ipairs(icon.NameArray) do
		for category, str in pairs(TMW.BE.dr) do
			if TMW:StringIsInSemicolonList(str, IDorName) or TMW:GetSpellNames(icon, str, nil, 1, 1)[IDorName] then
				if not firstCategory then
					firstCategory = category
					icon.firstCategory = category
				end
				categoryTEMP[category] = categoryTEMP[category] .. ";" .. TMW:RestoreCase(IDorName)
				if firstCategory ~= category then
					doWarn = true
				end
			end
		end
	end

	if next(categoryTEMP) then
		for category, string in TMW:OrderedPairs(categoryTEMP, "values") do
			string = strmatch(string, ".*\001(.*)")
			append = append .. format("\r\n\r\n%s:\r\n%s", L[category], TMW:CleanString(string))
		end
	end

	if icon:IsBeingEdited() == 1 then
		if doWarn then
			TMW.HELP:Show("ICON_DR_MISMATCH", icon, TMW.IE.Main.Name, 0, 0, L["WARN_DRMISMATCH"]..append)
		else
			TMW.HELP:Hide("ICON_DR_MISMATCH")
		end
	end
end


function Type:Setup(icon, groupID, iconID)
	icon.ShowPBar = false
	icon.NameFirst = TMW:GetSpellNames(icon, icon.Name, 1)
	icon.NameArray = TMW:GetSpellNames(icon, icon.Name)
	icon.NameHash = TMW:GetSpellNames(icon, icon.Name, nil, nil, 1)
	local UnitSet
	icon.Units, UnitSet = TMW:GetUnits(icon, icon.Unit)
	icon.FirstTexture = SpellTextures[icon.NameFirst]

	-- Do the Right Thing and tell people if their DRs mismatch
	CheckCategories(icon)

	icon:SetTexture(TMW:GetConfigIconTexture(icon))

	if UnitSet.allUnitsChangeOnEvent then
		icon:SetUpdateMethod("manual")
		for event in pairs(UnitSet.updateEvents) do
			icon:RegisterEvent(event)
		end
	end
	
	icon:SetScript("OnEvent", DR_OnEvent)
	icon:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

	icon:SetScript("OnUpdate", DR_OnUpdate)
	icon:Update()
end

function Type:GetFontTestValues(icon)
	local rand = random(1, 3)
	local testCount = rand == 1 and 0 or rand == 2 and 25 or rand == 3 and 50
	local testCountText = testCount.."%"

	return testCount, testCountText
end

Type:Register()