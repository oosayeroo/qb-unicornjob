local QBCore = exports['qb-core']:GetCoreObject()
PlayerData = {}
local pedspawned = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
function QBCore.Functions.GetPlayerData(cb)
    if cb then
        cb(QBCore.PlayerData)
    else
        return QBCore.PlayerData
    end
end

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
     	PlayerData.job = job
end)

RegisterNetEvent('QBCore:Player:SetPlayerData')
AddEventHandler('QBCore:Player:SetPlayerData', function(val)
	PlayerData = val
end)

Citizen.CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = Config.GarageModel,
        coords = Config.GarageLocation, 
        minusOne = true, --may have to change this if your ped is in the ground
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND',
        target = { 
            options = {
                {
                    type="client",
                    event = "garage:V-UnicornGarage",
                    icon = "fas fa-car",
                    label = "Big Larry"
                }
            },
          distance = 2.5,
        },
    })
end)

RegisterNetEvent('qb-unicornjob:garage')
AddEventHandler('qb-unicornjob:garage', function(vu)
    local vehicle = vu.vehicle
    local coords = vector4(141.87, -1279.58, 29.29, 300.03)
        if PlayerData.job.name == "vunicorn" then
            if vehicle == 'schafter3' then		
                QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                    SetVehicleNumberPlateText(veh, "GIRLZZ"..tostring(math.random(1000, 9999)))
                    exports['LegacyFuel']:SetFuel(veh, 100.0)
                    SetEntityHeading(veh, coords.w)
                    TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                    SetVehicleEngineOn(veh, true, true)
                end, coords, true)
            end
        else
            QBCore.Functions.Notify('You are not an employee of Vanilla Unicorn.', 'error')
        end
end)

RegisterNetEvent('qb-unicornjob:garage2')
AddEventHandler('qb-unicornjob:garage2', function(vu)
    local vehicle = vu.vehicle
    local coords = vector4(142.03, -1282.91, 28.82, 300.45)
        if PlayerData.job.name == "vunicorn" then
            if vehicle == 'toros' then		
                QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                    SetVehicleNumberPlateText(veh, "GIRLZZ"..tostring(math.random(1000, 9999)))
                    exports['LegacyFuel']:SetFuel(veh, 100.0)
                    SetEntityHeading(veh, coords.w)
                    TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                    SetVehicleEngineOn(veh, true, true)
                end, coords, true)
            end
        else
            QBCore.Functions.Notify('You are not an employee of Vanilla Unicorn.', 'error')
        end
end)

RegisterNetEvent('qb-unicornjob:storecar')
AddEventHandler('qb-unicornjob:storecar', function()
    QBCore.Functions.Notify('Work Vehicle Stored!')
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    NetworkFadeOutEntity(car, true,false)
    Citizen.Wait(2000)
    QBCore.Functions.DeleteVehicle(car)
end)

RegisterNetEvent('garage:V-UnicornGarage', function()
    exports['qb-menu']:openMenu({
        {
            header = "| V Unicorn Garage |",
            isMenuHeader = true, 
        },
        {
            header = "• Schafter V12",
            txt = "Sexy Luxury Vehicle",
            params = {
                event = "qb-unicornjob:garage",
                args = {
                    vehicle = 'schafter3',
                }
            }
        },
        {
            header = "• Toros",
            txt = "Luxury Transport",
            params = {
                event = "qb-unicornjob:garage2",
                args = {
                    vehicle = 'toros',
                }
            }
        },
        {
            header = "• Store Vehicle",
            txt = "Store Vehicle Inside Garage",
            params = {
                event = "qb-unicornjob:storecar",
                args = {
                    
                }
            }
        },	
        {
            header = "Close (ESC)",
            isMenuHeader = true,
        },	
    })
end)
