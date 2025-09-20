﻿--GAME_LOCALE = UnitName("player") == "Cybeloras" and "zhCN" --FOR TESTING
local L = LibStub("AceLocale-3.0"):NewLocale("TellMeWhen", "enUS", true)

-- WARNING! DO NOT EXPECT TO FIND ANY DECENT LEVEL OF ORGANIZATION IN THIS FILE, BECAUSE IT SIMPLY DOES NOT EXIST. MOVE ALONG.

L["!!Main Addon Description"] = "Provides visual, auditory, and textual notifications about cooldowns, buffs, and pretty much everything else." -- put it here so it doesnt get deleted on mass imports


L["CMD_OPTIONS"] = "options"
L["CMD_ENABLE"] = "enable"
L["CMD_DISABLE"] = "disable"
L["CMD_TOGGLE"] = "toggle"

L["ICON_TOOLTIP1"] = "TellMeWhen"
L["ICON_TOOLTIP2NEW"] = [[|cff7fffffRight-click|r for icon options.
|cff7fffffRight-click and drag|r to another icon to move/copy.
|cff7fffffDrag|r spells or items onto the icon for quick setup.]]
L["ICON_TOOLTIP2NEWSHORT"] = [[|cff7fffffRight-click|r for icon options.]]
L["LDB_TOOLTIP1"] = "|cff7fffffLeft-click|r to toggle the group locks"
L["LDB_TOOLTIP2"] = "|cff7fffffRight-click|r to show the main TMW options"
L["LOADERROR"] = "TellMeWhen_Options could not be loaded: "
L["LOADINGOPT"] = "Loading TellMeWhen_Options."
L["ENABLINGOPT"] = "TellMeWhen_Options is disabled. Enabling..."
L["CONFIGMODE"] = "TellMeWhen is in configuration mode. Icons will not be functional until you leave configuration mode. Type '/tellmewhen' or '/tmw' to toggle configuration mode on and off."
L["CONFIGMODE_EXIT"] = "Exit config mode"
L["CONFIGMODE_NEVERSHOW"] = "Don't show again"
L["IMPORTERROR_FAILEDPARSE"] = "There was an error processing the string. Ensure that you copied the entire string from the source."
L["ERROR_MISSINGFILE"] = "A complete restart of WoW is required to use TellMeWhen %s (%s was not found). Would you like to restart WoW now?"
L["ERROR_MISSINGFILE_NOREQ"] = "A complete restart of WoW may be required to fully use TellMeWhen %s (%s was not found). Would you like to restart WoW now?"
L["ERROR_ANCHORSELF"] = "%s was trying to anchor to itself, so TellMeWhen reset it's anchor to the center of the screen to prevent catastrophic failure."

L["LOCKED"] = "Locked"
L["RESIZE"] = "Resize"
L["RESIZE_TOOLTIP"] = "|cff7fffffClick-and-drag|r to resize"

L["CONDITIONORMETA_CHECKINGINVALID"] = "Warning! Group %d, Icon %d is checking an invalid icon (Group %d, Icon %d)"
L["CONDITIONORMETA_CHECKINGINVALID_GROUP"] = "Warning! Group %d is checking an invalid icon (Group %d, Icon %d)"
L["WARN_DRMISMATCH"] = [[Warning! You are checking the diminishing returns on spells from two different known categories.

All spells must be from the same diminishing returns category for the icon to function properly. The following categories and spells were detected:]]
L["FROMNEWERVERSION"] = "You are importing data that was created in a newer version of TellMeWhen than your version. Some settings might not work until you upgrade to the latest version."

-- -------------
-- ICONMENU
-- -------------

L["ICONMENU_CHOOSENAME"] = "Choose name(s)/ID(s) to check"
L["ICONMENU_CHOOSENAME_CNDTIC"] = "Choose name/ID/texture path"

L["ICONMENU_CHOOSENAME_WPNENCH"] = "Choose enchant(s) to check"
L["ICONMENU_CHOOSENAME_WPNENCH_DESC"] = [=[Enter the name(s) the weapon enchants you want this icon to monitor. You can add multiple entries by separating them with semicolons (;).

|cFFFF5959IMPORTANT|r: Enchant names must be entered exactly as they appear on the tooltip of your weapon while the enchant is active (e.g. "Flametongue", not "Flametongue Weapon").]=]

L["ICONMENU_CHOOSENAME_ITEMSLOT"] = "Choose name(s)/ID(s)/equipment slot(s) (%d-%d) to check"
L["ICONMENU_CHOOSENAME_ITEMSLOT_DESC"] = [=[Enter the Name, ID, or equipment slot of what you want this icon to monitor. You can add multiple entries (any combination of names, IDs, and equipment slots) by separating them with semicolons (;).

Equipment slots are numbered indexes that correspond to an equipped item. If you change the item equipped in that slot, the icon will reflect that.

You can |cff7fffffShift-click|r items and chat links or drag items to insert them into this editbox.]=]

L["ICONMENU_CHOOSENAME_MULTISTATE"] = "Choose name/ID to check"
L["ICONMENU_CHOOSENAME_ORBLANK"] = "OR leave blank to track everything"
L["ICONMENU_ENABLE"] = "Enabled"
L["CHOOSENAME_EQUIVS_TOOLTIP"] = [[You can select predefined sets of buffs, debuffs, spell casts, diminishing returns, or dispel types (Magic, Curse, etc.) from this menu to insert into the "%s" editbox.]]
L["CHOOSENAME_DIALOG_DDDEFAULT"] = "Predefined Spell Sets/Dispel Types"
L["CHOOSENAME_DIALOG"] = [=[Enter the Name or ID of what you want this icon to monitor. You can add multiple entries (any combination of names, IDs, and equivalencies) by separating them with semicolons (;).

You can |cff7fffffShift-click|r spells/items/chat links or drag spells/items to insert them into this editbox.]=]
L["CHOOSENAME_DIALOG_PETABILITIES"] = "|cFFFF5959PET ABILITIES|r must use SpellIDs."
L["CHOOSENAME_DIALOG_MSCD"] = [=[Enter the Name or ID of what the cooldown that you want this icon to monitor. Only the first spell/item will be checked - semicolon-delimited lists are not valid for this icon type.]=]
L["CHOOSENAME_DIALOG_CNDTIC"] = "Enter the Name or ID of the spell that has the texture that you want to use. You may also enter a texture path, such as 'Interface/Icons/spell_nature_healingtouch', or just 'spell_nature_healingtouch' if the path is 'Interface/Icons'"

L["CHOOSEICON"] = "Choose an icon to check"

L["ICONMENU_ALPHA"] = "Opacity"
L["CONDITIONALPHA"] = "Failed Conditions/Reqs."
L["CONDITIONALPHA_DESC"] = "This will be used when conditions fail, or if the duration or stack requirements are not met. This setting will be ignored if the icon is already hidden by the other two opacity settings."
L["CONDITIONALPHA_CONDITIONICON"] = "Failed Duration"
L["CONDITIONALPHA_CONDITIONICON_DESC"] = "This will be used when the duration requirements are not met. This setting will be ignored if the icon is already hidden by the other two opacity settings."
L["CONDITIONALPHA_METAICON"] = "Failed Conditions"
L["CONDITIONALPHA_METAICON_DESC"] = "This opacity will be used when conditions fail."

L["ICONMENU_TYPE"] = "Icon type"

L["ICONMENU_SPELLCOOLDOWN"] = "Spell Cooldown"
L["ICONMENU_SPELLCOOLDOWN_DESC"] = [[Tracks the cooldowns of spells from your spellbook.]]

L["ICONMENU_ITEMCOOLDOWN"] = "Item Cooldown"
L["ICONMENU_ITEMCOOLDOWN_DESC"] = [[Tracks the cooldowns of items with Use effects.]]

L["ICONMENU_BUFFDEBUFF"] = "Buff/Debuff"
L["ICONMENU_BUFFDEBUFF_DESC"] = [[Tracks buffs and/or debuffs.]]

L["ICONMENU_REACTIVE"] = "Reactive Ability"
L["ICONMENU_REACTIVE_DESC"] = [[Tracks the usability of reactive abilities.

Reactive abilities are things like %s, %s, and %s - abilities that are only usable when certain conditions are met.]]

L["ICONMENU_WPNENCHANT"] = "Weapon Enchant"
L["ICONMENU_WPNENCHANT_DESC"] = [=[Tracks temporary weapon enchants.]=]

L["ICONMENU_TOTEM"] = "Totem"
L["ICONMENU_TOTEM_DESC"] = [[Tracks your totems.]]
L["ICONMENU_GHOUL"] = "Non-MoG ghoul"
L["ICONMENU_GHOUL_DESC"] = [[Tracks your ghoul if you don't have the %s talent.]]

L["ICONMENU_MULTISTATECD"] = "Multi-state Ability"
L["ICONMENU_MULTISTATECD_DESC"] = [[Tracks an ability with multiple states.

This should be used when you want to track the multiple states and textures of a cooldown.]]


L["ICONMENU_UNITCOOLDOWN"] = "Unit Cooldown"
L["ICONMENU_UNITCOOLDOWN_DESC"] = [[Tracks the cooldowns of someone else.

%s can be tracked using %q as the name.]]

L["ICONMENU_ICD"] = "Internal Cooldown"
L["ICONMENU_ICD_DESC"] = [=[Tracks the cooldown of a proc or a similar effect.

|cFFFF5959IMPORTANT|r: See the tooltips under the %q settings for how to track each internal cooldown type.]=]

L["ICONMENU_CAST"] = "Spell Cast"
L["ICONMENU_CAST_DESC"] = [=[Tracks spell casts and channels.]=]

L["ICONMENU_CNDTIC"] = "Condition Icon"
L["ICONMENU_CNDTIC_DESC"] = [=[Tracks the state of conditions.]=]
L["ICONMENU_CNDTIC_ICONMENUTOOLTIP"] = "(%d |4Condition:Conditions;)"

L["ICONMENU_DR"] = "Diminishing Returns"
L["ICONMENU_DR_DESC"] = [=[Tracks the length and extent of diminishing returns.]=]

L["ICONMENU_LIGHTWELL"] = "Lightwell"
L["ICONMENU_LIGHTWELL_DESC"] = [=[Tracks the duration and charges of your lightwell.]=]

L["ICONMENU_RUNES"] = "Rune Cooldown"
L["ICONMENU_RUNES_DESC"] = [[Tracks rune cooldowns]]

L["ICONMENU_CLEU"] = "Combat Event"
L["ICONMENU_CLEU_DESC"] = [=[Tracks combat events.

Examples include spell reflects, misses, instant casts, and deaths, but the icon can track virtually anything.]=]

L["ICONMENU_META"] = "Meta Icon"
L["ICONMENU_META_DESC"] = [=[Combines multiple icons into one.

Icons that have %q checked will still be shown in a meta icon if they would otherwise be shown.]=]
L["ICONMENU_META_ICONMENUTOOLTIP"] = "(%d |4Icon:Icons;)"





L["ICONMENU_SHOWWHEN"] = "Show icon when"
L["ICONMENU_USABLE"] = "Usable"
L["ICONMENU_UNUSABLE"] = "Unusable"


L["ICONMENU_COUNTING"] = "Counting"
L["ICONMENU_COUNTING_DESC"] = "Show the icon when the icon's timer is active."
L["ICONMENU_NOTCOUNTING"] = "Not Counting"
L["ICONMENU_NOTCOUNTING_DESC"] = "Show the icon when the icon's timer is not active."


L["ICONMENU_BUFFTYPE"] = "Buff or Debuff"
L["ICONMENU_BUFF"] = "Buff"
L["ICONMENU_DEBUFF"] = "Debuff"
L["ICONMENU_BOTH"] = "Either"

L["ICONMENU_CHECKNEXT"] = "Check sub-metas"
L["ICONMENU_CHECKNEXT_DESC"] = [[Checking this box will cause this icon to check all the icons of any meta icons that it might be checking at any level.

In addition, this icon will not show any icons that have already been shown by another meta icon that updates before this one. Update order can be changed in the main and group options.]]

L["ICONMENU_DISPEL"] = "Dispel Type"
L["ICONMENU_CASTS"] = "Spell Casts"
L["ICONMENU_DRS"] = "Diminishing Returns"

L["ICONMENU_CUSTOMTEX"] = "Custom Texture"
L["ICONMENU_CUSTOMTEX_DESC"] = [[If you want to override the texture shown by this icon, enter the Name or ID of the spell that has the texture that you want to use.

You may also enter a texture path, such as 'Interface/Icons/spell_nature_healingtouch', or just 'spell_nature_healingtouch' if the path is 'Interface/Icons'

You can use your own textures too as long as they are placed in WoW's directory (set this field to the path to the texture relative to WoW's root folder), are .tga or .blp format, and have dimensions that are powers of 2 (32, 64, 128, etc)]]

L["ICONMENU_BINDTEXT_DESC"] = [[Any text in this editbox will be shown on the icon where the keybinding is normally displayed on an action bar. This does NOT set a keybinding to this TellMeWhen icon. It is simply a visual reminder that will be shown on the icon. The text can be configured in this group's settings.]]


L["SUG_SUBSTITUTION_t"] = "Target's Name"
L["SUG_SUBSTITUTION_t_DESC"] = "Name of the unit you are currently targeting"
L["SUG_SUBSTITUTION_f"] = "Focus's Name"
L["SUG_SUBSTITUTION_f_DESC"] = "Name of the unit you currently have focused"
L["SUG_SUBSTITUTION_m"] = "Mouseover's Name"
L["SUG_SUBSTITUTION_m_DESC"] = "Name of the unit you are currently mousing over"
L["SUG_SUBSTITUTION_p"] = "Previous Unit"
L["SUG_SUBSTITUTION_p_DESC"] = "Name of the unit that was checked before the current unit"
L["SUG_SUBSTITUTION_u"] = "Current Unit"
L["SUG_SUBSTITUTION_u_DESC"] = "Name of current unit being checked"
L["SUG_SUBSTITUTION_s"] = "Current Spell/Item/Etc"
L["SUG_SUBSTITUTION_s_DESC"] = "Name of the current spell/item/etc being checked"
L["SUG_SUBSTITUTION_d"] = "Duration Remaining"
L["SUG_SUBSTITUTION_d_DESC"] = "The duration remaining on the icon's timer"
L["SUG_SUBSTITUTION_k"] = "Current Stacks"
L["SUG_SUBSTITUTION_k_DESC"] = "Whatever is currently displayed as the icon's stack text"
L["SUG_SUBSTITUTION_o"] = "Source Unit"
L["SUG_SUBSTITUTION_o_DESC"] = "Whatever unit caused the action in the last combat event that the icon handled."
L["SUG_SUBSTITUTION_e"] = "Destination Unit"
L["SUG_SUBSTITUTION_e_DESC"] = "Whatever unit received the action in the last combat event that the icon handled."
L["SUG_SUBSTITUTION_x"] = "Extra Spell"
L["SUG_SUBSTITUTION_x_DESC"] = "Combat events like dispels, interrupts, and aura breaking have additional data about which spell caused the event. This will substitute in that spell from the last combat log event."

L["ICONMENU_COMPONENTICONS"] = "Component Icons & Groups"


L["ICONMENU_UNITSTOWATCH"] = "Unit(s) to watch"
L["ICONMENU_UNITSTOWATCH_ALL"] = "OR leave blank to track all"
L["ICONMENU_UNITS"] = "Units"
L["ICONMENU_UNIT_DESC"] = [[Enter the units to watch in this box. Units can be inserted from the dropdown at the right, or advanced users can type in their own units. Standard units (e.g. player) and/or friendly player names (e.g. %s) may be used as units. Separate multiple units with semicolons (;).

For more information about units, go to http://www.wowpedia.org/UnitId.]]
L["DROPDOWN_UNIT_DESC"] = [[You can select units from this menu to insert into the editbox. Units that end with '|cFFFF0000#|r' require that the '|cFFFF0000#|r' be replaced with a number corresponding to the appropriate unit, or a range of numbers. E.g. change 'raid|cFFFF0000#|r' to 'raid25' to track the 25th raid member, or change it to 'raid1-25' to track the first 25 raid members.

For more information about units, go to http://www.wowpedia.org/UnitId.]]
L["ICONMENU_ICONUNIT"] = "<Icon's Unit>"
L["ICONMENU_ICONUNIT_DESC"] = "Inserts the \"%u\" substitution, which will check whatever unit the icon is currently showing data for."
L["ICONMENU_FOCUS"] = "Focus"
L["ICONMENU_TARGETTARGET"] = "Target's target"
L["ICONMENU_FOCUSTARGET"] = "Focus' target"
L["ICONMENU_PETTARGET"] = "Pet's target"
L["ICONMENU_MOUSEOVER"] = "Mouseover"
L["ICONMENU_MOUSEOVERTARGET"] = "Mouseover's target"
L["ICONMENU_VEHICLE"] = "Vehicle"
L["MAINTANK"] = "Main Tank"
L["MAINASSIST"] = "Main Assist"

L["ICONMENU_PRESENT"] = "Present"
L["ICONMENU_ABSENT"] = "Absent"
L["ICONMENU_ALWAYS"] = "Always"

L["ICONMENU_CNDTSHOWWHEN"] = "Show when conditions"
L["ICONMENU_FAIL"] = "Fail"
L["ICONMENU_SUCCEED"] = "Succeed"

L["ICONMENU_CASTSHOWWHEN"] = "Show when a cast is"
L["ICONMENU_ONLYINTERRUPTIBLE"] = "Only Interruptible"
L["ICONMENU_ONLYINTERRUPTIBLE_DESC"] = "Check this box to only show spell casts that are interruptible"

L["ICONMENU_ONLYMINE"] = "Only check mine"
L["ICONMENU_ONLYMINE_DESC"] = "Check this option to cause this icon to only check for buffs/debuffs that you casted"
L["ICONMENU_SHOWTIMER"] = "Show timer"
L["ICONMENU_SHOWTIMER_DESC"] = "Check this option to display the standard cooldown sweep animation on the icon when applicable."
L["ICONMENU_SHOWTIMERTEXT"] = "Show timer text"
L["ICONMENU_SHOWTIMERTEXT_DESC"] = [[Check this option to display a textual display of the remaining cooldown/duration on the icon.

This is only applicable if OmniCC (or similar) is installed.]]

L["ICONMENU_OVERLAYBARHEADER"] = "Overlay Bars"
L["ICONMENU_SHOWPBARN"] = "Power bar"
L["ICONMENU_SHOWCBARN"] = "Timer bar"
L["ICONMENU_SHOWPBAR_DESC"] = "Shows a bar that is overlaid across the top half of the icon that will indicate the power still needed to cast the spell (or the power that you have when 'Fill bars up' is checked)"
L["ICONMENU_SHOWCBAR_DESC"] = "Shows a bar that is overlaid across the bottom half of the icon that will indicate the cooldown/duration remaining (or the time that has passed if 'Fill bars up' is checked)"
L["ICONMENU_INVERTBARS"] = "Fill bars up"
L["ICONMENU_INVERTBARS_DESC"] = "Check this option to cause the overlay bars to fill up to cover the whole width of the icon as power become sufficient and duration reaches zero."
L["ICONMENU_OFFS"] = "Offset"
L["ICONMENU_BAROFFS"] = [[This amount will be added to the bar in order to offset it.

Useful for custom indicators of when you should begin casting a spell to prevent a buff from falling off, or to indicate the power required to cast a spell and still have some left over for an interrupt.]]

L["ICONMENU_REACT"] = "Unit Reaction"
L["ICONMENU_FRIEND"] = "Friendly"
L["ICONMENU_HOSTILE"] = "Hostile"

L["ICONMENU_ICDTYPE"] = "Triggered by"
L["ICONMENU_SPELLCAST_COMPLETE"] = "Spell Cast Finish/Instant Cast"
L["ICONMENU_SPELLCAST_START"] = "Spell Cast Start"
L["ICONMENU_ICDBDE"] = "Buff/Debuff/Damage/Energize/Summon"
L["ICONMENU_SPELLCAST_COMPLETE_DESC"] = [[Select this option if the internal cooldown begins when you finish casting a spell, or when you cast an instant cast spell.

You need to enter the name/ID of the spell cast that triggers the internal cooldown into the %q editbox.]]
L["ICONMENU_SPELLCAST_START_DESC"] = [[Select this option if the internal cooldown begins when you start casting a spell.

You need to enter the name/ID of the spell cast that triggers the internal cooldown into the %q editbox.]]
L["ICONMENU_ICDAURA_DESC"] = [[Select this option if the internal cooldown begins when a buff or debuff is applied by yourself (includes procs), if the effect deals damage, or if the effect energizes you with mana/rage/etc.

You need to enter the name/ID of the buff/debuff that you gain when the internal cooldown is triggered, or the name of the energize effect, or the name of the spell that does damage (check your combat log), into the %q editbox.]]

L["ICONMENU_DRPRESENT"] = "Diminished"
L["ICONMENU_DRABSENT"] = "Undiminished"

L["TOTEMS"] = "Totems to check"
L["FIRE"] = "Fire"
L["EARTH"] = "Earth"
L["WATER"] = "Water"
L["AIR"] = "Air"
L["MUSHROOMS"] = "Mushrooms to check"
L["MUSHROOM"] = "Mushroom %d"
L["RUNES"] = "Rune(s) to check"

L["ICONMENU_SHOWTTTEXT"] = "Show variable text"
L["ICONMENU_SHOWTTTEXT_DESC"] = [[Check this to display the first variable associated with the aura that is being displayed. Practical uses include monitoring damage shield amounts.

Numbers are provided by Blizzard API and do not necessarily match numbers found on the tooltip of the aura. In most practical cases, though, the correct number will be shown.]]
L["ICONMENU_RANGECHECK"] = "Range check"
L["ICONMENU_RANGECHECK_DESC"] = "Check this to enable changing the color of the icon when you are out of range"
L["ICONMENU_MANACHECK"] = "Power check"
L["ICONMENU_MANACHECK_DESC"] = "Check this to enable changing the color of the icon when you are out of mana/rage/runic power/etc"
L["ICONMENU_COOLDOWNCHECK"] = "Cooldown check"
L["ICONMENU_COOLDOWNCHECK_DESC"] = "Check this to cause the icon to be considered unusable if it is on cooldown"
L["ICONMENU_IGNORERUNES"] = "Ignore Runes"
L["ICONMENU_IGNORERUNES_DESC"] = "Check this to treat the cooldown as usable if the only thing hindering it is a rune cooldown (or a global cooldown)."
L["ICONMENU_IGNORERUNES_DESC_DISABLED"] = "You must enable the \"Cooldown check\" setting to enable the \"Ignore Runes\" setting."
L["ICONMENU_DONTREFRESH"] = "Don't Refresh"
L["ICONMENU_DONTREFRESH_DESC"] = "Check to force the cooldown to not reset if the trigger occurs while it is still counting down. Useful for talents such as %s."

L["SORTBY"] = "Prioritize"
L["SORTBYNONE"] = "Normally"
L["SORTBYNONE_DESC"] = [[If checked, spells will be checked in and appear in the order that they were entered into the "%s" editbox. If this icon is a buff/debuff icon and the number of auras being checked exceeds the efficiency threshold setting, auras will be checked in the order that they would normally appear on the unit's unit frame.]]
L["SORTBYNONE_META_DESC"] = [[If checked, icons will be checked in the order that was configured above.]]
L["ICONMENU_SORTASC"] = "Low duration"
L["ICONMENU_SORTASC_DESC"] = "Check this box to prioritize and show spells with the lowest duration."
L["ICONMENU_SORTASC_META_DESC"] = "Check this box to prioritize and show icons with the lowest duration."
L["ICONMENU_SORTDESC"] = "High duration"
L["ICONMENU_SORTDESC_DESC"] = "Check this box to prioritize and show spells with the highest duration."
L["ICONMENU_SORTDESC_META_DESC"] = "Check this box to prioritize and show icons with the highest duration."

L["ICONMENU_MOVEHERE"] = "Move here"
L["ICONMENU_COPYHERE"] = "Copy here"
L["ICONMENU_SWAPWITH"] = "Swap with"
L["ICONMENU_ADDMETA"] = "Add to Meta Icon"
L["ICONMENU_APPENDCONDT"] = "Add as 'Icon Shown' condition"
L["ICONMENU_ANCHORTO"] = "Anchor to %s"
L["ICONMENU_ANCHORTO_DESC"] = [[Anchor %s to %s, so that whenever %s moves, %s will move with it.

Advanced anchor settings are available in the group options.]]
L["ICONMENU_ANCHORTO_UIPARENT"] = "Reset anchor"
L["ICONMENU_ANCHORTO_UIPARENT_DESC"] = [[Reset anchor of %s back to your screen (UIParent). It is currently anchored to %s.

Advanced anchor settings are available in the group options.]]
L["ICONMENU_SPLIT"] = "Split into new group"
L["ICONMENU_SPLIT_DESC"] = "Create a new group and move this icon into it. Many group settings will carry over to the new group."



L["GENERIC_NUMREQ_CHECK_DESC"] = "Check to enable and configue the %s"

L["STACKS"] = "Stacks"
L["STACKSPANEL_TITLE"] = "Stacks"
L["ICONMENU_STACKS_MIN_DESC"] = "Minimum number of stacks needed to show the icon"
L["ICONMENU_STACKS_MAX_DESC"] = "Maximum number of stacks allowed to show the icon"

L["DURATION"] = "Duration"
L["DURATIONPANEL_TITLE"] = "Duration"
L["ICONMENU_DURATION_MIN_DESC"] = "Minimum duration needed to show the icon"
L["ICONMENU_DURATION_MAX_DESC"] = "Maximum duration allowed to show the icon"

L["CONDITION_TIMERS_HEADER"] = "Timers"
L["CONDITION_TIMERS_SUCCEED_DESC"] = "Duration of a timer to set on the icon when conditions begin succeeding"
L["CONDITION_TIMERS_FAIL_DESC"] = "Duration of a timer to set on the icon when conditions begin failing"

L["METAPANEL_UP"] = "Move up"
L["METAPANEL_DOWN"] = "Move down"
L["METAPANEL_REMOVE"] = "Remove this icon"
L["METAPANEL_INSERT"] = "Insert an icon"

L["ICONALPHAPANEL_FAKEHIDDEN"] = "Always Hide"
L["ICONALPHAPANEL_FAKEHIDDEN_DESC"] = "Causes the icon to be hidden all the time, but whilst still enabled in order to allow the conditions of other icons to check this icon, for meta icons to include this icon, and for this icon's sounds and text outputs to be processed."
L["ICONMENU_WPNENCHANTTYPE"] = "Weapon slot to monitor"
L["ICONMENU_HIDEUNEQUIPPED"] = "Hide when slot lacks weapon"
L["ICONMENU_HIDEUNEQUIPPED_DESC"] = "Check this to force the icon to be hidden if the weapon spot being checked does not have a weapon in it, or if that slot has a shield or an off-hand frill."
L["ICONMENU_USEACTIVATIONOVERLAY"] = "Check activation border"
L["ICONMENU_USEACTIVATIONOVERLAY_DESC"] = "Check this to cause the presence of the sparkly yellow border around an action to force the icon to act as usable."
L["ICONMENU_ONLYEQPPD"] = "Only if equipped"
L["ICONMENU_ONLYEQPPD_DESC"] = "Check this to make the icon show only if the item is equipped."
L["ICONMENU_SHOWSTACKS"] = "Show stacks"
L["ICONMENU_SHOWSTACKS_DESC"] = "Check this to show the number of stacks of the item you have."
L["ICONMENU_STEALABLE"] = "Only stealable"
L["ICONMENU_STEALABLE_DESC"] = "Check this to only show buffs that can be spellstolen. Best used when checking for the 'Magic' dispel type"
L["ICONMENU_ONLYBAGS"] = "Only if in bags"
L["ICONMENU_ONLYBAGS_DESC"] = "Check this to make the icon show only if the item is in your bags (or equipped). If 'Only if equipped' is enabled, this is also forcibly enabled."
L["ICONMENU_ONLYSEEN"] = "Only if seen"
L["ICONMENU_ONLYSEEN_DESC"] = "Check this to make the icon only show a cooldown if the unit has cast it at least once. You should check this if you are checking spells from different Classes in one icon."
L["ICONMENU_CHECKREFRESH"] = "Listen for refreshes"
L["ICONMENU_CHECKREFRESH_DESC"] = [[Blizzard's combat log is very buggy when it comes to spell refreshes and fear (or other spells that break after a certain amount of damage). The combat log will say that the spell was refreshed when damage is dealt, even though it technically wasn't. Uncheck this box to disable listening to spell refreshes, but note that legitimate refreshes will be ignored as well.

It is reccommended to leave this checked if the DRs you are checking for don't break after a certain amount of damage.]]
L["ICONMENU_IGNORENOMANA"] = "Ignore lack of power"
L["ICONMENU_IGNORENOMANA_DESC"] = [[Check this to cause the ability to not be treated as unusable if there is only a lack of power to use it.

Useful for abilities such as %s or %s]]
L["ICONMENU_ONLYIFCOUNTING"] = "Only show if timer is active"
L["ICONMENU_ONLYIFCOUNTING_DESC"] = "Check this to make the icon show only if there is currently an active timer running on the icon with a duration greater than 0."


-- -------------
-- UI PANEL
-- -------------

L["UIPANEL_SUBTEXT2"] = "Icons work when locked. When unlocked, you can move/size icon groups and right click individual icons for more settings. You can also type /tellmewhen or /tmw to lock/unlock."
L["UIPANEL_MAINOPT"] = "Main Options"
L["UIPANEL_GROUPS"] = "Groups"
L["UIPANEL_GROUPS_DESC"] = "Settings for each group in this TellMeWhen profile."
--[=[L["UIPANEL_GROUPTYPE"] = "Group Display Method"
L["UIPANEL_GROUPTYPE_DESC"] = "Choose how you would like icons within this group to be displayed."
L["UIPANEL_GROUPTYPE_ICON"] = "Icon"
L["UIPANEL_GROUPTYPE_ICON_DESC"] = [[Displays the icons in the group using TellMeWhen's traditional icon display.

IMPORTANT: Changing the type of a group requires a UI reload in order for the changes to take effect.]]
L["UIPANEL_GROUPTYPE_BAR"] = "Bar"
L["UIPANEL_GROUPTYPE_BAR_DESC"] = [[Displays the icons in the group with progress bars attached to the icons.

IMPORTANT: Changing the type of a group requires a UI reload in order for the changes to take effect.]]]=]
L["UIPANEL_ICONS"] = "Icons"
L["UIPANEL_COLORS"] = "Colors"
L["UIPANEL_COLORS_DESC"] = "Settings that control the coloring/tinting of icons based on their attributes."
L["UIPANEL_ENABLEGROUP"] = "Enable Group"
L["UIPANEL_GROUPNAME"] = "Rename Group"
L["UIPANEL_ROWS"] = "Rows"
L["UIPANEL_COLUMNS"] = "Columns"
L["UIPANEL_ONLYINCOMBAT"] = "Only show in combat"
L["UIPANEL_SPEC"] = "Dual Spec"
L["UIPANEL_TREE"] = "Talent Tree"
L["UIPANEL_TREE_DESC"] = "Check to allow this group to show when this talent tree is active, or uncheck to cause it to hide when it is not active."
L["UIPANEL_PTSINTAL"] = "Points in talent"
L["UIPANEL_PRIMARYSPEC"] = "Primary Spec"
L["UIPANEL_SECONDARYSPEC"] = "Secondary Spec"
L["UIPANEL_GROUPRESET"] = "Reset Position"
L["UIPANEL_TOOLTIP_GROUPRESET"] = "Reset this group's position and scale"
L["UIPANEL_ALLRESET"] = "Reset all"
L["UIPANEL_TOOLTIP_ALLRESET"] = "Reset DATA and POSITION of all icons and groups, as well as any other settings."
L["UIPANEL_LOCKUNLOCK"] = "Lock/Unlock AddOn"
L["UIPANEL_BARTEXTURE"] = "Bar Texture"
L["UIPANEL_BARIGNOREGCD"] = "Bars Ignore GCD"
L["UIPANEL_BARIGNOREGCD_DESC"] = "If checked, cooldown bars will not change values if the cooldown triggered is a global cooldown"
L["UIPANEL_CLOCKIGNOREGCD"] = "Timers Ignore GCD"
L["UIPANEL_CLOCKIGNOREGCD_DESC"] = "If checked, timers and the cooldown clock will not trigger from a global cooldown"
L["UIPANEL_UPDATEINTERVAL"] = "Update Interval"
L["UIPANEL_TOOLTIP_UPDATEINTERVAL"] = "Sets how often (in seconds) icons are checked for show/hide, alpha, conditions, etc. Zero is as fast as possible. Lower values can have a significant impact on framerate for low-end computers"
L["UIPANEL_EFFTHRESHOLD"] = "Buff Efficiency Threshold"
L["UIPANEL_EFFTHRESHOLD_DESC"] = "Sets the minimum number of buffs/debuffs to switch to a more efficient mode of checking them when there are a high number. Note that once the number of auras being checked exceeds this number, older auras will be prioritized instead of priority based on the order in which they were entered."
L["UIPANEL_ICONSPACING"] = "Icon Spacing"
L["UIPANEL_ICONSPACING_DESC"] = "Distance that icons within a group are away from each other"
L["UIPANEL_ADDGROUP"] = "+ Add Another Group +"
L["UIPANEL_ADDGROUP_DESC"] = "The new group will be assigned the next available groupID"
L["UIPANEL_DELGROUP"] = "Delete this Group"
L["UIPANEL_DELGROUP_DESC"] = [[Any groups after this group will have their ID shifted up one, and any icons that are checking icons in groups that will be shifted will have their settings automatically updated.

Hold |cff7fffffCtrl|r to bypass confirmation.]]
L["UIPANEL_TOOLTIP_ENABLEGROUP"] = "Show and enable this group"
L["UIPANEL_TOOLTIP_ROWS"] = "Set the number of rows in this group"
L["UIPANEL_TOOLTIP_COLUMNS"] = "Set the number of columns in this group"
L["UIPANEL_TOOLTIP_ONLYINCOMBAT"] = "Check to cause this group to only be shown in combat"
L["UIPANEL_TOOLTIP_PRIMARYSPEC"] = "Check to show this group while your primary spec is active"
L["UIPANEL_TOOLTIP_SECONDARYSPEC"] = "Check to show this group while your secondary spec is active"
L["UIPANEL_DRAWEDGE"] = "Highlight timer edge"
L["UIPANEL_DRAWEDGE_DESC"] = "Highlights the edge of the cooldown timer (clock animation) to increase visibility"
L["UIPANEL_WARNINVALIDS"] = "Warn about invalid icons"


L["UIPANEL_GROUPSORT"] = "Icon Sorting"
L["UIPANEL_GROUPSORT_DESC"] = "Contains settings for sorting an positioning icons within a group based on their atributes."
L["UIPANEL_GROUPSORT_METHODNAME"] = "Icon Sort Priority %d"
L["UIPANEL_GROUPSORT_METHODNAME_DESC"] = "This will be used as the number %d priority when sorting icons to be positioned within a group."
L["UIPANEL_GROUPSORT_SORTASCENDING"] = "Low"
L["UIPANEL_GROUPSORT_SORTASCENDING_DESC"] = "Check to sort this attribute from low to high values."
L["UIPANEL_GROUPSORT_SORTDESCENDING"] = "High"
L["UIPANEL_GROUPSORT_SORTDESCENDING_DESC"] = "Check to sort this attribute from high to low values."

L["UIPANEL_GROUPSORT_METHODDISABLED_DESC"] = "This sort method is diabled because a method above it is sorting by Icon ID, so this method will never be reached and used in sorting."

L["UIPANEL_GROUPSORT_id"] = "Icon ID"
L["UIPANEL_GROUPSORT_id_DESC"] = "Sorts the group by the ID numbers of its icons."
L["UIPANEL_GROUPSORT_duration"] = "Duration"
L["UIPANEL_GROUPSORT_duration_DESC"] = "Sorts the group by the duration remaining on its icons."
L["UIPANEL_GROUPSORT_alpha"] = "Opacity (Ignore %s)"
L["UIPANEL_GROUPSORT_alpha_DESC"] = "Sorts the group by the opacity of its icons, ignoring whether or not icons are hidden by the %s setting."
L["UIPANEL_GROUPSORT_visiblealpha"] = "Opacity (Respect %s)"
L["UIPANEL_GROUPSORT_visiblealpha_DESC"] = "Sorts the group by the opacity of its icons, using whatever opacity the icon is actually visible at."
L["UIPANEL_GROUPSORT_shown"] = "Shown (Ignore %s)"
L["UIPANEL_GROUPSORT_shown_DESC"] = "Sorts the group by whether or not an icon is shown, ignoring whether or not icons are hidden by the %s setting."
L["UIPANEL_GROUPSORT_visibleshown"] = "Shown (Respect %s)"
L["UIPANEL_GROUPSORT_visibleshown_DESC"] = "Sorts the group by whether or not an icon is visible to you."
L["UIPANEL_GROUPSORT_stacks"] = "Stacks"
L["UIPANEL_GROUPSORT_stacks_DESC"] = "Sorts the group by the stacks of each icon."



L["COLORNAMES"] = "Class Colored Names"
L["COLORNAMES_DESC"] = "Check in order to attempt to color the names of units in text displays (Binding Text and Text Event Output)."
L["ALWAYSSUBLINKS"] = "Always Substitute Links"
L["ALWAYSSUBLINKS_DESC"] = "By default, spell/item links will only be substituted into text event outputs. Check this setting to cause links to be substituted everywhere, including icon bind/label text."


L["COLOR_DEFAULT"] = "*Global Colors*"
L["COLOR_RESET_DESC"] = "Reset this setting to default values"
L["COLOR_MSQ_COLOR"] = "Color Masque border"
L["COLOR_MSQ_COLOR_DESC"] = "Checking this will cause the border of a Masque skin (if the skin you are using has a border) to be colored."
L["COLOR_MSQ_ONLY"] = "Only color Masque border"
L["COLOR_MSQ_ONLY_DESC"] = "Checking this will cause ONLY the border of a Masque skin (if the skin you are using has a border) to colored. Icons will NOT be colored"
L["COLOR_OVERRIDEDEFAULT"] = "Use"
L["COLOR_OVERRIDEDEFAULT_DESC"] = "Check this to override the *Global Colors* setting and use this setting instead."
L["COLOR_HEADER_DEFAULT"] = [[These colors will be used for any icon type that does not override them in the type's color settings.

Solid white causes no change in the texture. Solid black will cause the texture to be sold black. Any gray or color in between will tint the icon.]]
L["COLOR_HEADER"] = [[These colors will be used for %s icons if their %q settings are checked.

Solid white causes no change in the texture. Solid black will cause the texture to be sold black. Any gray or color in between will tint the icon.]]
L["COLOR_DESATURATE"] = "Grey"
L["COLOR_DESATURATE_DESC"] = "Check to desaturate the icon when this color is used, removing all color and making the icon grayscale."
L["COLOR_COLOR"] = "Color"


L["COLOR_CBC"] 		 = "Cooldown Bar - Complete"	-- cooldown bar complete
L["COLOR_CBC_DESC"]  = "Color of the cooldown/duration overlay bar when the cooldown/duration is complete"	-- cooldown bar complete
L["COLOR_CBS"] 		 = "Cooldown Bar - Start"	-- cooldown bar start
L["COLOR_CBS_DESC"]  = "Color of the cooldown/duration overlay bar when the cooldown/duration has just begun"	-- cooldown bar start

L["COLOR_OOR"]		 = "Out of Range"	-- out of range
L["COLOR_OOR_DESC"]	 = "Color of the icon when you are not in range to use an ability."	-- out of range
L["COLOR_OOM"]		 = "Out of Mana"	-- out of mana
L["COLOR_OOM_DESC"]	 = "Color of the icon when you lack the power to use an ability."	-- out of mana
L["COLOR_OORM"] 	 = "Out of Range & Mana"	-- out of range and mana
L["COLOR_OORM_DESC"] = "Color of the icon when you lack the power and are not in range to use an ability."	-- out of range and mana

L["COLOR_CTA"]		 = "Counting, Timer Shown, Always Shown"	-- counting with timer always
L["COLOR_CTA_DESC"]	 = [[Color of the icon when:

The timer is active (unusable/present),
%q is enabled,
%q is set to %q]]

L["COLOR_COA"]		 = "Counting, Timer Hidden, Always Shown"	-- counting withOUT timer always
L["COLOR_COA_DESC"]	 = [[Color of the icon when:

The timer is active (unusable/present),
%q is disabled,
%q is set to %q]]

L["COLOR_CTS"]		 = "Counting, Timer Shown, Sometimes Shown"	-- counting with timer somtimes
L["COLOR_CTS_DESC"]	 = [[Color of the icon when:

The timer is active (unusable/present),
%q is enabled,
%q is not set to %q]]

L["COLOR_COS"]		 = "Counting, Timer Hidden, Sometimes Shown"	-- counting withOUT timer somtimes
L["COLOR_COS_DESC"]	 = [[Color of the icon when:

The timer is active (unusable/present),
%q is disabled,
%q is not set to %q]]

L["COLOR_NA"]		 = "Finished, Always Shown"	-- not counting always
L["COLOR_NA_DESC"]	 = [[Color of the icon when:

The timer is finished (usable/absent),
%q is set to %q]]

L["COLOR_NS"]		 = "Finished, Sometimes Shown"	-- not counting somtimes
L["COLOR_NS_DESC"]	 = [[Color of the icon when:

The timer is finished (usable/absent),
%q is not set to %q]]


L["FONTCOLOR"] = "Font Color"
L["FONTSIZE"] = "Font Size"
L["DEFAULT"] = "Default"
L["NONE"] = "None of these"
L["CASTERFORM"] = "Caster Form"
L["ALPHA"] = "Alpha"

L["RESET_ICON"] = "Reset"
L["UNDO_ICON"] = "Undo"
L["UNDO_ICON_DESC"] = "Undo the last change made to this icon's settings."
L["REDO_ICON"] = "Redo"
L["REDO_ICON_DESC"] = "Redo the last change made to this icon's settings."
L["UNDOREDO_ICON_NOBIND"] = "You can set a keybinding for this action in the Blizzard keybinding interface."
L["BACK_IE"] = "Back"
L["BACK_IE_DESC"] = "Load the last icon that was edited (%s |T%s:0|t)."
L["FORWARDS_IE"] = "Forwards"
L["FORWARDS_IE_DESC"] = "Load the next icon that was edited (%s |T%s:0|t)."

L["UIPANEL_MAIN_DESC"] = "Contains the main settings for the group."
L["UIPANEL_FONT_Count"] = "Stack Text" -- proper case endings intended
L["UIPANEL_FONT_Count_DESC"] = "Contains settings that control the display of the stack text on icons."
L["UIPANEL_FONT_Bind"] = "Binding/Label Text"
L["UIPANEL_FONT_Bind_DESC"] = "Contains settings that control the display of the binding/label text on icons."
L["UIPANEL_FONTFACE"] = "Font Face"
L["UIPANEL_FONT_DESC"] = "Chose the font to be used by the stack text on icons."
L["UIPANEL_FONT_SIZE"] = "Font Size"
L["UIPANEL_FONT_SIZE_DESC"] = "Change the size of the font used for stack text on icons. If Masque is used and the set skin has a font size defined, then this value will be ignored."
L["UIPANEL_FONT_OUTLINE"] = "Font Outline"
L["UIPANEL_FONT_OUTLINE_DESC"] = "Sets the outline style for the stack text on icons."
L["OUTLINE_NO"] = "No Outline"
L["OUTLINE_THIN"] = "Thin Outline"
L["OUTLINE_THICK"] = "Thick Outline"
L["OUTLINE_MONOCHORME"] = "Monochrome"
L["UIPANEL_FONT_OVERRIDELBF"] = "Override Masque position"
L["UIPANEL_FONT_OVERRIDELBF_DESC"] = [[Check this to override the position of the stack text that is defined in your Masque skin.

A UI Reload or a change of skin is required to restore the skin settings to the text should you choose to disable this option after enabling it.]]
L["UIPANEL_FONT_CONSTRAINWIDTH"] = "Constrain Width"
L["UIPANEL_FONT_CONSTRAINWIDTH_DESC"] = [[Check this to force the text to fit within the width of the icon if positioned appropriately.
Uncheck to allow text to extend wider than the icon.]]
L["UIPANEL_FONT_XOFFS"] = "X Offset"
L["UIPANEL_FONT_YOFFS"] = "Y Offset"
L["UIPANEL_POSITION"] = "Position"
L["UIPANEL_POSITION_DESC"] = "Contains settings that control the position of the group on your screen."
L["UIPANEL_POINT"] = "Point"
L["UIPANEL_RELATIVETO"] = "Relative To"
L["UIPANEL_RELATIVETO_DESC"] = "Type '/framestack' to toggle a tooltip that contains a list of all the frames that your mouse is over, and their names, to put into this dialog."
L["UIPANEL_RELATIVEPOINT"] = "Relative Point"
L["CHECKORDER"] = "Update order"
L["CHECKORDER_ICONDESC"] = "Sets the order in which icons within this group will be updated. This really only matters if you are using the feature of meta icons to check sub-metas."
L["CHECKORDER_GROUPDESC"] = "Sets the order in which groups will be updated. This really only matters if you are using the feature of meta icons to check sub-metas."
L["ASCENDING"] = "Ascending"
L["DESCENDING"] = "Descending"
L["UIPANEL_SCALE"] = "Scale"
L["UIPANEL_LEVEL"] = "Frame Level"
L["UIPANEL_STRATA"] = "Frame Strata"
L["UIPANEL_LOCK"] = "Lock Position"
L["UIPANEL_LOCK_DESC"] = "Lock this group, preventing movement or sizing by dragging the group or the scale tab."


-- -------------
-- CONDITION PANEL
-- -------------

L["ICONTOCHECK"] = "Icon to check"
L["MOON"] = "Moon"
L["SUN"] = "Sun"
L["TRUE"] = "True"
L["FALSE"] = "False"
L["CONDITIONPANEL_DEFAULT"] = "Choose a type..."
L["CONDITIONPANEL_TYPE"] = "Type"
L["CONDITIONPANEL_UNIT"] = "Unit"
L["CONDITIONPANEL_UNIT_DESC"] = "Enter the unit to watch in this box. The unit can be inserted from the dropdown at the right, or advanced users can type in their own unit. Standard units (e.g. player) and/or friendly player names (e.g. %s) may be used as units."
L["CONDITIONPANEL_UNITDROPDOWN_DESC"] = [[You can select a unit from this menu to insert into the editbox. Units that end with '|cFFFF0000#|r' require that the '|cFFFF0000#|r' be replaced with a number corresponding to the appropriate unit. E.g. change 'raid|cFFFF0000#|r' to 'raid25' to track the 25th raid member.

NOTE: Conditions only accept one unit.]]
L["CONDITIONPANEL_OPERATOR"] = "Operator"
L["CONDITIONPANEL_VALUEN"] = "Value"
L["CONDITIONPANEL_AND"] = "And"
L["CONDITIONPANEL_OR"] = "Or"
L["CONDITIONPANEL_ANDOR"] = "And / Or"
L["CONDITIONPANEL_ANDOR_DESC"] = "|cff7fffffClick|r to toggle between logical operators AND and OR"
L["CONDITIONPANEL_POWER"] = "Primary Resource"
L["CONDITIONPANEL_ABSOLUTE"] = "Absolute"
L["CONDITIONPANEL_MAX"] = "Max"
L["CONDITIONPANEL_COMBO"] = "Combo Points"
L["CONDITIONPANEL_ALTPOWER"] = "Alt. Power"
L["CONDITIONPANEL_ALTPOWER_DESC"] = [[This is the encounter specific power used in several encounters in Cataclysm, including Cho'gall and Atramedes]]
L["CONDITIONPANEL_EXISTS"] = "Unit Exists"
L["CONDITIONPANEL_ALIVE"] = "Unit is Alive"
L["CONDITIONPANEL_ALIVE_DESC"] = "The condition will pass if the unit specified is alive."
L["CONDITIONPANEL_COMBAT"] = "Unit in Combat"
L["CONDITIONPANEL_VEHICLE"] = "Unit Controls Vehicle"
L["CONDITIONPANEL_POWER_DESC"] = [=[Will check for energy if the unit is a druid in cat form, rage if the unit is a warrior, etc.]=]
L["ECLIPSE_DIRECTION"] = "Eclipse Direction"
L["CONDITIONPANEL_ECLIPSE_DESC"] = [=[Eclipse has a range of -100 (a lunar eclipse) to 100 (a solar eclipse).  Input -80 if you want the icon to work with a value of 80 lunar power.]=]
L["CONDITIONPANEL_ICON"] = "Icon Shown"
L["CONDITIONPANEL_ICON_SHOWN"] = "Shown"
L["CONDITIONPANEL_ICON_HIDDEN"] = "Hidden"
L["CONDITIONPANEL_ICON_DESC"] = [=[The condition checks whether the icon specified is shown or hidden.

If you don't want to display the icons that are being checked, check %q in the icon editor of the icon being checked.

The group of the icon being checked must be shown in order to check the icon, even if the condition is set to false.]=]
L["CONDITIONPANEL_RUNES_DESC"] = [=[Use this condition type to only show the icon when the selected runes are available.

Each rune is a check button. A check mark will require that the rune be usable, an 'X' will require that the rune be unusable, no mark will ignore the rune.

The runes in the second row are the death rune version of each rune above.]=]
L["CONDITIONPANEL_PVPFLAG"] = "Unit is PvP Flagged"
L["CONDITIONPANEL_LEVEL"] = "Unit Level"
L["CONDITIONPANEL_CLASS"] = "Unit Class"
L["CONDITIONPANEL_CLASSIFICATION"] = "Unit Classification"
L["CONDITIONPANEL_ROLE"] = "Unit Role"
L["CONDITIONPANEL_RAIDICON"] = "Unit Raid Icon"
L["CONDITIONPANEL_UNITISUNIT"] = "Unit is Unit"
L["CONDITIONPANEL_UNITISUNIT_DESC"] = "This condition will pass if the unit in the first editbox and the second editbox are the same entity."
L["CONDITIONPANEL_UNITISUNIT_EBDESC"] = "Enter a unit in this editbox to be compared with the first unit."
L["UNITTWO"] = "Second Unit"
L["CONDITIONPANEL_THREAT_SCALED"] = "Unit Threat - Scaled"
L["CONDITIONPANEL_THREAT_SCALED_DESC"] = [[This condition checks your scaled threat percentage on a unit.

100% indicates that you are tanking the unit.]]
L["CONDITIONPANEL_THREAT_RAW"] = "Unit Threat - Raw"
L["CONDITIONPANEL_THREAT_RAW_DESC"] = [[This condition checks your raw threat percentage on a unit.

Players in melee range pull aggro at 110%
Players at range pull aggro at 130%
Players with aggro have a raw threat percentage of 255%]]
L["CONDITIONPANEL_CASTTOMATCH"] = "Spell to Match"
L["CONDITIONPANEL_CASTTOMATCH_DESC"] = [[Enter a spell name here to make the condition only pass if the spell cast matches it exactly.

You can leave this blank to check for any and all spell casts/channels]]
L["CONDITIONPANEL_INTERRUPTIBLE"] = "Interruptible"
L["CONDITIONPANEL_NAME"] = "Unit Name"
L["CONDITIONPANEL_NAMETOMATCH"] = "Name to Match"
L["CONDITIONPANEL_NAMETOOLTIP"] = "You can enter multiple names to be matched by separating each one with a semicolon (;). The condition will pass if any names are matched."
L["CONDITIONPANEL_INSTANCETYPE"] = "Instance Type"
L["CONDITIONPANEL_GROUPTYPE"] = "Group Type"
L["CONDITIONPANEL_SWIMMING"] = "Swimming"
L["CONDITIONPANEL_RESTING"] = "Resting"
L["CONDITIONPANEL_MANAUSABLE"] = "Spell Usable (Mana/Energy/etc.)"
L["CONDITIONPANEL_SPELLRANGE"] = "Spell in range of unit"
L["CONDITIONPANEL_ITEMRANGE"] = "Item in range of unit"
L["CONDITIONPANEL_AUTOCAST"] = "Spell autocasting"
L["CONDITIONPANEL_PETMODE"] = "Pet attack mode"
L["CONDITIONPANEL_PETTREE"] = "Pet talent tree"
L["CONDITIONPANEL_TRACKING"] = "Tracking active"
L["ONLYCHECKMINE"] = "Only Check Mine"
L["ONLYCHECKMINE_DESC"] = "Check this to cause this condition to only check for buffs/debuffs that you casted"
L["LUACONDITION"] = "Lua (Advanced)"
L["LUACONDITION_DESC"] = [[This condition type allows you to evaluate Lua code to determine the state of a condition.

The input is not an 'if .. then' statement, nor is it a function closure. It is a regular statement to be evaluated, e.g. 'a and b or c'.  If complex functionality is required, use a call to a function, e.g. 'CheckStuff()', that is defined externally.

If more help is needed (but not help about how to write Lua code), open a ticket on CurseForge. For help on how to write Lua, go to the internet.]]
L["MACROCONDITION"] = "Macro Conditional"
L["MACROCONDITION_DESC"] = [[This condition will evaluate a macro conditional, and will pass if it passes. All macro conditionals can be prepended with "no" to reverse what they check.

Examples:
	"[nomodifier:alt]" - not holding down the alt key.
	"[@target, help][mod:ctrl]" - target is friendly OR holding down ctrl
	"[@focus, harm, nomod:shift]" - focus is hostile AND not holding down shift

For more help, go to http://www.wowpedia.org/Making_a_macro]]
L["MACROCONDITION_EB_DESC"] = "If using a single condition, opening and closing brackets are optional. Brackets are required if using multiple conditionals."
L["NOTINRANGE"] = "Not in range"
L["INRANGE"] = "In range"
L["STANCE"] = "Stance"
L["AURA"] = "Aura"
L["ASPECT"] = "Aspect"
L["SHAPESHIFT"] = "Shapeshift"
L["PRESENCE"] = "Presence"
L["SPEED"] = "Unit Speed"
L["SPEED_DESC"] = [[This refers to the current movement speed of the unit. If the unit is not moving, it is zero.  If you wish to track the maximum run speed of the unit, use the 'Unit Run Speed' condition instead.]]
L["RUNSPEED"] = "Unit Run Speed"
L["SPELLTOCHECK"] = "Spell to Check"
L["SPELLTOCOMP1"] = "First Spell to Compare"
L["SPELLTOCOMP2"] = "Second Spell to Compare"
L["ITEMTOCHECK"] = "Item to Check"
L["ITEMTOCOMP1"] = "First Item to Compare"
L["ITEMTOCOMP2"] = "Second Item to Compare"
L["BUFFTOCHECK"] = "Buff to Check"
L["BUFFTOCOMP1"] = "First Buff to Compare"
L["BUFFTOCOMP2"] = "Second Buff to Compare"
L["DEBUFFTOCHECK"] = "Debuff to Check"
L["DEBUFFTOCOMP1"] = "First Debuff to Compare"
L["DEBUFFTOCOMP2"] = "Second Debuff to Compare"
L["CODETOEXE"] = "Code to Execute"
L["MACROTOEVAL"] = "Macro Conditional(s) to Evaluate"
L["COMPARISON"] = "Comparison"

L["PET_TYPE_CUNNING"] = "Cunning"
L["PET_TYPE_TENACITY"] = "Tenacity"
L["PET_TYPE_FEROCITY"] = "Ferocity"

L["MELEEHASTE"] = "Melee Haste"
L["MELEECRIT"] = "Melee Crit"
L["RANGEDHASTE"] = "Ranged Haste"
L["RANGEDCRIT"] = "Ranged Crit"
L["SPELLHASTE"] = "Spell Haste"
L["SPELLCRIT"] = "Spell Crit"
L["ITEMINBAGS"] = "Item count (includes charges)"
L["ITEMEQUIPPED"] = "Item is equipped"
L["ITEMCOOLDOWN"] = "Item cooldown"
L["ITEMCOOLDOWN"] = "Item cooldown"
L["SPELLCOOLDOWN"] = "Spell cooldown"
L["SPELLREACTIVITY"] = "Spell reactivity"
L["MP5"] = "%d MP5"
L["REACTIVECNDT_DESC"] = "This condition only checks the reactive state of the ability, not the cooldown of it."
L["BUFFCNDT_DESC"] = "Only the first spell will be checked, all others will be ignored."
L["CNDT_ONLYFIRST"] = "Only the first spell/item will be checked - semicolon-delimited lists are not valid for this condition type."
L["GCD_ACTIVE"] = "GCD active"

L["CNDTCAT_FREQUENTLYUSED"] = "Frequently Used"
L["CNDTCAT_SPELLSABILITIES"] = "Spells/Items"
L["CNDTCAT_BUFFSDEBUFFS"] = "Buffs/Debuffs"
L["CNDTCAT_ATTRIBUTES_UNIT"] = "Unit Attributes"
L["CNDTCAT_ATTRIBUTES_PLAYER"] = "Player Attributes"
L["CNDTCAT_STATS"] = "Combat Stats"
L["CNDTCAT_RESOURCES"] = "Resources"
L["CNDTCAT_CURRENCIES"] = "Currencies"

L["CONDITIONPANEL_MOUNTED"] = "Mounted"
L["CONDITIONPANEL_EQUALS"] = "Equals"
L["CONDITIONPANEL_NOTEQUAL"] = "Not Equal to"
L["CONDITIONPANEL_LESS"] = "Less Than"
L["CONDITIONPANEL_LESSEQUAL"] = "Less Than/Equal to"
L["CONDITIONPANEL_GREATER"] = "Greater Than"
L["CONDITIONPANEL_GREATEREQUAL"] = "Greater Than/Equal to"
L["CONDITIONPANEL_REMOVE"] = "Remove this condition"
L["CONDITIONPANEL_ADD"] = "Add a condition"
L["PARENTHESIS_WARNING1"] = [[The number of opening and closing parentheses do not match!

%d more %s |4parenthesis:parentheses; |4is:are; needed.]]
L["PARENTHESIS_WARNING2"] = [[Some closing parentheses are missing openers!

%d more opening |4parenthesis:parentheses; |4is:are; needed.]]
L["PARENTHESIS_TYPE_("] = "opening"
L["PARENTHESIS_TYPE_)"] = "closing"
L["NUMAURAS"] = "Number of"
L["ACTIVE"] = "%d Active"
L["NUMAURAS_DESC"] = [[This condition checks the number of an aura active - not to be confused with the number of stacks of an aura.  This is for checking things like if you have both weapon enchant procs active at the same time.  Use sparingly, as the process used to count the numbers is a bit CPU intensive.]]
L["TOOLTIPSCAN"] = "Aura Variable"
L["TOOLTIPSCAN_DESC"] = "This condition type will allow you to check the first variable associated with an aura. Numbers are provided by Blizzard API and do not necessarily match numbers found on the tooltip of the aura. There is also no guarantee that a number will be obtained for an aura. In most practical cases, though, the correct number will be checked."



-- ----------
-- STUFF THAT I GOT SICK OF ADDING PREFIXES TOO AND PUTTING IN THE RIGHT PLACE
-- ----------

L["GROUPICON"] = "Group: %s, Icon: %s"
L["ICONGROUP"] = "Icon: %s (Group: %s)"
L["fGROUP"] = "Group: %s"
L["fICON"] = "Icon: %s"
L["ICON"] = "Icon"
L["DISABLED"] = "Disabled"
L["COPYPOSSCALE"] = "Copy position/scale"
L["COPYGROUP"] = "Copy Group"
L["OVERWRITEGROUP"] = "|cFFFF5959Overwrite|r Group: %s"
L["MAKENEWGROUP"] = "|cff59ff59Create|r New Group"


L["GROUPADDONSETTINGS"] = "Group Settings"
L["CONDITIONS"] = "Conditions"
L["GROUPCONDITIONS"] = "Group Conditions"
L["MAIN"] = "Main"
L["UNNAMED"] = "((Unnamed))"


L["SENDSUCCESSFUL"] = "Sent successfully"
L["MESSAGERECIEVE"] = "%s has sent you some TellMeWhen data! You can import this data into TellMeWhen using the %q dropdown in the icon editor."
L["MESSAGERECIEVE_SHORT"] = "%s has sent you some TellMeWhen data!"
L["ALLOWCOMM"] = "Allow data importing"
L["ALLOWVERSIONWARN"] = "Notify of new version"
L["NEWVERSION"] = "A new version of TellMeWhen is available: %s"
L["PLAYER_DESC"] = "(You)"


L["IMPORT_EXPORT"] = "Import/Export/Restore"
L["IMPORT_EXPORT_DESC"] = [[Click the dropdown arrow to the right of this editbox to import and export icons, groups, and profiles.

Importing to or from a string, or exporting to another player, will require the use of this editbox. See the tooltips within the dropdown menu for details.]]
L["IMPORT_EXPORT_BUTTON_DESC"] = "Click this dropdown to import and export icons, groups, and profiles."
L["IMPORT_EXPORT_DESC_INLINE"] = "Import and Export profiles, groups, icons to or from strings, other players, other profiles, or a backup of your settings."

L["IMPORT_HEADING"] = "Import"
L["IMPORT_FROMLOCAL"] = "From Profile"
L["IMPORT_FROMBACKUP"] = "From Backup"
L["IMPORT_FROMBACKUP_WARNING"] = "BACKUP SETTINGS: %s"
L["IMPORT_FROMBACKUP_DESC"] = "Settings restored from this menu will be as they were at: %s"
L["IMPORT_FROMSTRING"] = "From String"
L["IMPORT_FROMSTRING_DESC"] = [[Strings allow you to transfer TellMeWhen configuration data outside the game.

To import from a string, press CTRL+V to paste the string into the editbox after you have copied it to your clipboard, and then navigate back to this sub-menu.]]
L["IMPORT_FROMCOMM"] = "From Player"
L["IMPORT_FROMCOMM_DESC"] = "If another user of TellMeWhen sends you any configuration data, you will be able to import that data from this submenu."
L["IMPORT_PROFILE"] = "Copy Profile"
L["IMPORT_PROFILE_OVERWRITE"] = "|cFFFF5959Overwrite|r %s"
L["IMPORT_PROFILE_NEW"] = "|cff59ff59Create|r New Profile"

L["EXPORT_HEADING"] = "Export"
L["EXPORT_TOSTRING"] = "To String"
L["EXPORT_TOCOMM"] = "To Player"
L["EXPORT_TOGUILD"] = "To Guild"
L["EXPORT_TORAID"] = "To Raid"
L["EXPORT_TOCOMM_DESC"] = [[Type a player's name into the editbox and choose this option to send the data to them. They must be somebody that you can whisper (same faction, server, online), and they must have TellMeWhen v4.0.0+

You can also type "GUILD" or "RAID" (case-sensitive) to send to your entire guild or raid group.]]
L["EXPORT_TOSTRING_DESC"] = "A string containing the necessary data will be pasted into the editbox.  Press Ctrl+C to copy it, and then paste it wherever you want to share it."
L["EXPORT_SPECIALDESC"] = "Other TellMeWhen users can only import entire groups or entire profiles if they have version 4.6.0+"
L["EXPORT_f"] = "Export %s"
L["fPROFILE"] = "Profile: %s"









L["CACHING"] = [[TellMeWhen is caching and filtering all spells in the game. This only needs to be done once per WoW patch. You can speed up or slow down the process using the slider below.

You do not have to wait for this process to complete in order to use TellMeWhen. Only the suggestion list is dependent on the completion of the spell cache.]]
L["CACHINGSPEED"] = "Spells per frame:"
L["SUGGESTIONS"] = "Suggestions:"
L["SUGGESTIONS_SUBSTITUTIONS"] = "Substitutions:"
L["SUG_TOOLTIPTITLE"] = [[As you type, TellMeWhen will look through its cache and determine the spells that you were most likely looking for.

Spells are categorized and colored as per the list below. Note that the categories that begin with the word "Known" will not have spells put into them until they have been seen as you play or log onto different Classes.

Clicking on an entry will insert it into the editbox.

]]--extra newlines intended
L["SUG_TOOLTIPTITLE_TEXTSUBS"] = [[The following are substitutions that you may wish to use in this text display. Using a substitution will cause it to be replaced with the appropriate data wherever it is displayed.

Clicking on an entry will insert it into the editbox.]]
L["SUG_DISPELTYPES"] = "Dispel Types"
L["SUG_BUFFEQUIVS"] = "Buff Equivalencies"
L["SUG_DEBUFFEQUIVS"] = "Debuff Equivalencies"
L["SUG_OTHEREQUIVS"] = "Other Equivalencies"
L["SUG_MSCDONBARS"] = "Valid multi-state cooldowns"
L["SUG_PLAYERSPELLS"] = "Your spells"
L["SUG_CLASSSPELLS"] = "Known PC/pet spells"
L["SUG_NPCAURAS"] = "Known NPC buffs/debuffs"
L["SUG_PLAYERAURAS"] = "Known PC/pet buffs/debuffs"
L["SUG_MISC"] = "Miscellaneous"
L["SUG_FINISHHIM"] = "Finish Caching Now"
L["SUG_FINISHHIM_DESC"] = "|cff7fffffClick|r to immediately finish the caching/filtering process. Note that your computer may freeze for a few seconds."


L["SUG_INSERT_ANY"] = "|cff7fffffClick|r"
L["SUG_INSERT_LEFT"] = "|cff7fffffLeft-click|r"
L["SUG_INSERT_RIGHT"] = "|cff7fffffRight-click|r"
L["SUG_INSERT_TAB"] = " or |cff7fffffTab|r"

L["SUG_INSERTNAME"] = "%s to insert as a name"
L["SUG_INSERTID"] = "%s to insert as an ID"
L["SUG_INSERTITEMSLOT"] = "%s to insert as an item slot ID"
L["SUG_INSERTEQUIV"] = "%s to insert equivalency"
L["SUG_INSERTTEXTSUB"] = "%s to insert substitution"

L["SUG_PATTERNMATCH_FISHINGLURE"] = "Fishing Lure %(%+%d+ Fishing Skill%)" -- enUS
L["SUG_PATTERNMATCH_WEIGHTSTONE"] = "Weighted %(%+%d+ Damage%)"
L["SUG_PATTERNMATCH_SHARPENINGSTONE"] = "Sharpened %(%+%d+ Damage%)"
L["SUG_MATCH_WPNENCH_ENCH"] = "(.*) Weapon" -- inconsistent key. oops.

L["SUG_ATBEGINING"] = "Suggester: Match beginning"
L["SUG_ATBEGINING_DESC"] = "If checked, the suggestion list will only display spells that start with the same name as the spell that is being typed in. Otherwise, it will match any part of a spell."



L["SOUND_EVENT_ONSHOW"] = "On Show"
L["SOUND_EVENT_ONSHOW_DESC"] = "This event triggers when the icon becomes shown (even if %q is checked)."

L["SOUND_EVENT_ONHIDE"] = "On Hide"
L["SOUND_EVENT_ONHIDE_DESC"] = "This event triggers when the icon is hidden (even if %q is checked)."

L["SOUND_EVENT_ONSTART"] = "On Start"
L["SOUND_EVENT_ONSTART_DESC"] = [[This event triggers when the cooldown becomes unusable, the buff/debuff is applied, etc.]]

L["SOUND_EVENT_ONFINISH"] = "On Finish"
L["SOUND_EVENT_ONFINISH_DESC"] = [[This event triggers when the cooldown becomes usable, the buff/debuff falls off, etc.]]

L["SOUND_EVENT_ONALPHAINC"] = "On Alpha Increase"
L["SOUND_EVENT_ONALPHAINC_DESC"] = [[This event triggers when the opacity of an icon increases.

NOTE: This event will not trigger when increasing from 0% opacity (On Show).]]

L["SOUND_EVENT_ONALPHADEC"] = "On Alpha Decrease"
L["SOUND_EVENT_ONALPHADEC_DESC"] = [[This event triggers when the opacity of an icon decreases.

NOTE: This event will not trigger when decreasing to 0% opacity (On Hide).]]

L["SOUND_EVENT_ONUNIT"] = "On Unit Changed"
L["SOUND_EVENT_ONUNIT_DESC"] = [[This event triggers when the unit that that the icon is displaying information for has changed.]]

L["SOUND_EVENT_ONSPELL"] = "On Spell Changed"
L["SOUND_EVENT_ONSPELL_DESC"] = [[This event triggers when the spell/item/etc. that that the icon is displaying information for has changed.]]

L["SOUND_EVENT_ONSTACK"] = "On Stacks Changed"
L["SOUND_EVENT_ONSTACK_DESC"] = [[This event triggers when the stacks of whatever the item is tracking has changed.

This includes the amount of diminishment for %s icons.]]

L["SOUND_EVENT_ONDURATION"] = "On Duration Changed"
L["SOUND_EVENT_ONDURATION_DESC"] = [[This event triggers when the duration of the icon's timer changes.

Because this event occurs every time the icon is updated while a timer is running, you must set a condition, and the event will only occur when the state of that condition changes.]]

L["SOUND_EVENT_ONCLEU"] = "On Combat Event"
L["SOUND_EVENT_ONCLEU_DESC"] = [[This event triggers when a combat event that should be processed by the icon occurs.]]

L["SOUND_EVENT_ONICONSHOW"] = "On Other Icon Show"
L["SOUND_EVENT_ONICONSHOW_DESC"] = [[This event triggers when another icon (not this icon) is shown.

Configure the icon that should be watched using the event settings below.]]

L["SOUND_EVENT_ONICONHIDE"] = "On Other Icon Hide"
L["SOUND_EVENT_ONICONHIDE_DESC"] = [[This event triggers when another icon (not this icon) is hidden.

Configure the icon that should be watched using the event settings below.]]

L["SOUND_EVENT_GLOBALDESC"] = "Events are checked from top to bottom in this list. If an event is triggered that has a sound to play, no events below that event will play a sound."
L["SOUND_EVENT_DISABLEDFORTYPE"] = "Not available"
L["SOUND_EVENT_DISABLEDFORTYPE_DESC"] = "This event is not available for %s type icons."

L["SOUND_SOUNDTOPLAY"] = "Sound to Play"
L["SOUND_CUSTOM"] = "Custom sound file"
L["SOUND_CUSTOM_DESC"] = [[Insert the path to a custom sound to play. Here are some examples, where "file" is the name of your sound, and "ext" is the file's extension (ogg or mp3 only!):

- "CustomSounds\file.ext": a file placed in a new folder named "CustomSounds" that is in WoW's root directory (the same location as Wow.exe, Interface and WTF folders, etc)

- "Interface\AddOns\file.ext": a loose file in the AddOns folder

- "file.ext": a loose file in WoW's root directory

NOTE: WoW must be restarted before it will recognize files that did not exist when it was started up.]]
L["SOUND_TAB"] = "Sound"

L["EVENTS_TAB"] = "Events"
L["EVENTS_HANDLERS_HEADER"] = "Icon Event Handlers"
L["EVENTS_HANDLERS_ADD"] = "Add Event Handler..."
L["EVENTS_HANDLERS_ADD_DESC"] = "|cff7fffffClick|r to choose an event handler to add to this icon."
L["EVENTS_HANDLERS_GLOBAL_DESC"] = [[|cff7fffffClick|r for event handler options.
|cff7fffffClick-and-drag|r to reorder.]]
L["EVENTS_HANDLERS_PLAY"] = "Test Event"
L["EVENTS_HANDLERS_PLAY_DESC"] = "|cff7fffffClick|r to test the event handler"

L["EVENTS_SETTINGS_HEADER"] = "Event Settings"
--L["EVENTS_SETTINGS_HEADER_SUB"] = "Only handle %s:"
L["EVENTS_SETTINGS_GLOBAL_DESC"] = "Note that event settings affect the event across all outputs, including sound, text, and animations."

L["EVENTS_SETTINGS_ONLYSHOWN"] = "Only handle if icon is shown"
L["EVENTS_SETTINGS_ONLYSHOWN_DESC"] = "Prevents the event from being handled if the icon is not shown."

L["EVENTS_SETTINGS_PASSINGCNDT"] = "Only handle if condition is passing:"
L["EVENTS_SETTINGS_PASSINGCNDT_DESC"] = "Prevents the event from being handled unless the condition configured below succeeds."

L["EVENTS_SETTINGS_CNDTJUSTPASSED"] = "And it just began passing"
L["EVENTS_SETTINGS_CNDTJUSTPASSED_DESC"] = "Prevents the event from being handled unless the condition configured above has just begun succeeding."

L["EVENTS_SETTINGS_PASSTHROUGH"] = "Continue to lower events"
L["EVENTS_SETTINGS_PASSTHROUGH_DESC"] = [[Check to allow another event to be handled after this one.
If left unchecked, the icon will not process any more events after this event if it successfully processes and outputs/displays something.

Exeptions may apply, see individual event descriptions for details.]]



L["SOUND_USEMASTER"] = "Always play sounds"
L["SOUND_USEMASTER_DESC"] = "Check this to allow sounds to play even when the game sound has been muted. Uncheck to only play sounds while the game sound is enabled."
L["SOUNDERROR1"] = "File must have an extension!"
L["SOUNDERROR2"] = "Custom WAV files are not supported by WoW 4.0+"
L["SOUNDERROR3"] = "Only OGG and MP3 files are supported!"

L["ANN_TAB"] = "Text"
L["ANN_CHANTOUSE"] = "Channel to Use"
L["ANN_EDITBOX"] = "Text to be outputted"
L["ANN_EDITBOX_WARN"] = "Type the text you wish to be outputted here"
L["ANN_EDITBOX_DESC"] = [[Type the text that you wish to be outputted when the event triggers.]]
L["MOUSEOVER_TOKEN_NOT_FOUND"] = "<no mouseover>"
L["ANN_STICKY"] = "Sticky"
L["ANN_SHOWICON"] = "Show icon texture"
L["ANN_SHOWICON_DESC"] = "Some text destinations can show a texture along with the text. Check this to enable that feature."
L["ANN_SUB_CHANNEL"] = "Sub section"
L["ANN_WHISPERTARGET"] = "Whisper target"
L["ANN_WHISPERTARGET_DESC"] = [[Input the name of the player that you would like to whisper. Normal server/faction whisper requirements apply.]]
L["ANN_EVENT_GLOBALDESC"] = "Events are checked from top to bottom in this list. If an event is triggered that has text to output, no events below that event will output any text."
L["ANN_FCT_DESC"] = "Outputs to Blizzard's Floating Combat Text feature. It MUST be enabled in your interface options for the text to be outputted."
L["CHAT_MSG_SMART"] = "Smart Channel"
L["CHAT_MSG_SMART_DESC"] = "Will output to Battleground, Raid, Party, or Say - whichever is appropriate."
L["CHAT_MSG_CHANNEL"] = "Chat Channel"
L["CHAT_MSG_CHANNEL_DESC"] = "Will output to a chat channel, such as Trade, or a custom channel that you have joined."


L["CHAT_FRAME"] = "Chat/Message Frame"



L["ANIM_TAB"] = "Animation"
L["ANIM_ANIMTOUSE"] = "Animation To Use"
L["ANIM_ANIMSETTINGS"] = "Settings"

L["ANIM_SECONDS"] = "%s Seconds"
L["ANIM_PIXELS"] = "%s Pixels"
L["ANIM_DURATION"] = "Animation Duration"
L["ANIM_DURATION_DESC"] = "Set how long the animation should last after it is triggered."
L["ANIM_PERIOD"] = "Flash Period"
L["ANIM_PERIOD_DESC"] = [[Set how long each flash should take - the time that the flash is shown or fading in.

Set to 0 if you don't want fading or flashing to occur.]]
L["ANIM_MAGNITUDE"] = "Shake Magnitude"
L["ANIM_MAGNITUDE_DESC"] = "Set how violent the shake should be."
L["ANIM_THICKNESS"] = "Border Thickness"
L["ANIM_THICKNESS_DESC"] = "Set how thick the border should be. (The default size of an icon is 30.)"
L["ANIM_SIZE_ANIM"] = "Border Size"
L["ANIM_SIZE_ANIM_DESC"] = "Set how big the entire border should be."
L["ANIM_SIZEX"] = "Image Width"
L["ANIM_SIZEX_DESC"] = "Set how wide the image should be."
L["ANIM_SIZEY"] = "Image Height"
L["ANIM_SIZEY_DESC"] = "Set how tall the image should be."
L["ANIM_COLOR"] = "Color/Opacity"
L["ANIM_COLOR_DESC"] = "Configure the color and the opacity of the flash."
L["ANIM_FADE"] = "Fade Flashes"
L["ANIM_FADE_DESC"] = "Check to have a smooth fade between each flash. Uncheck to instantly flash."
L["ANIM_INFINITE"] = "Play Indefinitely"
L["ANIM_INFINITE_DESC"] = "Check to cause the animation to play until it is overwritten by another animation on the icon of the same type, or until the %q animation is played."
L["ANIM_TEX"] = "Texture"
L["ANIM_TEX_DESC"] = [[Choose the texture that should be overlaid.

You may enter the Name or ID of a spell that has the texture that you want to use, or you may enter a texture path, such as 'Interface/Icons/spell_nature_healingtouch', or just 'spell_nature_healingtouch' if the path is 'Interface/Icons'

You can use your own textures too as long as they are placed in WoW's directory (set this field to the path to the texture relative to WoW's root folder), are .tga or .blp format, and have dimensions that are powers of 2 (32, 64, 128, etc)]]

L["ANIM_SCREENSHAKE"] = "Screen: Shake"
L["ANIM_SCREENSHAKE_DESC"] = [[Shakes your entire screen when it is triggered.

NOTE: This will only work if you are either out of combat or if nameplates have not been enabled at all since you logged in.]]

L["ANIM_ICONSHAKE"] = "Icon: Shake"
L["ANIM_ICONSHAKE_DESC"] = "Shakes the icon when it is triggered."
L["ANIM_ACTVTNGLOW"] = "Icon: Activation Border"
L["ANIM_ACTVTNGLOW_DESC"] = "Displays the Blizzard spell activation border on the icon."
L["ANIM_ICONFLASH"] = "Icon: Color Flash"
L["ANIM_ICONFLASH_DESC"] = "Flashes a colored overlay across the icon."
L["ANIM_ICONALPHAFLASH"] = "Icon: Alpha Flash"
L["ANIM_ICONALPHAFLASH_DESC"] = "Flashes the icon itself by changing its opacity."
L["ANIM_SCREENFLASH"] = "Screen: Flash"
L["ANIM_SCREENFLASH_DESC"] = "Flashes a colored overlay across the screen."
L["ANIM_ICONFADE"] = "Icon: Fade In/Out"
L["ANIM_ICONFADE_DESC"] = "Smoothly applies any opacity changes that occured with the selected event."
L["ANIM_ICONBORDER"] = "Icon: Border"
L["ANIM_ICONBORDER_DESC"] = "Overlays a colored border on the icon."
L["ANIM_ICONOVERLAYIMG"] = "Icon: Image Overlay"
L["ANIM_ICONOVERLAYIMG_DESC"] = "Overlays a custom image over the icon."
L["ANIM_ICONCLEAR"] = "Icon: Stop Animations"
L["ANIM_ICONCLEAR_DESC"] = "Stops all animations that are playing on the current icon."



L["CLEU_"] = "Any event" -- match any event
L["CLEU_DAMAGE_SHIELD"] = "Damage Shield"
L["CLEU_DAMAGE_SHIELD_DESC"] = "Occurs when a damage shield (%s, %s, etc., but not %s) damage a unit."
L["CLEU_DAMAGE_SHIELD_MISSED"] = "Damage Shield Missed"
L["CLEU_DAMAGE_SHIELD_MISSED_DESC"] = "Occurs when a damage shield (%s, %s, etc., but not %s) fails to damage a unit."
L["CLEU_DAMAGE_SPLIT"] = "Damage Split"
L["CLEU_DAMAGE_SPLIT_DESC"] = "Occurs when damage is split between two or more targets."
L["CLEU_ENCHANT_APPLIED"] = "Enchant Applied"
L["CLEU_ENCHANT_APPLIED_DESC"] = "Covers temporary weapon enchants like rogue poisons and shaman imbues."
L["CLEU_ENCHANT_REMOVED"] = "Enchant Removed"
L["CLEU_ENCHANT_REMOVED_DESC"] = "Covers temporary weapon enchants like rogue poisons and shaman imbues."
L["CLEU_ENVIRONMENTAL_DAMAGE"] = "Environmental Damage"
L["CLEU_ENVIRONMENTAL_DAMAGE_DESC"] = "Includes damage from lava, fatigue, downing, and falling."
L["CLEU_RANGE_DAMAGE"] = "Ranged Damage"
L["CLEU_RANGE_MISSED"] = "Ranged Miss"
L["CLEU_SPELL_AURA_APPLIED"] = "Aura Applied"
L["CLEU_SPELL_AURA_APPLIED_DOSE"] = "Aura Stack Applied"
L["CLEU_SPELL_AURA_BROKEN"] = "Aura Broken"
L["CLEU_SPELL_AURA_BROKEN_SPELL"] = "Aura Broken by Spell"
L["CLEU_SPELL_AURA_BROKEN_SPELL_DESC"] = [[Occurs when an aura, usually some form of crowd control, is broken by damage from a spell.

The aura that was broken is what the icon filters by; the spell that broke it can be accessed with the substitution '%x' in text displays.]]
L["CLEU_SPELL_AURA_REFRESH"] = "Aura Refreshed"
L["CLEU_SPELL_AURA_REMOVED"] = "Aura Removed"
L["CLEU_SPELL_AURA_REMOVED_DOSE"] = "Aura Stack Removed"
L["CLEU_SPELL_STOLEN"] = "Aura Stolen"
L["CLEU_SPELL_STOLEN_DESC"] = [[Occurs when a buff is stolen, probably by %s.

Icon can be filtered by the spell that was stolen.]]
L["CLEU_SPELL_CAST_FAILED"] = "Spell Cast Failed"
L["CLEU_SPELL_CAST_START"] = "Spell Cast Start"
L["CLEU_SPELL_CAST_START_DESC"] = [[Occurs when a spell begins casting.

NOTE: To prevent potential abuse, Blizzard has excluded the destination unit from this event, so you cannot filter by it.]]
L["CLEU_SPELL_CAST_SUCCESS"] = "Spell Cast Success"
L["CLEU_SPELL_CAST_SUCCESS_DESC"] = [[Occurs when a spell finishes casting, including instant cast spells.

NOTE: To prevent potential abuse, Blizzard has excluded the destination unit from this event, so you cannot filter by it.]]
L["CLEU_SPELL_DAMAGE"] = "Spell Damage"
L["CLEU_SPELL_DISPEL"] = "Dispel"
L["CLEU_SPELL_DISPEL_DESC"] = [[Occurs when an aura is dispelled.

Icon can be filtered by the aura that was dispelled. The spell that dispelled it can be accessed with the substitution '%x' in text displays.]]
L["CLEU_SPELL_DISPEL_FAILED"] = "Dispel Failed"
L["CLEU_SPELL_DISPEL_FAILED_DESC"] = [[Occurs when an aura fails to be dispelled.

Icon can be filtered by the aura that was attempted to be dispelled. The spell that attempted it can be accessed with the substitution '%x' in text displays.]]
L["CLEU_SPELL_DRAIN"] = "Resource Drain"
L["CLEU_SPELL_DRAIN_DESC"] = "Occurs when resources (health/mana/rage/energy/etc) are removed from a unit."
L["CLEU_SPELL_ENERGIZE"] = "Resource Gain"
L["CLEU_SPELL_ENERGIZE_DESC"] = "Occurs when resources (health/mana/rage/energy/etc) are gained by a unit."
L["CLEU_SPELL_EXTRA_ATTACKS"] = "Extra Attacks Gained"
L["CLEU_SPELL_EXTRA_ATTACKS_DESC"] = "Occurs when you are granted extra melee swings from procs."
L["CLEU_SPELL_HEAL"] = "Heal"
L["CLEU_SPELL_INSTAKILL"] = "Instant Kill"
L["CLEU_SPELL_INTERRUPT"] = "Interrupt - Spell Interrupted"
L["CLEU_SPELL_INTERRUPT_DESC"] = [[Occurs when a spell cast is interrupted.

Icon can be filtered by the spell that was interrupted. The interrupt spell that interrupted it can be accessed with the substitution '%x' in text displays.

Note the difference between the two interrupt events - both will always occur when a spell is interrupted, but each filters the spells involved differently.]]
L["CLEU_SPELL_INTERRUPT_SPELL"] = "Interrupt - Interrupt Spell Used"
L["CLEU_SPELL_INTERRUPT_SPELL_DESC"] = [[Occurs when a spell cast is interrupted.

Icon can be filtered by the spell that caused the interrupt. The spell that was interrupted can be accessed with the substitution '%x' in text displays.

Note the difference between the two interrupt events - both will always occur when a spell is interrupted, but each filters the spells involved differently.]]
L["CLEU_SPELL_LEECH"] = "Resource Leech"
L["CLEU_SPELL_LEECH_DESC"] = "Occurs when resources (health/mana/rage/energy/etc) are removed from one unit and simultaneously given to another."
L["CLEU_SPELL_MISSED"] = "Spell Miss"
L["CLEU_SPELL_CREATE"] = "Spell Create"
L["CLEU_SPELL_CREATE_DESC"] = "Occurs when an object, such as a hunter trap or a mage portal, is created."
L["CLEU_SPELL_SUMMON"] = "Spell Summon"
L["CLEU_SPELL_SUMMON_DESC"] = "Occurs when an NPC, such as a pet or a totem, is summoned or spawned."
L["CLEU_SPELL_RESURRECT"] = "Resurrection"
L["CLEU_SPELL_RESURRECT_DESC"] = "Occurs when a unit is resurrected from death."
L["CLEU_SPELL_REFLECT"] = "Spell Reflect" -- custom event
L["CLEU_SPELL_REFLECT_DESC"] = [[Occurs when you reflect a spell back at its caster.

The source unit is whoever reflected it, the destination unit is whoever it was reflected back at]]
L["CLEU_SPELL_PERIODIC_DAMAGE"] = "Periodic Damage"
L["CLEU_SPELL_PERIODIC_DRAIN"] = "Periodic Resource Drain"
L["CLEU_SPELL_PERIODIC_ENERGIZE"] = "Periodic Resource Gain"
L["CLEU_SPELL_PERIODIC_LEECH"] = "Periodic Leech"
L["CLEU_SPELL_PERIODIC_HEAL"] = "Periodic Heal"
L["CLEU_SPELL_PERIODIC_MISSED"] = "Periodic Miss"
L["CLEU_SWING_DAMAGE"] = "Swing Damage"
L["CLEU_SWING_MISSED"] = "Swing Miss"
L["CLEU_UNIT_DESTROYED"] = "Unit Destroyed"
L["CLEU_UNIT_DESTROYED_DESC"] = "Occurs when a unit such as a totem is destroyed."
L["CLEU_UNIT_DIED"] = "Unit Died"

L["CLEU_CAT_CAST"] = "Casts"
L["CLEU_CAT_SWING"] = "Melee/Ranged"
L["CLEU_CAT_SPELL"] = "Spells"
L["CLEU_CAT_AURA"] = "Buffs/Debuffs"
L["CLEU_CAT_MISC"] = "Miscellaneous"


L["CLEU_COMBATLOG_OBJECT_NONE"] = "Miscellaneous: Unknown Unit"
L["CLEU_COMBATLOG_OBJECT_NONE_DESC"] = "Check to exclude units that are completely unknown to the WoW client. This very rarely occurs, and can generally be left unchecked."
L["CLEU_COMBATLOG_OBJECT_MAINASSIST"] = "Miscellaneous: Main Assist"
L["CLEU_COMBATLOG_OBJECT_MAINASSIST_DESC"] = "Check to exclude units marked as main assists in your raid."
L["CLEU_COMBATLOG_OBJECT_MAINTANK"] = "Miscellaneous: Main Tank"
L["CLEU_COMBATLOG_OBJECT_MAINTANK_DESC"] = "Check to exclude units marked as main tanks in your raid."
L["CLEU_COMBATLOG_OBJECT_FOCUS"] = "Miscellaneous: Your Focus"
L["CLEU_COMBATLOG_OBJECT_FOCUS_DESC"] = "Check to exclude the unit that you have set as your focus."
L["CLEU_COMBATLOG_OBJECT_TARGET"] = "Miscellaneous: Your Target"
L["CLEU_COMBATLOG_OBJECT_TARGET_DESC"] = "Check to exclude the unit that you are targeting."

L["CLEU_COMBATLOG_OBJECT_TYPE_OBJECT"] = "Unit Type: Object"
L["CLEU_COMBATLOG_OBJECT_TYPE_OBJECT_DESC"] = "Check to exclude units such as traps, fishing bobbers, or anything else that does not fall under the other \"Unit Type\" categories."
L["CLEU_COMBATLOG_OBJECT_TYPE_GUARDIAN"] = "Unit Type: Guardian"
L["CLEU_COMBATLOG_OBJECT_TYPE_GUARDIAN_DESC"] = "Check to exclude Guardians. Guardians are units that defend their controller but cannot be directly controlled."
L["CLEU_COMBATLOG_OBJECT_TYPE_PET"] = "Unit Type: Pet"
L["CLEU_COMBATLOG_OBJECT_TYPE_PET_DESC"] = "Check to exclude Pets. Pets are units that defend their controller and can be directly controlled."
L["CLEU_COMBATLOG_OBJECT_TYPE_NPC"] = "Unit Type: NPC"
L["CLEU_COMBATLOG_OBJECT_TYPE_NPC_DESC"] = "Check to exclude non-player characters."
L["CLEU_COMBATLOG_OBJECT_TYPE_PLAYER"] = "Unit Type: Player Character"
L["CLEU_COMBATLOG_OBJECT_TYPE_PLAYER_DESC"] = "Check to exclude player characters."
L["CLEU_COMBATLOG_OBJECT_TYPE_MASK"] = "Unit Type"

L["CLEU_COMBATLOG_OBJECT_CONTROL_NPC"] = "Controller: Server"
L["CLEU_COMBATLOG_OBJECT_CONTROL_NPC_DESC"] = "Check to exclude units that are controlled by the server, including their pets and guardians."
L["CLEU_COMBATLOG_OBJECT_CONTROL_PLAYER"] = "Controller: Human"
L["CLEU_COMBATLOG_OBJECT_CONTROL_PLAYER_DESC"] = "Check to exclude units that are controlled by human beings, including their pets and guardians."
L["CLEU_COMBATLOG_OBJECT_CONTROL_MASK"] = "Controller"

L["CLEU_COMBATLOG_OBJECT_REACTION_HOSTILE"] = "Unit Reaction: Hostile"
L["CLEU_COMBATLOG_OBJECT_REACTION_HOSTILE_DESC"] = "Check to exclude units that are hostile towards you."
L["CLEU_COMBATLOG_OBJECT_REACTION_NEUTRAL"] = "Unit Reaction: Neutral"
L["CLEU_COMBATLOG_OBJECT_REACTION_NEUTRAL_DESC"] = "Check to exclude units that are neutral towards you."
L["CLEU_COMBATLOG_OBJECT_REACTION_FRIENDLY"] = "Unit Reaction: Friendly"
L["CLEU_COMBATLOG_OBJECT_REACTION_FRIENDLY_DESC"] = "Check to exclude units that are friendly towards you."
L["CLEU_COMBATLOG_OBJECT_REACTION_MASK"] = "Unit Reaction"

L["CLEU_COMBATLOG_OBJECT_AFFILIATION_OUTSIDER"] = "Controller Relationship: Outsiders"
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_OUTSIDER_DESC"] = "Check to exclude units that are controlled by someone who is grouped with you."
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_RAID"] = "Controller Relationship: Raid Members"
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_RAID_DESC"] = "Check to exclude units that are controlled by someone who is in your raid group."
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_PARTY"] = "Controller Relationship: Party Members"
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_PARTY_DESC"] = "Check to exclude units that are controlled by someone who is in your party."
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_MINE"] = "Controller Relationship: Player (You)"
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_MINE_DESC"] = "Check to exclude units that are controlled by you."
L["CLEU_COMBATLOG_OBJECT_AFFILIATION_MASK"] = "Controller Relationship"


L["CLEU_WHOLECATEGORYEXCLUDED"] = [[You have excluded every part of the %q category, which will cause this icon to never process any events.

Uncheck at least one for proper functionality.]]

L["CLEU_NOFILTERS"] = [[The %s icon in %s does not have any filters defined. It will not function until you define at least one filter.]]


L["CLEU_DIED"] = "Death"

L["CLEU_HEADER"] = "Combat Event Filters"
L["CLEU_EVENTS"] = "Events to check"
L["CLEU_EVENTS_ALL"] = "All"
L["CLEU_EVENTS_DESC"] = "Choose the combat events that you would like the icon to react to."
L["CLEU_SOURCEUNITS"] = "Source unit(s) to check"
L["CLEU_SOURCEUNITS_DESC"] = "Choose the source units that you would like the icon to react to, or leave this blank to let the icon react to any event source."
L["CLEU_DESTUNITS"] = "Destination unit(s) to check"
L["CLEU_DESTUNITS_DESC"] = "Choose the destination units that you would like the icon to react to, or leave this blank to let the icon react to any event destination."

L["CLEU_FLAGS"] = "Exclusions"
L["CLEU_FLAGS_DESC"] = "Contains a list of attributes that can be used to exclude certain units from triggering the icon. If an exclusion is checked, and a unit has that attribute, the icon will not process the event that the unit was part of."

L["CLEU_TIMER"] = "Timer to set on event"
L["CLEU_TIMER_DESC"] = [[Duration of a timer to set on the icon when an event occurs.

You may also set durations using the "Spell: Duration" syntax in the %q editbox to be used whenever an event is handled using a spell that you have set as a filter.

If no duration is defined for a spell, or you do not have any spell filter set (the editbox is blank), then this duration will be used.]]



L["HELP_FIRSTUCD"] = [[You have used an icon type that uses the special duration syntax for the first time! Spells that are added to the %q editbox for certain icon types must define a duration immediately after each spell using the following syntax:

Spell: Duration

For example:

"%s: 120"
"%s: 10; %s: 24"
"%s: 180"
"%s: 3:00"
"62618: 3:00"

Inserting from the suggestion list automatically adds the duration from the tooltip.]]

L["HELP_MISSINGDURS"] = [[The following spells are missing durations:

%s

To add durations, use the following syntax:

Spell Name: Duration

E.g. "%s: 10"

Inserting from the suggestion list automatically adds the duration from the tooltip.]]

L["HELP_POCKETWATCH"] = [[|TInterface\Icons\INV_Misc_PocketWatch_01:20|t -- The pocket watch texture.
This texture is being used because the first valid spell being checked was entered by name and isn't in your spellbook.

The correct texture will be used once you have seen the spell as you play.

To see the correct texture now, change the first spell being checked into a Spell ID. You can easily do this by clicking on the entry in the editbox and right-clicking the correct corresponding entry in the suggestion list.]]

L["HELP_NOUNITS"] = [[You must enter at least one unit!]]
L["HELP_NOUNIT"] = [[You must enter a unit!]]
L["HELP_MS_NOFOUND"] = [[The ability %q could not be found on your action bars.

Ensure that the ability is on your action bars, in its default state, and that it is not only a macro that is putting the spell on your action bars. Otherwise, this icon will not function properly.]]

L["HELP_ICD_NATURESGRACE"] = [[Trying to track the cooldown of %s?

It is recommended that you change the icon type to %q instead, which will track resets in the cooldown triggered by eclipse state changes.]]

L["HELP_IMPORT_CURRENTPROFILE"] = [[Trying to move or copy an icon from this profile to another icon slot?

You can do so easily by |cff7fffffRight-clicking and dragging|r the icon (hold down the mouse button) to another slot. When you release the mouse button, a menu will appear with many options.

Try dragging an icon to a meta icon, another group, or another frame on your screen for other options.]]

L["HELP_EXPORT_DOCOPY_WIN"] = [[Press |cff7fffffCTRL+C|r to copy]]
L["HELP_EXPORT_DOCOPY_MAC"] = [[Press |cff7fffffCMD+C|r to copy]]


L["TOPLEFT"] = "Top Left"
L["TOP"] = "Top"
L["TOPRIGHT"] = "Top Right"
L["LEFT"] = "Left"
L["CENTER"] = "Center"
L["RIGHT"] = "Right"
L["BOTTOMLEFT"] = "Bottom Left"
L["BOTTOM"] = "Bottom"
L["BOTTOMRIGHT"] = "Bottom Right"

L["STRATA_BACKGROUND"] = "Background"
L["STRATA_LOW"] = "Low"
L["STRATA_MEDIUM"] = "Medium"
L["STRATA_HIGH"] = "High"
L["STRATA_DIALOG"] = "Dialog"
L["STRATA_FULLSCREEN"] = "Fullscreen"
L["STRATA_FULLSCREEN_DIALOG"] = "Fullscreen Dialog"
L["STRATA_TOOLTIP"] = "Tooltip"

-- --------
-- EQUIVS
-- --------

L["IncreasedArmorPercent"] = "Increased Armor Percent"
L["DamageReduction"] = "Increased Damage Reduction"
L["IncreasedSP"] = "Increased Spellpower"
L["IncreasedSpirit"] = "Increased Spirit"
L["IncreasedStatAdd"] = "Increased Stat Add"
L["IncreasedStatPercent"] = "Increased Stat Percent"
L["Replenishment"] = "Replenishment"
L["IncreasedAPPercent"] = "Increased Attack Power Percent"


L["CrowdControl"] = "Crowd Control"
L["Bleeding"] = "Bleeding"
L["Feared"] = "Fear"
L["Incapacitated"] = "Incapacitated"
L["Stunned"] = "Stunned"
L["Slowed"] = "Slowed"
--L["DontMelee"] = "Don't Melee"
L["ImmuneToStun"] = "Immune To Stun"
L["ImmuneToMagicCC"] = "Immune To Magic CC"
--L["MovementSlowed"] = "Movement Slowed"
L["Disoriented"] = "Disoriented"
L["Silenced"] = "Silenced"
L["Disarmed"] = "Disarmed"
L["Rooted"] = "Rooted"
L["Shatterable"] = "Shatterable"
L["IncreasedStats"] = "Increased Stats"
L["IncreasedDamage"] = "Increased Damage Done"
L["IncreasedCrit"] = "Increased Crit Chance"
L["IncreasedPhysCrit"] = "Increased Physical Crit Chance"
L["IncreasedSpellCrit"] = "Increased Spell Crit Chance"
L["IncreasedAP"] = "Increased Attack Power"
L["IncreasedSPsix"] = "Increased Spellpower (6%)"
L["IncreasedSPten"] = "Increased Spellpower (10%)"
L["IncreasedPhysHaste"] = "Increased Physical Haste"
L["IncreasedSpellHaste"] = "Increased Spell Haste"
L["BurstHaste"] = "Heroism/Bloodlust"
L["BonusAgiStr"] = "Increased Agility/Strength"
L["BonusStamina"] = "Increased Stamina"
L["BonusArmor"] = "Increased Armor"
L["BonusMana"] = "Increased Intellect"
L["ManaRegen"] = "Increased Mana Regen"
L["BurstManaRegen"] = "Burst Mana Regen"
L["PushbackResistance"] = "Increased Pushback Resistance"
L["Resistances"] = "Increased Spell Resistance"
L["PhysicalDmgTaken"] = "Physical Damage Taken"
L["SpellDamageTaken"] = "Increased Spell Damage Taken"
L["SpellCritTaken"] = "Increased Spell Crit Taken"
L["CritTaken"] = "Increased Crit Taken"
L["SpellHitChance"] = "Increased Spell Hit Chance"
L["BleedDamageTaken"] = "Increased Bleed Damage Taken"
L["ReducedAttackSpeed"] = "Reduced Attack Speed"
L["ReducedCastingSpeed"] = "Reduced Casting Speed"
L["ReducedArmor"] = "Reduced Armor"
L["ReducedHealing"] = "Reduced Healing"
L["ReducedPhysicalDone"] = "Reduced Physical Damage Done"
L["DefensiveBuffs"] = "Defensive Buffs"
L["MiscHelpfulBuffs"] = "Misc. Helpful Buffs"
L["DamageBuffs"] = "Damage Buffs"

L["Heals"] = "Player Heals"
L["PvPSpells"] = "PvP Crowd Control, etc."
--L["Tier11Interrupts"] = "Tier 11 Interruptibles"
--L["Tier12Interrupts"] = "Tier 12 Interruptibles"

L["GCD"] = "Global Cooldown"

L["Magic"] = "Magic"
L["Curse"] = "Curse"
L["Disease"] = "Disease"
L["Poison"] = "Poison"
L["Enraged"] = "Enrage"

L["normal"] = "Normal"
L["rare"] = "Rare"
L["elite"] = "Elite"
L["rareelite"] = "Rare Elite"
L["worldboss"] = "World Boss"

L["RaidWarningFrame"] = "Raid Warning Frame"

L["DAMAGER"] = "Damage"
L["HEALER"] = "Heal"
L["TANK"] = "Tank"


L["DR-RandomStun"] = "Random stuns"
L["DR-ControlledStun"] = "Controlled stuns"
L["DR-Scatter"] = "Scatter Shot"
L["DR-Fear"] = "Fears"
L["DR-Silence"] = "Silences"
L["DR-Banish"] = "Banish"
L["DR-MindControl"] = "Mind Control"
L["DR-Entrapment"] = "Entrapment"
L["DR-Taunt"] = "Taunts"
L["DR-Disarm"] = "Disarms"
L["DR-Horrify"] = "Horrors"
L["DR-Cyclone"] = "Cyclone"
L["DR-Disorient"] = "Disorients"
L["DR-RandomRoot"] = "Random roots"
L["DR-ControlledRoot"] = "Controlled roots"
L["DR-DragonsBreath"] = "Dragon's Breath"

