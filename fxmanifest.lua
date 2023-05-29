
fx_version 'cerulean'
game 'gta5'

print("FRAMEWORK INIT LOAD START")
description 'Framework'
version '1.2.6'








-- SERVER MAIN STUFF
shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    'hud.lua',
    'shared/locale.lua',
    'locale/et.lua',
    'locale/*.lua',
    'shared/main.lua',
    'shared/items.lua',
    'shared/jobs.lua',
    'shared/vehicles.lua',
    'shared/gangs.lua',
    'shared/weapons.lua',
    'shared/locations.lua',
    'imports.lua',
}

client_scripts {
    'client/main.lua',
    'controls/cl_playerhud.lua',
    'controls/controls.lua',
    'client/functions.lua',
    'client/loops.lua',
    'client/events.lua',
    'client/drawtext.lua',
    'client/pl_hud.lua',
    'client/gameplay.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'controls/sv_controls.lua',
    'server/functions.lua',
    'server/player.lua',
    'server/events.lua',
    'server/commands.lua',
    'server/exports.lua',
    'server/debug.lua',
    'server/sv_db.lua',
    'server/db_init.lua',
}






dependency 'oxmysql'

lua54 'yes'
