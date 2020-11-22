RegisterNetEvent('vrp_thermalvision:useThermalVision')
AddEventHandler('vrp_thermalvision:useThermalVision', function()
	SetNightvision(true)
	SetSeethrough(true)
end)

RegisterNetEvent('vrp_thermalvision:closeThermalVision')
AddEventHandler('vrp_thermalvision:closeThermalVision', function()
	if IsNightvisionActive() then
		SetNightvision(false)
		SetSeethrough(false)
	end
end)
