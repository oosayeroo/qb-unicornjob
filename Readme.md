https://discord.gg/3WYz3zaqG5

# Updated - 06/07/22 - Added progress bar to opening items thanks to "TheManHimself" for putting it together.

# A Vanilla Unicorn Job for QBCore Framework




## Please note

- Please make sure u use the latest dependencies aswell as core for this in order to work.

- This Job has been tested on the latest build as of 4/5/2022.


## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target (Only needed if not using draw text)

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu


## Credits : 

- AndyaUK for his amazing help in ideas, snippets, morale and everything inbetween.
- TheManHimself for adding progress bar when opening items

## Insert into @qb-smallresources --> server --> consumables.lua
```
QBCore.Functions.CreateUseableItem("v-class", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:Drink", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-hulk", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-dancerz", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-unicorn", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-sparkles", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-oldfashioned", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-manhattan", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-espressomartini", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("v-margarita", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("shot-absinthe", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("shot-fireball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("shot-snakebite", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("shot-redsnapper", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)
```



## Insert into @qb-smallresources --> config.lua
```
Consumeables = {

ConsumeablesDrink = {

    ["v-class"] = math.random(30, 40),
}

ConsumeablesAlcohol = {
    ["v-hulk"] = math.random(30, 40),
    ["v-dancerz"] = math.random(30, 40),
    ["v-unicorn"] = math.random(30, 40),
    ["v-sparkles"] = math.random(30, 40),
    ["v-oldfashioned"] = math.random(30, 40),
    ["v-margarita"] = math.random(30, 40),
    ["v-manhattan"] = math.random(30, 40),
    ["v-espressomartini"] = math.random(30, 40),
    ["shot-absinthe"] = math.random(30, 40),
    ["shot-redsnapper"] = math.random(30, 40),
    ["shot-snakebite"] = math.random(30, 40),
    ["shot-fireball"] = math.random(30, 40),
} 
```

## Insert into @qb-core/shared/items.lua 

```
QBShared.Items = {
-- Vanilla Unicorn Job
["v-shots-pack"] 		    	 = {["name"] = "v-shots-pack", 		        	["label"] = "Shots Pack", 		    	["weight"] = 1600, 		["type"] = "item", 		["image"] = "v-shots-pack.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Pack of 8 Shots. 2 of Each Flavour"},
	["shot-absinthe"] 		 	     = {["name"] = "shot-absinthe", 		    	["label"] = "Absinthe Shot", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "shot-absinthe.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Shot of Absinthe."},
	["shot-snakebite"] 		    	 = {["name"] = "shot-snakebite", 	    		["label"] = "Snakebite Shot", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "shot-snakebite.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Shot of Snake Bite."},
	["shot-redsnapper"] 		 	 = {["name"] = "shot-redsnapper", 	    		["label"] = "RedSnapper Shot", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "shot-redsnapper.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Shot of Red Snapper."},
	["shot-fireball"] 		    	 = {["name"] = "shot-fireball", 	    		["label"] = "Fireball Shot", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "shot-frieball.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Shot of Fireball."},
	["vodka-crate"] 		    	 = {["name"] = "vodka-crate", 		        	["label"] = "Vodka Crate", 		    	["weight"] = 2000, 		["type"] = "item", 		["image"] = "vodka-crate.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Crate of 10 Vodka Bottles"},
	["whiskey-box"] 		    	 = {["name"] = "whiskey-box", 		        	["label"] = "Whiskey Box", 		    	["weight"] = 1600, 		["type"] = "item", 		["image"] = "whiskey-box.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Box of 6 Whiskey Bottles"},
	["beer-crate"] 		        	 = {["name"] = "beer-crate", 		        	["label"] = "Beer Crate", 		    	["weight"] = 1800, 		["type"] = "item", 		["image"] = "beer-crate.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Crate of 12 Beers"},
	["fruit-box"] 		        	 = {["name"] = "fruit-box", 		        	["label"] = "Fruit Box", 		    	["weight"] = 2000, 		["type"] = "item", 		["image"] = "fruit-box.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Crate of 20 Fruit Mixes for Drinks"},
	["fruit-mix"] 		        	 = {["name"] = "fruit-mix", 		        	["label"] = "Fruit Mix", 		    	["weight"] = 100, 		["type"] = "item", 		["image"] = "fruit-mix.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Mix of Fruits"},
	["tequila"] 		        	 = {["name"] = "tequila", 		        	    ["label"] = "Tequila", 		         	["weight"] = 600, 		["type"] = "item", 		["image"] = "tequila.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Good Time"},
	["tequila-crate"] 		       	 = {["name"] = "tequila-crate", 		       	["label"] = "Tequila Crate", 		   	["weight"] = 3000, 		["type"] = "item", 		["image"] = "tequila-crate.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Crate of 8 Tequila Bottles"},
	["v-sugar-syrup"] 		       	 = {["name"] = "v-sugar-syrup", 		       	["label"] = "Sugar Syrup", 		    	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-sugar-syrup.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "syrup for making cocktails"},
	["v-margarita"] 		       	 = {["name"] = "v-margarita", 		        	["label"] = "Margarita", 		    	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-margarita.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Margarita Cocktail"},
	["v-espressomartini"] 		   	 = {["name"] = "v-espressomartini", 		   	["label"] = "Espresso Martini", 	   	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-espressomartini.png",    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Espresso Martini Cocktail"},
	["v-manhattan"] 		       	 = {["name"] = "v-manhattan", 		        	["label"] = "Manhattan", 		    	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-manhattan.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Manhattan Cocktail"},
	["v-oldfasioned"] 		       	 = {["name"] = "v-oldfashioned", 		       	["label"] = "Old Fashioned", 		   	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-oldfashioned.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A Old Fashioned Cocktail"},
	["v-bitter"] 		         	 = {["name"] = "v-bitter", 		              	["label"] = "Bitter", 		        	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-bitter.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bitter For Making Cocktails"},
	["v-sparkles"] 		         	 = {["name"] = "v-sparkles", 		           	["label"] = "Sparkles", 		       	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-sparkles.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sparkles Cocktail"},
	["v-unicorn"] 		         	 = {["name"] = "v-unicorn", 		           	["label"] = "Unicorn", 		        	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-unicorn.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Unicorn Cocktail"},
	["v-dancerz"] 		         	 = {["name"] = "v-dancerz", 		           	["label"] = "Dancerz", 		        	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-dancerz.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Dancerz Cocktail"},
	["v-hulk"] 		             	 = {["name"] = "v-hulk", 		              	["label"] = "Hulk", 		        	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-hulk.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hulk Cocktail"},
	["v-class"] 		         	 = {["name"] = "v-class", 		              	["label"] = "Class", 		        	["weight"] = 100, 		["type"] = "item", 		["image"] = "v-class.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Class Non-Alcoholic Cocktail"},
	
}

```
## Insert into @qb-core/shared/jobs.lua 
```
QBShared.Jobs = {
    ['vunicorn'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 25
            },
			['1'] = {
                name = 'Employee',
                payment = 40
            },
			['2'] = {
                name = 'Bar Staff',
                payment = 50
            },
			['3'] = {
                name = 'Dancer',
                payment = 80
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100
            },
            ['5'] = {
                name = 'Owner',
				isboss = true,
                payment = 150
            },
        },
	},
}		
```
