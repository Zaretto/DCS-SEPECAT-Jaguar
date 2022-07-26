

-- mount textures collections related cockpit
mount_vfs_texture_archives(LockOn_Options.script_path.."../Textures/F-5E-CPT-TEXTURES")
mount_vfs_model_path(LockOn_Options.script_path.."../Shape")
mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon")

dofile(LockOn_Options.script_path.."devices.lua")

-- modules which implement the cockpit functionality
--UseDBGInfo = false

----Geometry Layout------------------------------------------------
--layoutGeometry = {}

--	items in <...> are optional
--
-- MainPanel = {"NAME_OF_CLASS",
--				"INIT_SCRIPT_FILE",
--				<{devices.LINKED_DEVICE1, devices.LINKED_DEVICE2, ...},>
--			   }

MainPanel = {
  "ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua",{
    },
    --LockOn_Options.script_path.."main_panel_commands.lua"
  }

-- Avionics devices initialization example
--	items in <...> are optional
--
-- creators[DEVICE_ID] = {"NAME_OF_CONTROLLER_CLASS",
--						  <"CONTROLLER_SCRIPT_FILE",>
--						  <{devices.LINKED_DEVICE1, devices.LINKED_DEVICE2, ...},>
--						  <"INPUT_COMMANDS_SCRIPT_FILE",>
--						  <{{"NAME_OF_INDICATOR_CLASS", "INDICATOR_SCRIPT_FILE"}, ...}>
--						 }
creators = {}

creators[devices.MAIN_DEVICE] = {
  "avLuaDevice"
}

creators[devices.ELECTRIC_DEVICE] = {
  "avLuaDevice"
}

---------------------------------------------
--dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
---------------------------------------------
