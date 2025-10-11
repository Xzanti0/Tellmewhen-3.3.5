
local L = LibStub("AceLocale-3.0"):NewLocale("TellMeWhen", "esMX", false)
if not L then return end

L["!!Main Addon Description"] = "Proporciona notificaciones visuales, auditivas y textuales sobre tiempos de reutilización, ventajas y básicamente cualquier otra cosa. "

L["IncreasedArmorPercent"] = "Porcentaje de armadura aumentado"
L["DamageReduction"] = "Mayor reducción de daños"
L["IncreasedSP"] = "Mayor poder de hechizo"
L["IncreasedSpirit"] = "Espíritu aumentado"
L["IncreasedStatAdd"] = "Aumento de estadísticas adicionales"
L["IncreasedStatPercent"] = "Porcentaje de estadísticas aumentado"
L["Replenishment"] = "Reposición"
L["IncreasedAPPercent"] = "Porcentaje de poder de ataque aumentado"

L["ANIM_TAB"] = "Animación"
L["ANIM_ANIMTOUSE"] = "Animación A Usar"
L["ANIM_ANIMSETTINGS"] = "Ajustes"

L["ANIM_SECONDS"] = "%s Segundos"
L["ANIM_PIXELS"] = "%s Píxels"
L["ANIM_DURATION"] = "Duración de Animación"
L["ANIM_DURATION_DESC"] = "Establece cuánto debería durar la animación tras ser activada. "
L["ANIM_PERIOD"] = "Período de Destello"
L["ANIM_PERIOD_DESC"] = [=[Establece cuánto tiempo dura cada destello - el tiempo durante el cual el destello es mostrado o fundido.

Establezca a 0 si no quiere que haya destellos o fundidos. ]=]
L["ANIM_MAGNITUDE"] = "Magnitud de Agitado"
L["ANIM_MAGNITUDE_DESC"] = "Establece cuán violento debería ser el agitado."
L["ANIM_THICKNESS"] = "Grosor del Borde"
L["ANIM_THICKNESS_DESC"] = "Establece el grosor del borde."
L["ANIM_SIZE_ANIM"] = "Tamaño Inicial de Borde"
L["ANIM_SIZE_ANIM_DESC"] = "Establece cuánto de grande debería ser el borde entero. "
L["ANIM_SIZEX"] = "Ancho de Imagen"
L["ANIM_SIZEX_DESC"] = "Establece cuánto de ancha debería ser la imagen."
L["ANIM_SIZEY"] = "Altura de Imagen"
L["ANIM_SIZEY_DESC"] = "Establece cuándo de alta debería ser la imagen."
L["ANIM_COLOR"] = "Color/Opacidad"
L["ANIM_COLOR_DESC"] = "Configurar el color y la opacidad del destello."
L["ANIM_FADE"] = "Desvanecer Destellos"
L["ANIM_FADE_DESC"] = "Marque para que haya un desvanecimiento suave entre cada destello. Desmarque para destellar instantáneamente."
L["ANIM_INFINITE"] = "Reproducir Indefinidamente"
L["ANIM_INFINITE_DESC"] = "Marque para hacer que la animación se reproduzca hasta que sea sobrescrita por otra animación en el icono del mismo tipo, o hasta que la animación %q sea reproducida. "
L["ANIM_TEX"] = "Textura"
L["ANIM_SCREENSHAKE"] = "Pantalla: Agitar"
L["ANIM_SCREENSHAKE_DESC"] = [=[Agita la pantalla entera cuando se activa. 

NOTA: Esto sólo funcionará si está o bien fuera de combate o bien si las placas de nombre no se han activado en absoluto desde que se conectó. ]=]
L["ANIM_ICONALPHAFLASH"] = "Icono: Destello Alfa"
L["ANIM_ICONALPHAFLASH_DESC"] = "Destella el propio icono cambiando su opacidad. "
L["ANIM_ICONBORDER"] = "Icono: Borde"
L["ANIM_ICONBORDER_DESC"] = "Superpone un borde coloreado al icono. "
L["ANIM_ICONCLEAR"] = "Icono: Detener Animacions"
L["ANIM_ICONCLEAR_DESC"] = "Detiene todas las animaciones que se están reproduciendo en el icono actual. "
L["ANIM_ICONFADE"] = "Icono: Desvanecerse/Aparecer "
L["ANIM_ICONFADE_DESC"] = "Aplica suavemente cualquier cambio de opacidad sucedido con el evento seleccionado. "
L["ANIM_ICONFLASH"] = "Icono: Destello de Color"
L["ANIM_ICONFLASH_DESC"] = "Hace pasar una transparencia coloreada a través del icono."
L["ANIM_ICONOVERLAYIMG"] = "Icono: Superponer Imagen"
L["ANIM_ICONOVERLAYIMG_DESC"] = "Superpone una imagen personalizada sobre el icono."
L["ANIM_ICONSHAKE"] = "Icono: Agitar"
L["ANIM_ICONSHAKE_DESC"] = "Agita el icono cuando se activa. "

L["CHOOSENAME_DIALOG"] = "Introduzca el nombre o la identificación de los hechizos / Capacidad / artículo / Buff / Debuff desea que este icono de la pantalla. Usted puede agregar múltiples Buffs / Debuffs separándolas con';'." -- Needs review
L["CHOOSENAME_DIALOG_DDDEFAULT"] = "Conjuntos predefinidos Hechizo" -- Needs review
L["CHOOSENAME_DIALOG_PETABILITIES"] = "|cFFFF5959HABILIDADES PET|r debe utilizar SpellIDs." -- Needs review
L["CHOOSENAME_EQUIVS_TOOLTIP"] = "Usted puede seleccionar un conjunto predefinido de aficionados / desventajas de este menú." -- Needs review
L["CMD_OPTIONS"] = "Opciones" -- Needs review
L["CONDITIONPANEL_AND"] = "Y"
L["CONDITIONPANEL_ANDOR"] = "Y / O"
L["CONDITIONPANEL_ECLIPSE_DESC"] = [=[Eclipse tiene un rango de -100 (un eclipse lunar) a 100 (un eclipse solar) 
Percentages trabajo de la misma manera:. 
Input -80 si desea que el icono de trabajar con un valor de 80 energía lunar. ]=] -- Needs review
L["CONDITIONPANEL_EQUALS"] = "iguales" -- Needs review
L["CONDITIONPANEL_GREATER"] = "mayor que" -- Needs review
L["CONDITIONPANEL_GREATEREQUAL"] = "Mayor o igual a" -- Needs review
L["CONDITIONPANEL_LESS"] = "menor que"
L["CONDITIONPANEL_LESSEQUAL"] = "Menor o igual a"
L["CONDITIONPANEL_NOTEQUAL"] = "No es igual a" -- Needs review
L["CONDITIONPANEL_OPERATOR"] = "operador" -- Needs review
L["CONDITIONPANEL_OR"] = "O"
L["CONDITIONPANEL_POWER_DESC"] = [=[buscará la energía si la unidad es un druida en forma de gato, 
rage si la unidad es un guerrero, etc]=] -- Needs review
L["CONDITIONPANEL_TYPE"] = "Tipo" -- Needs review
L["CONDITIONPANEL_UNIT"] = "Unidad"
L["ICONMENU_ABSENT"] = "|cFFFF0000Ausente|r" -- Needs review
L["ICONMENU_ALPHA"] = "Alfa" -- Needs review
L["ICONMENU_ALWAYS"] = "Siempre"
L["ICONMENU_BUFF"] = "Buff"
L["ICONMENU_BUFFDEBUFF"] = "Buff / Debuff"
L["ICONMENU_BUFFTYPE"] = "Buff o desventaja?" -- Needs review
L["ICONMENU_CHOOSENAME"] = "Elige hechizo / artículo / beige / etc."
L["ICONMENU_DEBUFF"] = "Desventaja"
L["ICONMENU_ENABLE"] = "Activado" -- Needs review
L["ICONMENU_FOCUSTARGET"] = "Focus' target" -- Needs review
L["ICONMENU_FRIEND"] = "|cFF00FF00Unidades Amigas|r"
L["ICONMENU_HOSTILE"] = "|cFF00FF00Unidades Hostiles|r"
L["ICONMENU_INVERTBARS"] = "Llene barras de arriba" -- Needs review
L["ICONMENU_MANACHECK"] = "Comprobar poder?" -- Needs review
L["ICONMENU_ONLYMINE"] = "Mostrar sólo si se emiten por sí mismo" -- Needs review
L["ICONMENU_PETTARGET"] = "objetivo de mascotas" -- Needs review
L["ICONMENU_PRESENT"] = "|cFF00FF00Present|r"
L["ICONMENU_RANGECHECK"] = "Comprobar Gama?" -- Needs review
L["ICONMENU_REACT"] = "Reacción del Unidad" -- Needs review
L["ICONMENU_REACTIVE"] = "hechizo reactiva o la capacidad" -- Needs review
L["ICONMENU_SHOWTIMER"] = "Mostrar reloj" -- Needs review
L["ICONMENU_SHOWWHEN"] = "Mostrar icono cuando" -- Needs review
L["ICONMENU_STACKS_MAX_DESC"] = "Cantidad máxima de las pilas del aura es necesario para mostrar el icono" -- Needs review
L["ICONMENU_STACKS_MIN_DESC"] = "Número mínimo de las pilas del aura es necesario para mostrar el icono" -- Needs review
L["ICONMENU_TARGETTARGET"] = "El objectivo del objectivo"
L["ICONMENU_TOTEM"] = "Totem / Ghoul no MoG" -- Needs review
L["ICONMENU_TYPE"] = "Icono de tipo" -- Needs review
L["ICONMENU_UNUSABLE"] = "|cFFFF0000Inutilizable|r" -- Needs review
L["ICONMENU_USABLE"] = "|cFF00FF00útil|r"
L["ICONMENU_WPNENCHANT"] = "temporal encantar arma"
L["ICONMENU_WPNENCHANTTYPE"] = "ranura de armas para controlar" -- Needs review
L["ICON_TOOLTIP1"] = "TellMeWhen" -- Needs review
L["RESIZE"] = "tamaño" -- Needs review
L["RESIZE_TOOLTIP"] = "Haz clic y arrastra para cambiar el tamaño" -- Needs review
L["SUG_MATCH_WPNENCH_ENCH"] = "Arma ?d?e? (.*)" -- Needs review
L["SUG_PATTERNMATCH_FISHINGLURE"] = "Cebo de pesca %(%+%d+ habilidad para pescar%)"
L["SUG_PATTERNMATCH_SHARPENINGSTONE"] = "Afilado %(%+%d+ daño%)"
L["SUG_PATTERNMATCH_WEIGHTSTONE"] = "Pesado %(%+%d+ daño%)"
L["UIPANEL_ALLRESET"] = "Restablecer todos los iconos" -- Needs review
L["UIPANEL_BARTEXTURE"] = "Barra de textura" -- Needs review
L["UIPANEL_COLUMNS"] = "Columnas"
L["UIPANEL_DRAWEDGE"] = "Resaltar borde temporizador" -- Needs review
L["UIPANEL_DRAWEDGE_DESC"] = "Destaca el borde del temporizador de tiempo de reutilización (la animación del reloj) para aumentar la visibilidad" -- Needs review
L["UIPANEL_ENABLEGROUP"] = "Habilitar el Grupo"
L["UIPANEL_GROUPRESET"] = "Posición Inicial"
L["UIPANEL_LOCK"] = "AddOn bloqueo" -- Needs review
L["UIPANEL_LOCKUNLOCK"] = "Bloqueo / Desbloqueo AddOn" -- Needs review
L["UIPANEL_ONLYINCOMBAT"] = "Mostrar sólo en combate" -- Needs review
L["UIPANEL_PRIMARYSPEC"] = "Spec primaria" -- Needs review
L["UIPANEL_ROWS"] = "Filas" -- Needs review
L["UIPANEL_SECONDARYSPEC"] = "Spec Secundaria" -- Needs review
L["UIPANEL_SUBTEXT2"] = "Iconos de trabajo una vez cerradas Cuando desbloqueado, puede mover o grupos icono de tamaño y haga clic derecho en los iconos individuales para más opciones de configuración También puede escribir '/tellmewhen' o '/tmw' para bloquear o desbloquear." -- Needs review
L["UIPANEL_TOOLTIP_ALLRESET"] = "restablecer los datos y la posición de todos los iconos" -- Needs review
L["UIPANEL_TOOLTIP_COLUMNS"] = "Establecer el número de columnas de iconos en este grupo"
L["UIPANEL_TOOLTIP_ENABLEGROUP"] = "Mostrar y permitir que este grupo de iconos" -- Needs review
L["UIPANEL_TOOLTIP_GROUPRESET"] = "Restablecer la posición de este grupo" -- Needs review
L["UIPANEL_TOOLTIP_ONLYINCOMBAT"] = "Comprobar para mostrar sólo este grupo de iconos en combate" -- Needs review
L["UIPANEL_TOOLTIP_PRIMARYSPEC"] = "Comprobar para mostrar el resultado de este grupo de iconos, mientras que su especificación primaria está activa" -- Needs review
L["UIPANEL_TOOLTIP_ROWS"] = "Establecer el número de filas en el icono de este grupo" -- Needs review
L["UIPANEL_TOOLTIP_SECONDARYSPEC"] = "Comprobar para mostrar el resultado de este grupo de iconos, mientras que su especificación secundaria está activo" -- Needs review
L["UIPANEL_TOOLTIP_UPDATEINTERVAL"] = "Establece la frecuencia (en segundos) que los iconos son revisados para mostrar / ocultar, alfa, condiciones, etc, no afecta demasiado bares. Cero es tan rápido como sea posible. Los valores más bajos pueden tener un impacto significativo en la tasa de fotogramas de gama baja computadoras " -- Needs review
L["UIPANEL_UPDATEINTERVAL"] = "Intervalo de actualización" -- Needs review
