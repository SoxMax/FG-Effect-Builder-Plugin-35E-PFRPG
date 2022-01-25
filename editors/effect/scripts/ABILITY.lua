local function createAbilityEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. number_value.getStringValue()
    if not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect_bonus_type.getValue()
    end
    return effectString
end

local function createAbilityCheckEffectString()
    local effectString = "ABL: " .. number_value.getStringValue() .. " " .. DataCommon.ability_stol[parentcontrol.window.effect.getStringValue()]
    if not effect_bonus_type.isEmpty() then
        effectString = effectString .. ", " .. effect_bonus_type.getValue()
    end
    return effectString
end


function createEffectString()
    if check_bonus.getValue() == 0 then
        return createAbilityEffectString()
    else
        return createAbilityCheckEffectString()
    end
end
