local function adjustItem(Name, Property, Value)
    local Item = ScriptManager.instance:getItem(Name)
    print(Item)
    Item:DoParam(Property .. " = " .. Value)
end

local function initCustomConsumption()
    adjustItem("Base.Torch", "UseDelta", 0.0009 * 0.1)
    adjustItem("Base.HandTorch", "UseDelta", 0.0004 * 0.1)
end

Events.OnInitGlobalModData.Add(initCustomConsumption)
