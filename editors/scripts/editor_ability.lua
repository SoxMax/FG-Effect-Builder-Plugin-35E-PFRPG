local function createAbilityEffectString()
    local effectString = effect.getStringValue() .. ": " .. effect_modifier.getValue()
    if not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect_bonus_type.getValue()
    end
    return effectString
end

local function createAbilityCheckEffectString()
    local effectString = "ABL: " .. effect_modifier.getValue() .. " " .. DataCommon.ability_stol[effect.getStringValue()]
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
