function onInit()
    updateSizeMode()
end

function updateSizeMode()
    local isStep = size_mode.getStringValue() == "Step"
    number_value.setVisible(isStep)
    size.setVisible(not isStep)
end

function createEffectString()
    local base = parentcontrol.window.effect.getStringValue() .. ": "
    if size_mode.getStringValue() == "Step" then
        return base .. number_value.getStringValue()
    end
    return base .. size.getValue()
end
