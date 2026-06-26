function createEffectString()
    local tag = parentcontrol.window.effect.getStringValue() .. turn_timing.getStringValue()
    local effectString = tag .. ": " .. dice_value.getStringValue()
    local damageType = damage_types.getStringValue()
    if damageType ~= "" then
        effectString = effectString .. " " .. damageType
    end

    return effectString
end
