function createEffectString()
    local base = parentcontrol.window.effect.getStringValue() .. ": "
    if size_mode.getStringValue() == "Step" then
        return base .. number_value.getStringValue()
    end
    return base .. size.getValue()
end
