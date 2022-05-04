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

RegisterNetEvent("qb-unicornjob:Tray1")
AddEventHandler("qb-unicornjob:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "vunicorntray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vunicorntray1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Tray4")
AddEventHandler("qb-unicornjob:Tray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "vunicorntray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vunicorntray4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-unicornjob:Tray3")
AddEventHandler("qb-unicornjob:Tray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "vunicorntray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vunicorntray3", {
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

--Meal Creations
RegisterNetEvent("qb-unicornjob:v-shots-pack")
AddEventHandler("qb-unicornjob:v-shots-pack", function()
		local randomToy = math.random(10,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "v-shots-pack", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "shot-absinthe", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "shot-snakebite", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "shot-redsnapper", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "shot-fireball", 1)
end)

RegisterNetEvent("qb-unicornjob:vodka-crate")
AddEventHandler("qb-unicornjob:vodka-crate", function()
		local randomToy = math.random(10,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "vodka-crate", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "vodka", 10)
end)

RegisterNetEvent("qb-unicornjob:whiskey-box")
AddEventHandler("qb-unicornjob:whiskey-box", function()
		local randomToy = math.random(10,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "whiskey-box", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "whiskey", 6)
end)

RegisterNetEvent("qb-unicornjob:beer-crate")
AddEventHandler("qb-unicornjob:beer-crate", function()
		local randomToy = math.random(10,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "beer-crate", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "beer", 12)
end)

RegisterNetEvent("qb-unicornjob:tequila-crate")
AddEventHandler("qb-unicornjob:tequila-crate", function()
		local randomToy = math.random(10,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "tequila-crate", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "tequila", 8)
end)

RegisterNetEvent("qb-unicornjob:fruit-box")
AddEventHandler("qb-unicornjob:fruit-box", function()
		local randomToy = math.random(10,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "fruit-box", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "fruit-mix", 20)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "coffee", 1)
                    			TriggerServerEvent('QBCore:Server:RemoveItem', "vodka", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-espressomartini", 1)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "tequila", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "fruit-mix", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-margarita", 1)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "whiskey", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-manhattan", 1)
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
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientOldFasioned', function(HasItems)  
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "whiskey", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-bitter", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-oldfashioned", 1)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "vodka", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "fruit-mix", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-sparkles", 1)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "whiskey", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "fruit-mix", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-unicorn", 1)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "beer", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "vodka", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-bitter", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-dancerz", 1)
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
    	QBCore.Functions.TriggerCallback('qb-unicornjob:server:get:ingredientOldFasioned', function(HasItems)  
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "whiskey", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "vodka", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-hulk", 1)
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
					TriggerServerEvent('QBCore:Server:RemoveItem', "fruit-mix", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "v-sugar-syrup", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "coffee", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "v-class", 1)
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
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "vunicorn", Config.Items)
end)
