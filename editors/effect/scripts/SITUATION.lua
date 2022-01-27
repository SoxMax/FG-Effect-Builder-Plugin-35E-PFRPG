function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue()
    local effectRange = effect_range.getStringValue()
    if effectRange ~= "" then
        effectString = effectString .. ": " .. effectRange
    end
    return effectString
end
