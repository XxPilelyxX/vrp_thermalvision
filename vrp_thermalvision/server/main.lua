local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")

vRPclient = Tunnel.getInterface("vRP", "vrp_thermalvision")

vRP.defInventoryItem({'thermalvision','Thermalvision','Thermalvision til politi!', function(args)
    
    local choices = {}
    choices['> Tænd'] = {function(player,choice,mod)
        local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerEvent("vrp_thermalvision:useThermalVision", player)
            vRP.closeMenu({player})
        end
    end}

    choices['> Sluk'] = {function(player,choice,mod)
        local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent("vrp_thermalvision:closeThermalVision", player)
            vRP.closeMenu({player})
        end
    end}

    return choices
end, 0.01})