"
" author : Ratan Sunder Parai
" email : ratanparai (at) gmail (dot) com
"

let s:vimDir = $HOME.'/vimfiles'

let s:pluginDef = s:vimDir.'/plugins/def.vim'
let s:pluginConf = s:vimDir.'/plugins/config.vim'

let s:configSettings = s:vimDir.'/config/setting.vim'
let s:configScripts = s:vimDir.'/config/scripts.vim'

" Install Plugins
exec ":source ".s:pluginDef

" Loads the global config, mapping , settings and scripts
exec ":source ".s:configSettings
exec ":source ".s:configScripts

" Loads plugins config
exec ":source ".s:pluginConf
