function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
    if not damage_type.isEmpty() then
        effectString = effectString .. " " damage_type.getValue()
    end
    return effectString
end
