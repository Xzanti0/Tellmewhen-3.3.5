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
local GetSpellCooldown, IsSpellInRange, IsUsableSpell =
	  GetSpellCooldown, IsSpellInRange, IsUsableSpell
local GetActionCooldown, IsActionInRange, IsUsableAction, GetActionTexture, GetActionInfo =
	  GetActionCooldown, IsActionInRange, IsUsableAction, GetActionTexture, GetActionInfo
local UnitRangedDamage =
	  UnitRangedDamage
local pairs =
	  pairs
local OnGCD = TMW.OnGCD
local print = TMW.print
local _, pclass = UnitClass("Player")
local SpellTextures = TMW.SpellTextures
local mindfreeze = strlower(GetSpellInfo(47528))

local AUTO_S = "Auto Shot"
local Type = TMW.Classes.IconType:New()
LibStub("AceEvent-3.0"):Embed(Type)
Type.type = "cooldown"
Type.name = L["ICONMENU_SPELLCOOLDOWN"]
Type.desc = L["ICONMENU_SPELLCOOLDOWN_DESC"]
Type.chooseNameText  = L["CHOOSENAME_DIALOG"] .. "\r\n\r\n" .. L["CHOOSENAME_DIALOG_PETABILITIES"]

Type.WhenChecks = {
	text = L["ICONMENU_SHOWWHEN"],
	{ value = "alpha", 			text = L["ICONMENU_USABLE"], 			colorCode = "|cFF00FF00" },
	{ value = "unalpha",  		text = L["ICONMENU_UNUSABLE"], 			colorCode = "|cFFFF0000" },
	{ value = "always", 		text = L["ICONMENU_ALWAYS"] },
}
Type.RelevantSettings = {
	RangeCheck = true,
	ManaCheck = true,
	ShowPBar = true,
	PBarOffs = true,
	ShowCBar = true,
	CBarOffs = true,
	InvertBars = true,
	DurationMin = true,
	DurationMax = true,
	DurationMinEnabled = true,
	DurationMaxEnabled = true,
	IgnoreRunes = (pclass == "DEATHKNIGHT"),
}

Type.EventDisabled_OnUnit = true
Type.EventDisabled_OnStack = true


function Type:Update()
	db = TMW.db
	ClockGCD = db.profile.ClockGCD
end



local function AutoShot_OnEvent(icon, event, unit, spellName)
	if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == "player" then
	    if spellName == AUTO_S then
			icon.asStart = TMW.time
			icon.asDuration = UnitRangedDamage("player")
			icon.NextUpdateTime = 0
		end
	end
end

local function AutoShot_OnUpdate(icon, time)
	local NameName = icon.NameName
	local asDuration = icon.asDuration

	local ready = time - icon.asStart > asDuration
	local inrange = icon.RangeCheck and IsSpellInRange(NameName, "target") or 1

	if ready and inrange == 1 then
		local color = icon:CrunchColor(true)
		--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
		icon:SetInfo(icon.Alpha, color, nil, 0, 0, NameName, nil, nil, nil, nil, nil)
	else
		local color = icon:CrunchColor(false, asDuration > 0 and asDuration, inrange)
		--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
		icon:SetInfo(icon.UnAlpha, color, nil, icon.asStart, asDuration, NameName, nil, nil, nil, nil, nil)
	end
end


local function SpellCooldown_OnEvent(icon, event, unit)
	if event ~= "UNIT_POWER_FREQUENT" or unit == "player" then
		icon.NextUpdateTime = 0
	end
end

local function SpellCooldown_OnUpdate(icon, time)

	local n, inrange, nomana, start, duration, isGCD = 1
	local IgnoreRunes, RangeCheck, ManaCheck, NameArray, NameNameArray = icon.IgnoreRunes, icon.RangeCheck, icon.ManaCheck, icon.NameArray, icon.NameNameArray

	for i = 1, #NameArray do
		local iName = NameArray[i]
		n = i
		start, duration = GetSpellCooldown(iName)
		if duration then
			if IgnoreRunes and duration == 10 and NameNameArray[i] ~= mindfreeze then
				start, duration = 0, 0
			end
			inrange, nomana = 1
			if RangeCheck then
				inrange = IsSpellInRange(NameNameArray[i], "target") or 1
			end
			if ManaCheck then
				_, nomana = IsUsableSpell(iName)
			end
			isGCD = (ClockGCD or duration ~= 0) and OnGCD(duration)
			if inrange == 1 and not nomana and (duration == 0 or isGCD) then --usable

				local color = icon:CrunchColor(true)
				--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
				icon:SetInfo(icon.Alpha, color, SpellTextures[iName], start, duration, iName, nil, nil, nil, nil, nil)
				return
			end
		end
	end

	local NameFirst = icon.NameFirst
	if n > 1 then -- if there is more than 1 spell that was checked then we need to get these again for the first spell, otherwise reuse the values obtained above since they are just for the first one
		start, duration = GetSpellCooldown(NameFirst)
		inrange, nomana = 1
		if RangeCheck then
			inrange = IsSpellInRange(icon.NameName, "target") or 1
		end
		if ManaCheck then
			_, nomana = IsUsableSpell(NameFirst)
		end
		if IgnoreRunes and duration == 10 and icon.NameName ~= mindfreeze then
			start, duration = 0, 0
		end
		isGCD = OnGCD(duration)
	end
	if duration then
		local color = icon:CrunchColor(false, duration, inrange, nomana)
		--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
		icon:SetInfo(icon.UnAlpha, color, icon.FirstTexture, start, duration, NameFirst, nil, nil, nil, nil, nil)
	else
		icon:SetInfo(0)
	end
end

function Type:Setup(icon, groupID, iconID)
	icon.NameFirst = TMW:GetSpellNames(icon, icon.Name, 1)
	icon.NameName = TMW:GetSpellNames(icon, icon.Name, 1, 1)
	icon.NameArray = TMW:GetSpellNames(icon, icon.Name)
	icon.NameNameArray = TMW:GetSpellNames(icon, icon.Name, nil, 1)
	local AS_Info = GetSpellInfo(AUTO_S)
	if AS_Info and icon.NameName == strlower(AS_Info) and not icon.NameArray[2] then	
		icon:SetTexture(TMW_GetSpellTexture(AUTO_S))
		icon.asStart = icon.asStart or 0
		icon.asDuration = icon.asDuration or 0
		if not icon.RangeCheck then
			icon:SetUpdateMethod("manual")
		end	
		icon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
		icon:SetScript("OnEvent", AutoShot_OnEvent)
		icon:SetScript("OnUpdate", AutoShot_OnUpdate)
	else
		icon.FirstTexture = SpellTextures[icon.NameFirst]
		icon:SetTexture(TMW:GetConfigIconTexture(icon))
		if not icon.RangeCheck then
			icon:RegisterEvent("SPELL_UPDATE_COOLDOWN")
			icon:RegisterEvent("SPELL_UPDATE_USABLE")
			if icon.IgnoreRunes then
				icon:RegisterEvent("RUNE_POWER_UPDATE")
				icon:RegisterEvent("RUNE_TYPE_UPDATE")
			end	
			if icon.ManaCheck then
				icon:RegisterEvent("UNIT_POWER_FREQUENT")
			end	
			icon:SetScript("OnEvent", SpellCooldown_OnEvent)
			icon:SetUpdateMethod("manual")
		end
		icon:SetScript("OnUpdate", SpellCooldown_OnUpdate)
	end
	icon:Update()
end

Type:Register()