local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = false

-- target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("VunicornDuty", vector3(128.28, -1279.72, 29.27), 1, 1.2, {
		name = "VunicornDuty",
		heading = 23.78,
		debugPoly = false,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {  
			event = "qb-unicornjob:DutyB",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "vunicorn",
		    },
		},
		distance = 1.5
	})

		exports['qb-target']:AddBoxZone("drinks_tray_1", vector3(130.26, -1285.33, 29.27), 1.05, 1.0, {
			name = "drinks_tray_1",
			heading = 123.0,
			debugPoly = false,
			minZ=28.8,
			maxZ=29.5,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Tray1",
				icon = "far fa-clipboard",
				label = "Tray 1",
			    },
			},
			distance = 2.0
		})


	exports['qb-target']:AddBoxZone("vhomebrewed", vector3(129.98, -1282.18, 29.27), 2.2, 0.6, {
	    name="vhomebrewed",
	    heading=300,
	    debugPoly=false,
	    minZ=28.8,
	    maxZ=29.8,
	    }, {
		options = {
		    {
			event = "qb-menu:Homebrewed",
			icon = "fas fa-filter",
			label = "Original Cocktails",
			job = "vunicorn",
		    },
		},
		distance = 1.5
	    })


         exports['qb-target']:AddBoxZone("vordermenu", vector3(94.98, -1292.79, 29.26), 1.6, 1, {
            name="vordermenu",
            heading=271,
            debugPoly=false,
            minZ=28.0,
            maxZ=30.0,
        }, {
                options = {
                    {
                        event = "qb-menu:OrderMenu",
                        icon = "fas fa-laptop",
                        label = "Order Ingredients!",
                        job = "vunicorn",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("vunicornstorage", vector3(93.18, -1291.51, 29.26), 4.6, 1.2, {
            name="vunicornstorage",
            heading=22.54,
            debugPoly=false,
            minZ=28.0,
            maxZ=30.0,
        }, {
                options = {
                    {
                        event = "qb-unicornjob:Storage",
                        icon = "fas fa-box",
                        label = "Storage",
                        job = "vunicorn",
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("classicmenu", vector3(128.69, -1282.7, 29.27), 1.8, 0.7, {
            name="classicmenu",
            heading=123,
            debugPoly=false,
            minZ=28.5,
            maxZ=29.5,
        }, {
                options = {
                    {
                        event = "qb-menu:V-Classics",
                        icon = "fas fa-cheeseburger",
                        label = "Classic Cocktails",
                        job = "vunicorn",
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("vunicorn_register", vector3(132.54, -1286.42, 29.27), 0.5, 0.4, {
            name="vunicorn_register",
            debugPoly=false,
            heading=301,
            minZ=29.0,
            maxZ=29.7,
        }, {
                options = {
                    {
                        event = "qb-unicornjob:bill",
                        parms = "1",
                        icon = "fas fa-credit-card",
                        label = "Charge Customer",
                        job = "vunicorn",
                    },
                },
                distance = 1.5
            })

end)


-- QB-MENU --

RegisterNetEvent('qb-menu:V-Classics', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Classic Cocktails |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Espresso Martini",
            txt = "Vodka, Coffee",
            params = {
                event = "qb-unicornjob:MakeEspressoMartini"
            }
        },
        {
            
            header = "• Margarita",
            txt = "Tequila, Syrup, Fruit Mix",
            params = {
                event = "qb-unicornjob:MakeMargarita"
            }
        },
        {
            
            header = "• Manhattan",
            txt = "Whiskey, Syrup",
            params = {
                event = "qb-unicornjob:MakeManhattan"
            }
        },
        {
            
            header = "• Old Fashioned",
            txt = "Whiskey, Syrup",
            params = {
                event = "qb-unicornjob:MakeOldFashioned"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)


RegisterNetEvent('qb-menu:OrderMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Fridge |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Order Items",
            txt = "Order New Ingredients!",
            params = {
                event = "qb-unicornjob:shop"
            }
        },
        {
           
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-unicornjob:Storage2"
            }
        },
        {
            
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

RegisterNetEvent('qb-menu:Homebrewed', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "| Original Cocktails |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Sparkles",
            txt = "Vodka, Syrup, Fruit",
            params = {
                event = "qb-unicornjob:MakeSparkles"
            }
        },
        {
            
            header = "• Unicorn",
            txt = "Whiskey, Syrup, Fruit",
            params = {
                event = "qb-unicornjob:MakeUnicorn"
            }
        },
        {
            
            header = "• Dancerz",
            txt = "Beer, Vodka Bitter",
            params = {
                event = "qb-unicornjob:MakeDancerz"
            }
        },
        {
            
            header = "• Hulk",
            txt = "Whiskey, Syrup, Vodka",
            params = {
                event = "qb-unicornjob:MakeHulk"
            }
        },
        {
            
            header = "• Class Non Alc",
            txt = "Fruit, Syrup, Coffee",
            params = {
                event = "qb-unicornjob:MakeClass"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)


-- Till Stuff --
RegisterNetEvent("qb-unicornjob:bill")
AddEventHandler("qb-unicornjob:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-unicornjob:bill:player", bill.citizenid, bill.billprice)
    end
end)

