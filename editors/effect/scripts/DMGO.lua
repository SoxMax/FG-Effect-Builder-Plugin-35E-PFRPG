function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. dice_value.getStringValue()
    local damageType = damage_types.getStringValue()
    if damageType ~= "" then
        effectString = effectString .. " " .. damageType
    end

    return effectString
end
