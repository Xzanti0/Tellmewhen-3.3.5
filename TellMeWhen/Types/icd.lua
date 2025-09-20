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
local strlower =
	  strlower
local print = TMW.print
local SpellTextures = TMW.SpellTextures

local pGUID = UnitGUID("player") -- this isnt actually defined right here (it returns nil), so I will do it later too
local clientVersion = select(4, GetBuildInfo())
local strlowerCache = TMW.strlowerCache


local Type = TMW.Classes.IconType:New()
Type.type = "icd"
Type.name = L["ICONMENU_ICD"]
Type.desc = L["ICONMENU_ICD_DESC"]
Type.usePocketWatch = 1
Type.DurationSyntax = 1
Type.SUGType = "spellwithduration"
--[[
Type.TypeChecks = {
	--setting = "ICDType",
	--text = L["ICONMENU_ICDTYPE"],
	--{ value = "aura", 			text = L["ICONMENU_ICDBDE"], 				tooltipText = L["ICONMENU_ICDAURA_DESC"]},
	--{ value = "spellcast", 		text = L["ICONMENU_SPELLCAST_COMPLETE"], 	tooltipText = L["ICONMENU_SPELLCAST_COMPLETE_DESC"]},
	--{ value = "caststart", 		text = L["ICONMENU_SPELLCAST_START"], 		tooltipText = L["ICONMENU_SPELLCAST_START_DESC"]},
}
]]
Type.WhenChecks = {
	text = L["ICONMENU_SHOWWHEN"],
	{ value = "alpha", 			text = L["ICONMENU_USABLE"], 			colorCode = "|cFF00FF00" },
	{ value = "unalpha",		text = L["ICONMENU_UNUSABLE"], 			colorCode = "|cFFFF0000" },
	{ value = "always", 		text = L["ICONMENU_ALWAYS"] },
}
Type.RelevantSettings = {
	ICDType = true,
	DontRefresh = true,
	ShowCBar = true,
	CBarOffs = true,
	InvertBars = true,
	DurationMin = true,
	DurationMax = true,
	DurationMinEnabled = true,
	DurationMaxEnabled = true,
}

Type.EventDisabled_OnUnit = true
Type.EventDisabled_OnStack = true


function Type:Update()
	db = TMW.db
	pGUID = UnitGUID("player")
end

--COMBAT_LOG_EVENT_UNFILTERED(event, timestamp, suffix, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellID, spellName, spellSchool, buffOrDebuff)
local function ICD_OnEvent(icon, event, ...)
	local valid, spellID, spellName, _
	if event == "COMBAT_LOG_EVENT_UNFILTERED" then
		local suffix, sourceGUID -- make these local separate from spellID and spellName
		timestamp, suffix, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellID, spellName = ...
        if suffix == "SPELL_CAST_SUCCESS" or suffix == "SPELL_CAST_START" --[[or suffix == "UNIT_SPELLCAST_CHANNEL_START"]] then
		    valid = valid == "player"
		else
		    valid = sourceGUID == pGUID and (suffix == "SPELL_AURA_APPLIED" or suffix == "SPELL_AURA_REFRESH" or suffix == "SPELL_ENERGIZE" or suffix == "SPELL_AURA_APPLIED_DOSE" or suffix == "SPELL_SUMMON" or suffix == "SPELL_DAMAGE" or suffix == "SPELL_MISSED")
		end
	end

	if valid then
		local NameHash = icon.NameHash
		local Key = NameHash[spellID] or NameHash[strlowerCache[spellName]]
		if Key and not (icon.DontRefresh and (TMW.time - icon.ICDStartTime) < icon.Durations[Key]) then
			local t = SpellTextures[spellID] or SpellTextures[spellName]
			if t ~= icon.__tex then 
			    icon:SetTexture(t) 
			end

			icon.ICDStartTime = TMW.time
			icon.ICDDuration = icon.Durations[Key]
			icon.ICDID = spellID
			icon.NextUpdateTime = 0
		end
	end
end

local function ICD_OnUpdate(icon, time)

	local ICDStartTime = icon.ICDStartTime
	local ICDDuration = icon.ICDDuration

	--icon:SetInfo(alpha, color, texture, start, duration, spellChecked, reverse, count, countText, forceupdate, unit)
	if time - ICDStartTime > ICDDuration then
		local color = icon:CrunchColor(true)

		icon:SetInfo(icon.Alpha, color, nil, 0, 0, icon.ICDID, nil, nil, nil, nil, nil)
	else
		local color = icon:CrunchColor(false, ICDDuration)

		icon:SetInfo(icon.UnAlpha, color, nil, ICDStartTime, ICDDuration, icon.ICDID, nil, nil, nil, nil, nil)
	end
end
local naturesGrace = strlower(GetSpellInfo(16886))

function Type:Setup(icon, groupID, iconID)
	icon.ShowPBar = false
	icon.NameFirst = TMW:GetSpellNames(icon, icon.Name, 1)
	icon.NameHash = TMW:GetSpellNames(icon, icon.Name, nil, nil, 1)
	icon.NameNameArray = TMW:GetSpellNames(icon, icon.Name, nil, 1)
	icon.Durations = TMW:GetSpellDurations(icon, icon.Name)

	icon.ICDStartTime = icon.ICDStartTime or 0
	icon.ICDDuration = icon.ICDDuration or 0

	for _, name in pairs(icon.NameNameArray) do
		if name == naturesGrace then
			if icon:IsBeingEdited() == 1 then
				TMW.HELP:Show("ICON_ICD_NATURESGRACE", icon, TMW.IE.Main.Name, 0, 0, L["HELP_ICD_NATURESGRACE"])
			elseif TMW.HELP then
				TMW.HELP:Hide("ICON_ICD_NATURESGRACE")
			end
			break
		end
	end

	icon:SetTexture(TMW:GetConfigIconTexture(icon))

	--[[ keep these events per icon isntead of global like unitcooldowns are so that ...
	well i had a reason here but it didnt make sense when i came back and read it a while later. Just do it. I guess.]]
	--if icon.ICDType == "spellcast" then
	--	icon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	--elseif icon.ICDType == "caststart" then
	--	icon:RegisterEvent("UNIT_SPELLCAST_START")
	--	icon:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")
	--elseif icon.ICDType == "aura" then
		icon:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	--end
	
	icon:SetScript("OnEvent", ICD_OnEvent)

	icon:SetUpdateMethod("manual")
	
	icon:SetScript("OnUpdate", ICD_OnUpdate)
	icon:Update()
end

function Type:DragReceived(icon, t, data, subType)
	local ics = icon:GetSettings()

	if t ~= "spell" then
		return
	end

	--local _, spellID = GetSpellBookItemInfo(data, subType)
	local name, rank, icon, _, _, _, _, minRange,range = GetSpellInfo(data, subType)	
	--if not spellID then
	--	return
	--end
	if not name then
		return
	end
	
	--ics.Name = TMW:CleanString(ics.Name .. ";" .. spellID)
	ics.Name = TMW:CleanString(ics.Name .. ";" .. name)
	if TMW.CI.ic ~= icon then
		TMW.IE:Load(nil, icon)
		TMW.IE:TabClick(TMW.IE.MainTab)
	end
	return true -- signal success
end


Type:Register()