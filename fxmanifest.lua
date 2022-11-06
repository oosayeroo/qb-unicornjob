fx_version 'cerulean'
game 'gta5'

author 'oosayeroo'
description 'qb-unicornjob by oosayeroo'
version '2.1.3'

shared_scripts {
    'config.lua'
}

client_scripts {
	'client/main.lua',
	'client/garage.lua',
	'client/menus.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
