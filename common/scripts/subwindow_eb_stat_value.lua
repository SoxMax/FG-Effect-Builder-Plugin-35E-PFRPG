function getStringValue()
    local valueString = stat_value.getStringValue()
    if valueString ~= "" then
        local sign = multiply_divide.getStringValue()
        local factor_value = factor.getValue()
        if sign == "x" and factor_value >= 2 then
            valueString = factor_value .. valueString
        elseif sign == "/" then
            valueString = "H" .. valueString
        end
        valueString = "[" .. plus_minus.getStringValue() .. valueString .."]"
    end
    return valueString
end
