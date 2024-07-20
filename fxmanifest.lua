fx_version 'cerulean'
game 'gta5'

description 'Shop closing / opening time with npwd notification'

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}


client_scripts { 
  "client/*.lua"
}

server_scripts { 
  "server/*.lua"
}


lua54 'yes'
use_fxv2_oal 'yes'