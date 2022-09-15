local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = false
PlayerJob = {}

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    Unicorn = AddBlipForCoord(131.58, -1303.13, 29.23)
    SetBlipSprite (Unicorn, 121)
    SetBlipDisplay(Unicorn, 4)
    SetBlipScale  (Unicorn, 0.7)
    SetBlipAsShortRange(Unicorn, true)
    SetBlipColour(Unicorn, 8)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Unicorn")
    EndTextCommandSetBlipName(Unicorn)
end)


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "vunicorn" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

RegisterNetEvent("qb-unicornjob:DutyB")
AddEventHandler("qb-unicornjob:DutyB", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-unicornjob:Table1")
AddEventHandler("qb-unicornjob:Table1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table2")
AddEventHandler("qb-unicornjob:Table2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable2", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table4")
AddEventHandler("qb-unicornjob:Table4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table3")
AddEventHandler("qb-unicornjob:Table3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable3", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table5")
AddEventHandler("qb-unicornjob:Table5", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable5", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table6")
AddEventHandler("qb-unicornjob:Table6", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable6")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable6", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table7")
AddEventHandler("qb-unicornjob:Table7", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable7")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable7", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table8")
AddEventHandler("qb-unicornjob:Table8", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable8")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable8", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table9")
AddEventHandler("qb-unicornjob:Table9", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable9")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable9", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Table10")
AddEventHandler("qb-unicornjob:Table10", function()
    TriggerEvent("inventory:client:SetCurrentStash", "drinkstable10")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "drinkstable10", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Storage")
AddEventHandler("qb-unicornjob:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "vunicornstorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vunicornstorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-unicornjob:Storage2")
AddEventHandler("qb-unicornjob:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "vunicornstorage2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vunicornstorage2", {
        maxweight = 250000,
        slots = 40,
    })
end)

CreateThread(function()
    if Config.VUDrawText == "enabled" then 
        while true do
            sleep = 100
            local pos = GetEntityCoords(PlayerPedId())
            local PlayerData = QBCore.Functions.GetPlayerData()
  
                if PlayerJob.name == Config.JobName then
                    for k, v in pairs(Config.VunicornLocations["vunicorn-duty"]) do
                        local dist = #(pos - v)
                            if dist < 1.8 then
                              DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 16, 227, 86, 86, false, false, false, true, false, false, false)                              if dist < 1.8 then
                                    sleep = 5
                                    if not onDuty then
                                        QBCore.Functions.DrawText3D(v.x, v.y, v.z +0.2, "~g~E~w~ - Go on duty")
                                        --QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~r~E~w~ - Go off duty")
                                    else
                                        QBCore.Functions.DrawText3D(v.x, v.y, v.z +0.2, "~r~E~w~ - Go off duty")
                                        --QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Go on duty")
                                    end
                                    if IsControlJustReleased(0, 38) then
                                        onDuty = not onDuty
                                        TriggerServerEvent("QBCore:ToggleDuty")
                                    end
                                end
                            elseif #(pos - v) < 1.5 then
                                sleep = false
                                QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Time Clock")
                            end
                        end
                    end
  
                if PlayerJob.name == Config.JobName and QBCore.Functions.GetPlayerData().job.onduty then
                for k, v in pairs(Config.VunicornLocations["drinks-1"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 0.8 then
                      sleep = 5
                      QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~[E]~w~ - Original Cocktails")
                        if IsControlJustReleased(0, 38) then
                            TriggerEvent("qb-menu:Homebrewed")
                        end
                    elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Original Cocktails")
                    end
                  end
  
                for k, v in pairs(Config.VunicornLocations["vunicorn-menu"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 0.9 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~[E]~w~ - Access Menu")
                        if IsControlJustReleased(0, 38) then
                            TriggerEvent("qb-menu:OrderMenu")
                        end
                    elseif #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Access Menu")
                    end
                end
  
                for k, v in pairs(Config.VunicornLocations["vunicorn-storage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~[E]~w~ - Open Storage")
                        if IsControlJustReleased(0, 38) then
                            TriggerEvent("qb-unicornjob:Storage")
                        end
                    elseif #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Open Storage")
                    end
                end
  
                for k, v in pairs(Config.VunicornLocations["drinks-2"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~[E]~w~ - Classic Cocktails")
                        if IsControlJustReleased(0, 38) then
                            TriggerEvent("qb-menu:V-Classics")
                        end
                    elseif #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Classic Cocktails")
                    end
                end
  
                  for k, v in pairs(Config.VunicornLocations["vunicorn-register"]) do
                      if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                          sleep = 5
                          QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~[E]~w~ - Charge Customer")
                          if IsControlJustReleased(0, 38) then
                              TriggerEvent("qb-unicornjob:bill")
                          end
                      elseif #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                          sleep = 5
                          QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Charge Customer")
                      end
                  end
 
                for k, v in pairs(Config.VunicornLocations["vunicorn-garage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 1.0 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "~g~[E]~w~ - Access Garage")
                        if IsControlJustReleased(0, 38) then
                          TriggerEvent("qb-unicornjob:garage")
                        end
                    elseif #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                        sleep = 5
                        QBCore.Functions.DrawText3D(v.x, v.y, v.z, "Access Garage")
                    end
                end
            end
        Wait(sleep)
    end
    end
  end)

RegisterNetEvent('qb-unicornjob:v-shots-pack', function()
    QBCore.Functions.Progressbar('name_here', 'Opening a pack of shots...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mini@repair',
        anim = 'fixing_a_ped',
        flags = 16,
    }, {}, {}, function()
		TriggerServerEvent('qb-unicornjob:server:shotpack')
        QBCore.Functions.Notify('You opened a pack of shots!', 'primary', 7500)
        ClearPedTasks(PlayerPedId())
    end)
end)


RegisterNetEvent('qb-unicornjob:vodka-crate', function()
    QBCore.Functions.Progressbar('name_here', 'Opening a crate of vodka...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mini@repair',
        anim = 'fixing_a_ped',
        flags = 16,
    }, {}, {}, function()
		TriggerServerEvent('qb-unicornjob:server:vodkacrate')
        QBCore.Functions.Notify('You opened a pack of vodka!', 'primary', 7500)
        ClearPedTasks(PlayerPedId())
    end)
end)


RegisterNetEvent('qb-unicornjob:whiskey-box', function()
    QBCore.Functions.Progressbar('name_here', 'Opening a box of whiskey...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mini@repair',
        anim = 'fixing_a_ped',
        flags = 16,
    }, {}, {}, function()
		TriggerServerEvent('qb-unicornjob:server:whiskeybox')
        QBCore.Functions.Notify('You opened a box of whiskey!', 'primary', 7500)
        ClearPedTasks(PlayerPedId())
    end)
end)


RegisterNetEvent('qb-unicornjob:beer-crate', function()
    QBCore.Functions.Progressbar('name_here', 'Opening a crate of beer...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mini@repair',
        anim = 'fixing_a_ped',
        flags = 16,
    }, {}, {}, function()
		TriggerServerEvent('qb-unicornjob:server:beerbox')
        QBCore.Functions.Notify('You opened a crate of beer!', 'primary', 7500)
        ClearPedTasks(PlayerPedId())
    end)
end)


RegisterNetEvent('qb-unicornjob:tequila-crate', function()
    QBCore.Functions.Progressbar('name_here', 'Opening a crate of tequila...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mini@repair',
        anim = 'fixing_a_ped',
        flags = 16,
    }, {}, {}, function()
		TriggerServerEvent('qb-unicornjob:server:tequilacrate')
        QBCore.Functions.Notify('You opened a crate of tequila!', 'primary', 7500)
        ClearPedTasks(PlayerPedId())
    end)
end)


RegisterNetEvent('qb-unicornjob:fruit-box', function()
    QBCore.Functions.Progressbar('name_here', 'Opening a box of fruit...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mini@repair',
        anim = 'fixing_a_ped',
        flags = 16,
    }, {}, {}, function()
		TriggerServerEvent('qb-unicornjob:server:fruitbox')
        QBCore.Functions.Notify('You opened a box of fruit!', 'primary', 7500)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("qb-unicornjob:MakeEspressoMartini")
AddEventHandler("qb-unicornjob:MakeEspressoMartini", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientEspressoMartini', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making An Espresso Martini..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:espresso')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-espressomartini"], "add")
                    			QBCore.Functions.Notify("You made a An Espresso Martini", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-unicornjob:MakeMargarita")
AddEventHandler("qb-unicornjob:MakeMargarita", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientmargarita', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Margarita..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:margaritatata')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-margarita"], "add")
                    			QBCore.Functions.Notify("You made a Margarita", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeManhattan")
AddEventHandler("qb-unicornjob:MakeManhattan", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientManhattan', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Manhattan..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:manhattan')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-manhattan"], "add")
                    			QBCore.Functions.Notify("You made a Manhattan", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeOldFashioned")
AddEventHandler("qb-unicornjob:MakeOldFashioned", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientOldFashioned', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Old Fashioned..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:oldfash')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-oldfashioned"], "add")
                    			QBCore.Functions.Notify("You made an Old Fashioned", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeSparkles")
AddEventHandler("qb-unicornjob:MakeSparkles", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientSparkles', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Sparkles..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:sparkle')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-sparkles"], "add")
                    			QBCore.Functions.Notify("You made a Sparkles", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeUnicorn")
AddEventHandler("qb-unicornjob:MakeUnicorn", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientUnicorn', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Unicorn..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:unicorndrink')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-unicorn"], "add")
                    			QBCore.Functions.Notify("You made a Unicorn", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeDancerz")
AddEventHandler("qb-unicornjob:MakeDancerz", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientDancerz', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Dancerz..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:dancerzz')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-dancerz"], "add")
                    			QBCore.Functions.Notify("You made a Dancerz", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeHulk")
AddEventHandler("qb-unicornjob:MakeHulk", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientHulk', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Hulk..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:hulkmake')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-hulk"], "add")
                    			QBCore.Functions.Notify("You made a Hulk", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-unicornjob:MakeClass")
AddEventHandler("qb-unicornjob:MakeClass", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientClass', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Class..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-unicornjob:server:unicorndrink')
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["v-class"], "add")
                    			QBCore.Functions.Notify("You made a Class", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)
   
RegisterNetEvent("qb-unicornjob:shop")
AddEventHandler("qb-unicornjob:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "vunicorn", Config.UnicornItems)
end)
