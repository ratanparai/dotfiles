" 
" author : Ratan Sunder Parai
" email : ratanparai (at) gmail (dot) com
" 


let s:vimDir = $HOME.'/vimfiles'

let s:pluginDef = s:vimDir.'/plugins/def.vim'
let s:pluginConf = s:vimDir.'/plugins/config.vim'

let s:configSettings = s:vimDir.'/config/setting.vim'


" Install Plugins 
exec ":source ".s:pluginDef


" Loads the global config, mapping and settings
exec ":source ".s:configSettings

" Loads plugins config
exec ":source ".s:pluginConf
