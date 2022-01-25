function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. number_value.getStringValue()
    local save_type = save.getStringValue()
    if save_type ~= "" and not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. save_type .. "," .. effect_bonus_type.getValue()
    elseif save_type ~= "" then
        effectString = effectString .. " " .. save_type
    elseif not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect_bonus_type.getValue()
    end
    return effectString
end
