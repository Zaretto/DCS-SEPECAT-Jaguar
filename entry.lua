declare_plugin("JaguarGR1",
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
version		 = "0.1.0.alpha",		 
state		 = "installed",
info		 = _("SEPECAT JaguarGR1 development version."),

Skins	= 
	{
		{
			name	= "JaguarGR1",
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		= _("JaguarGR1"),
			dir			= "Missions",
			CLSID		= "{CLSID5456456346CLSID}",	
		},
	},	
LogBook =
	{
		{
			name		= _("JaguarGR1"),
			type		= "JaguarGR1",
		},
	},	
InputProfiles =
	{
		["JaguarGR1"]     = current_mod_path .. '/Input',
	},
})
---------------------------------------------------------------------------------------
dofile(current_mod_path..'/JaguarGR1.lua')

plugin_done()-- finish declaration , clear temporal data
