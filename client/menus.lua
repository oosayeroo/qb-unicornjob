local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = false

-- target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("VunicornDuty", vector3(128.55, -1279.62, 29.40), 1, 1.2, {
		name = "VunicornDuty",
		heading = 23.78,
		debugPoly = false,
		minZ=29.0,
		maxZ=30.3,
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

		exports['qb-target']:AddBoxZone("drinkstable1", vector3(124.33, -1284.02, 29.27), 1.05, 1.0, {
			name = "drinkstable1", 
			heading = 83.0,
			debugPoly = false,
			minZ=28.8,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table1",
				icon = "far fa-clipboard",
				label = "Table 1",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable2", vector3(125.94, -1286.87, 29.27), 1.05, 1.0, {
			name = "drinkstable2", 
			heading = 161.0,
			debugPoly = false,
			minZ=28.8,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table2",
				icon = "far fa-clipboard",
				label = "Table 2",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable3", vector3(123.46, -1294.98, 29.69), 1.05, 1.0, {
			name = "drinkstable3", 
			heading = 30.0,
			debugPoly = false,
			minZ=28.0,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table3",
				icon = "far fa-clipboard",
				label = "Table 3",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable4", vector3(120.03, -1296.87, 29.73), 1.05, 1.0, {
			name = "drinkstable4", 
			heading = 30.0,
			debugPoly = false,
			minZ=28.0,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table4",
				icon = "far fa-clipboard",
				label = "Table 4",
			    },
			},
			distance = 1.5
		}) 

        exports['qb-target']:AddBoxZone("drinkstable5", vector3(122.36, -1287.58, 28.26), 1.05, 1.0, {
			name = "drinkstable5", 
			heading = 30.0,
			debugPoly = false,
			minZ=27.5,
			maxZ=29.5,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table5",
				icon = "far fa-clipboard",
				label = "Table 5",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable6", vector3(120.98, -1285.01, 28.68), 1.05, 1.0, {
			name = "drinkstable56", 
			heading = 30.0,
			debugPoly = false,
			minZ=27.5,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table6",
				icon = "far fa-clipboard",
				label = "Table 6",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable7", vector3(117.57, -1282.94, 29.17), 1.05, 1.0, {
			name = "drinkstable7", 
			heading = 30.0,
			debugPoly = false,
			minZ=27.5,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table7",
				icon = "far fa-clipboard",
				label = "Table 7",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable8", vector3(112.86, -1282.9, 28.88), 1.05, 1.0, {
			name = "drinkstable8", 
			heading = 30.0,
			debugPoly = false,
			minZ=27.5,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table8",
				icon = "far fa-clipboard",
				label = "Table 8",
			    },
			},
			distance = 2.0
		}) 

        exports['qb-target']:AddBoxZone("drinkstable9", vector3(115.86, -1286.87, 28.88), 1.05, 1.0, {
			name = "drinkstable9", 
			heading = 30.0,
			debugPoly = false,
			minZ=27.5,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table9",
				icon = "far fa-clipboard",
				label = "Table 9",
			    },
			},
			distance = 2.0
		}) 


        exports['qb-target']:AddBoxZone("drinkstable10", vector3(116.44, -1291.5, 28.68), 1.05, 1.0, {
			name = "drinkstable10", 
			heading = 30.0,
			debugPoly = false,
			minZ=27.5,
			maxZ=30.0,
		}, {
			options = {
			    {
				event = "qb-unicornjob:Table10",
				icon = "far fa-clipboard",
				label = "Table 10",
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
			icon = "fas fa-cocktail",
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

        exports['qb-target']:AddBoxZone("vunicornstorage", vector3(130.26, -1285.33, 29.27), 4.6, 1.2, {
            name="vunicornstorage",
            heading=123.54,
            debugPoly=false,
            minZ=28.8,
			maxZ=29.5,
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
                        icon = "fas fa-cocktail",
                        label = "Classic Cocktails",
                        job = "vunicorn",
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("vunicorn_register", vector3(133.25, -1285.96, 29.77), 0.5, 0.4, {
            name="vunicorn_register",
            debugPoly=false,
            heading=301,
            minZ=29.0,
            maxZ=30.7,
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

