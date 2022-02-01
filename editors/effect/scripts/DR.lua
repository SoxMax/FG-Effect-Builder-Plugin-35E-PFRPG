function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " ..  number_value.getStringValue()
    if not damage_type_1.isEmpty() and not damage_type_2.isEmpty() then
        effectString = effectString .. " " .. damage_type_1.getValue() .. " " .. and_or.getStringValue() .. " " .. damage_type_2.getValue()
    elseif not damage_type_1.isEmpty() or not damage_type_2.isEmpty() then
        effectString = effectString .. " " .. damage_type_1.getValue() .. damage_type_2.getValue()
    end
    return effectString
end
