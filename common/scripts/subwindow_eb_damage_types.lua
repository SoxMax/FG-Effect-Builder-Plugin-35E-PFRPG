local index = 0
local emptyField = nil
local fields = {}

local function createField()
    index = index + 1
    local newField = createControl("subwindow_eb_damage_types_combobox", "damage_type_" .. index)
    fields[newField] = true
    return newField
end

function onInit()
    emptyField = createField()
end

function damageFieldUpdated(updatedField)
    if updatedField == emptyField then
        if not updatedField.isEmpty() then
            emptyField = createField()
            local width = getSize()
            parentcontrol.setAnchoredWidth(width + 100)
        end
    else
        if updatedField.isEmpty() then
            emptyField.destroyCombobox()
            fields[emptyField] = nil
            emptyField = updatedField
            local width = getSize()
            parentcontrol.setAnchoredWidth(width - 100)
        end
    end
end

function getStringValue()
    local fieldList = {}
    for field in pairs(fields) do
        if not field.isEmpty() then
            table.insert(fieldList, field.getValue())
        end
    end
    return table.concat(fieldList, ",")
end
