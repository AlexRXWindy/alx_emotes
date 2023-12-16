fx_version 'cerulean'

game 'gta5'

author 'Alx'
description 'Re-Design of bkemotes & rpemotes'
version '1.0.0'
Credits 'Barikelo & Juliiro'

--Client Scripts-- 
client_scripts {
    'NativeUI.lua',
	'Config.lua',
 	'Client/*.lua'
}

--Server Scripts-- 
server_scripts {
	'Config.lua',
	'Server/*.lua'
}

export {
    'WalkMenuStart'
}
--UI Part-- 
ui_page {
 'Client/html/index.html', 
}

--File Part-- 
files {
 'Client/html/index.html',
 'Client/html/app.js', 
 'Client/html/main.css',
 'Client/html/ios.ttf',
 'Client/html/search.svg'
} 

escrow_ignore {
	'*.lua',
	'Client/AnimationList.lua',
	'Client/AnimationListCustom.lua',
	'Client/Client.lua',
	'Client/Emote.lua',
	'Client/Expressions.lua',
	'Client/Keybinds.lua',
	'Client/Pointing.lua',
	'Client/Ragdoll.lua',
	'Client/Syncing.lua',
	'Client/Walk.lua',
	'Server/*.lua'
}


---- Loads all ytyp files for custom props to stream ---
---- You will need to add a data_file 'DLC_ITYP_REQUEST' for your own to work in game ---

data_file 'DLC_ITYP_REQUEST' 'stream/taymckenzienz_rpemotes.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/brummie_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'bzzz_camp_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/apple_1.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/kaykaymods_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/knjgh_pizzas.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/natty_props_lollipops.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/ultra_ringcase.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/pata_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/vedere_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/pnwsigns.ytyp'


data_file 'AMBIENT_PROP_MODEL_SET_FILE' 'propsets.meta'
data_file 'CONDITIONAL_ANIMS_FILE' 'conditionalanims.meta'


lua54 'yes'