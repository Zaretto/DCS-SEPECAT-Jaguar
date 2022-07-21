--mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")


JaguarGR1 =  {
        
	Name 				=   'JaguarGR1',
	DisplayName			= _('JaguarGR1'),
	
	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/Scripts/',
	
	Picture 			= current_mod_path.."/JaguarGR1.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "JaguarGR1",
	
	shape_table_data 	= 
	{
		{
			file  	 = 'JaguarGR1';
			life  	 = 18; -- lifebar
			vis   	 = 3; -- visibility gain.
			desrt    = 'JaguarGR1_destr'; -- Name of destroyed object file name
			fire  	 = { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username = 'JaguarGR1';
			index    =  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "JaguarGR1_destr";
			file  = "JaguarGR1-destr";
			fire  = { 240, 2};
		},

	},
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	-------------------------
	M_empty 					= 8000, -- kg
	M_nominal 					= 10000, -- kg
	M_max 						= 12000, -- kg
	M_fuel_max 					= 4000, -- kg --2225
	H_max 					 	= 21000, -- m
	average_fuel_consumption 	= 0.5, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
	CAS_min 					= 50, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
	V_opt 						= 300,-- Cruise speed (for AI)
	V_take_off 					= 100, -- Take off speed in m/s (for AI)
	V_land 						= 100, -- Land speed in m/s (for AI)
	V_max_sea_level 			= 400, -- Max speed at sea level in m/s (for AI)
	V_max_h 					= 800, -- Max speed at max altitude in m/s (for AI)
	Vy_max 						= 200, -- Max climb speed in m/s (for AI)
	Mach_max 					= 2.35, -- Max speed in Mach (for AI)
	Ny_min 						= -3, -- Min G (for AI)
	Ny_max 						= 9.0,  -- Max G (for AI)
	Ny_max_e 					= 9.0,  -- Max G (for AI)
	AOA_take_off 				= 0.12, -- AoA in take off (for AI)
	bank_angle_max 				= 85, -- Max bank angle (for AI)


	has_afteburner 				= true, -- AFB yes/no
	has_speedbrake 				= true, -- Speedbrake yes/no
	nose_gear_pos 				= {  3.3,	-2,	0}, -- nosegear coord
	main_gear_pos 				= { -1.5,	-2,	2}, -- main gear coords
	tand_gear_max 				= 0.4,
	tanker_type 				= 0, -- Tanker type if the plane is airrefuel capable
	wing_area 					= 40, -- wing area in m2
	wing_span 					= 14, -- wing spain in m
	wing_type 					= 0,
	thrust_sum_max 				= 8000, -- thrust in kg (44kN)
	thrust_sum_ab 				= 10000, -- thrust inkg (71kN)
	length 						= 18, -- full lenght in m
	height 						= 5, -- height in m
	flaps_maneuver 				= 0.5, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
	range 						= 2000, -- Max range in km (for AI)
	RCS 						= 5, -- Radar Cross Section m2
	IR_emission_coeff 			= 0.62, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
	IR_emission_coeff_ab 		= 1.02, -- With afterburner
	wing_tip_pos 				=  {-2,	2, 7}, -- wingtip coords for visual effects
	nose_gear_wheel_diameter 	= 0.500, -- in m
	main_gear_wheel_diameter 	= 0.800, -- in m
	brakeshute_name 			= 3, -- Landing - brake chute visual shape after separation
	is_tanker 					= false, -- Tanker yes/no
	air_refuel_receptacle_pos 	= {0, 0, 0}, -- refuel coords
	engines_count				= 1, -- Engines count
	engines_nozzles = {
		[1] = 
		{
			pos 		=  {-8,	0,	0}, -- nozzle coords
			elevation   =  0, -- AFB cone elevation
			diameter	 = 1, -- AFB cone diameter
			exhaust_length_ab   = 7, -- lenght in m
			exhaust_length_ab_K = 0.76, -- AB animation
		}, -- end of [1]
	}, -- end of engines_nozzles
	crew_size	 = 1,
	crew_members = 
	{
		[1] = 
		{
			ejection_seat_name = "pilot+ejectionseat",
			drop_canopy_name = 12,
			pos =  {4,	1,	0},
			canopy_pos = {4,	1,	0},
		}, -- end of [1]
	}, -- end of crew_members

	fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},
			[2] = 	{-1.584,	0.176,	2.693},
			[3] = 	{-1.645,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.548,	-0.248,	0},
			[9] = 	{-6.548,	-0.248,	0},
			[10] = 	{0.304,	-0.748,	0.442},
			[11] = 	{0.304,	-0.748,	-0.442},
		}, -- end of fires_pos
	
	
	-- Countermeasures
	SingleChargeTotal	 	= 120,
	CMDS_Incrementation 	= 4,
	ChaffDefault 			= 64, 
	ChaffChargeSize 		= 1,
	FlareDefault 			= 64, 
	FlareChargeSize 		= 1,
	CMDS_Edit 				= true,
	chaff_flare_dispenser 	= {
		[1] = 
		{
			dir =  {0, -1, -1},
			pos =  {-3, -1, 2},
		}, -- end of [1]
		[2] = 
		{
			dir =  {0, -1, 1},
			pos =  {-3, -1, -2},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser

	--sensors
	
	detection_range_max		 = 60,
	radar_can_see_ground 	 = true, -- this should be examined (what is this exactly?)
	CanopyGeometry = {
		azimuth   = {-160.0, 160.0}, -- pilot view horizontal (AI)
		elevation = {-50.0, 90.0} -- pilot view vertical (AI)
	},
	Sensors = {
		RWR = "Abstract RWR", -- RWR type
		RADAR = "N-019", -- Radar type
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
	
	
	Guns = {gun_mount("ADEN", {
			count = 1000,
			muzzle_pos_connector = "GUN_POINT",
			muzzle_pos 		  = {1, -0.5, -1},
			elevation_initial = 2.000,
			supply_position   = {1, 0, 0},
			effect_arg_number = 350,
			 }
			)
			},
	
	Pylons =     {
        pylon(1, 0, 0.660000, -0.078000, -3.325000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
        ),
        pylon(2, 0, -0.155000, -0.343000, -2.944000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
        ),
        pylon(3, 0, 0.660000, -0.078000, -2.563000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
        ),
		------------ 
		pylon(4, 0, -3.55, -0.6000, -2.1,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
		),
		pylon(5, 0, -1.155000, -0.753000, -2.1,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
		),
		pylon(6, 0, 1.40, -0.77, -2.15,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 

            }
		),
		------------
        pylon(7, 0, -3.20000, -0.880000, -1.75,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{02CAFD34-010A-4874-8506-4A7C89210353}" },
                { CLSID = "{446E122B-8E9D-457e-AE8E-7AE88E3E566B}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
        ),
		------------
		pylon(8, 0, -0.6, -1.10000, -1.75,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		------------
        pylon(9, 0, 1.9000, -1.10000, -1.75,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{02CAFD34-010A-4874-8506-4A7C89210353}" },
                { CLSID = "{446E122B-8E9D-457e-AE8E-7AE88E3E566B}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
        ),
        pylon(10, 0, 0.184000, -1.030000, 0.000000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
        ),
        pylon(11, 0 , -3.20000, -0.880000, 1.75,
            {
				-- FiZ = -4.0,
				use_full_connector_position=true,
            },
            {
                { CLSID = "{33556742-C0F5-4643-BD8F-530B4DEC719B}" },
                { CLSID = "{DA8F810A-EA40-4091-8127-CC2E026041E7}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
        ),
		---------
		pylon(12, 0, -0.6, -1.10000, 1.75,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		---------
        pylon(13, 0, 1.9000, -1.10000, 1.75,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{33556742-C0F5-4643-BD8F-530B4DEC719B}" },
                { CLSID = "{DA8F810A-EA40-4091-8127-CC2E026041E7}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
        ),
		
		------------ 
		pylon(14, 0, -3.55, -0.6000, 2.1,
            {
				use_full_connector_position=true,
			},
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		pylon(15, 0,  -1.155000, -0.753000, 2.1,
            {
				use_full_connector_position=true,
			},
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		pylon(16, 0, 1.40, -0.77, 2.15,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		------------
		
        pylon(17, 0, 0.660000, -0.078000, 2.563000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" }, -- 	AIM-120B
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" }, --    AIM-120C
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
        ),
        pylon(18, 0, -0.155000, -0.343000, 2.944000,
            {
				use_full_connector_position=true,
            },
            {
			    { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"},
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"}, -- AGM-65D LAU-117
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}"}, -- AGM-65E LAU-117
				{ CLSID = "LAU_117_AGM_65H"},
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"}, -- AGM-65K LAU-117
				{ CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}"}, -- AGM-154
				
            }
        ),
        pylon(19, 0, 0.660000, -0.078000, 3.325000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" }, -- 	AIM-120B
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" }, --    AIM-120C
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, --    AIM-9M 
            }
        ),
    },
	
	Tasks = {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(AFAC),
		aircraft_task(CAP),
        aircraft_task(Escort),
    },	
	DefaultTask = aircraft_task(GroundAttack),
	

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
				[0]		= {critical_damage = 5, args = {146}},
				[3]		= {critical_damage = 20,args = {65}}  ,
				[4]		= {critical_damage = 20, args = {150}},
				[5]		= {critical_damage = 20, args = {147}},
				[7]		= {critical_damage = 4, args = {249}} ,
				[9]		= {critical_damage = 3, args = {154}},
				[10]	= {critical_damage = 3, args = {153}},
				[11]	= {critical_damage = 3, args = {167}},
				[12]	= {critical_damage = 3, args = {161}},
				[15]	= {critical_damage = 5, args = {267}},
				[16]	= {critical_damage = 5, args = {266}},
				[23]	= {critical_damage = 8, args = {223}, deps_cells = {25}},
				[24]	= {critical_damage = 8, args = {213}, deps_cells = {26, 60}},
				[25]	= {critical_damage = 3, args = {226}},
				[26]	= {critical_damage = 3, args = {216}},
				[29]	= {critical_damage = 9, args = {224}, deps_cells = {31, 25, 23}},
				[30]	= {critical_damage = 9, args = {214}, deps_cells = {32, 26, 24, 60}},
				[31]	= {critical_damage = 4, args = {229}},
				[32]	= {critical_damage = 4, args = {219}},
				[35]	= {critical_damage = 10, args = {225}, deps_cells = {29, 31, 25, 23}},
				[36]	= {critical_damage = 10, args = {215}, deps_cells = {30, 32, 26, 24, 60}} ,
				[37]	= {critical_damage = 4, args = {227}},
				[38]	= {critical_damage = 4, args = {217}},
				[39]	= {critical_damage = 7,	args = {244}, deps_cells = {53}},
				[40]	= {critical_damage = 7, args = {241}, deps_cells = {54}},
				[45]	= {critical_damage = 9, args = {235}, deps_cells = {39, 51, 53}},
				[46]	= {critical_damage = 9, args = {233}, deps_cells = {40, 52, 54}},
				[51]	= {critical_damage = 3, args = {239}},
				[52]	= {critical_damage = 3, args = {237}},
				[53]	= {critical_damage = 3, args = {248}},
				[54]	= {critical_damage = 3, args = {247}},
				[55]	= {critical_damage = 20, args = {81}, deps_cells = {39, 40, 45, 46, 51, 52, 53, 54}},
				[59]	= {critical_damage = 5, args = {148}},
				[60]	= {critical_damage = 1, args = {144}},

				[83]	= {critical_damage = 3, args = {134}} ,-- nose wheel
				[84]	= {critical_damage = 3, args = {136}}, -- left wheel
				[85]	= {critical_damage = 3, args = {135}} ,-- right wheel
	},
	
	DamageParts = 
	{  
--DAMAGEOFF		[1] = "JaguarGR1-part-wing-R", -- wing R
--DAMAGEOFF		[2] = "JaguarGR1-part-wing-L", -- wing L
--DAMAGEOFF		[3] = "JaguarGR1-part-nose", -- nose
--DAMAGEOFF		[4] = "JaguarGR1-part-tail", -- tail
	},
	
	lights_data = {
	typename = "collection",
	lights = {
    [1] = { typename = "collection",
						lights = {-- Left Anticollision Light
								  {typename = "natostrobelight",
								   connector = "WHITE_BEACON L",
								   argument_1 = 195,
								   period = 1.2,
								   phase_shift = 0
								  },
								  -- Right Anticollision Light
								  {typename = "natostrobelight",
								   connector = "WHITE_BEACON R",
								   argument_1 = 196,
								   period = 1.2,
								   phase_shift = 0
								  },
								  -- Tail Anticollision Light
								  {typename = "natostrobelight",
								   connector = "BANO_0_BACK",
								   argument_1 = 192,
								   period = 1.2,
								   phase_shift = 0
								  }
								 }
									  },
	[2] = { typename = "collection",
							lights = {-- Landing light
									  {typename = "spotlight",
									   connector = "MAIN_SPOT_PTR_02",
									   argument = 209,
									   dir_correction = {elevation = math.rad(-1)}
									  },
									  {-- Landing/Taxi light
									   typename = "spotlight",
									   connector = "MAIN_SPOT_PTR_01",
									   argument = 208,
									   dir_correction = {elevation = math.rad(3)}
									  }
									 }
						},
    [3]	= {	typename = "collection",
						lights = {-- Left Position Light (red)
								  {typename = "omnilight",
								   connector = "BANO_1",
								   color = {0.99, 0.11, 0.3},
								   pos_correction  = {0, 0, -0.2},
								   argument  = 190
								  },
								  -- Right Position Light (green)
								  {typename = "omnilight",
								   connector = "BANO_2",
								   color = {0, 0.894, 0.6},
								   pos_correction = {0, 0, 0.2},
								   argument  = 191
								  },
								  -- Tail Position Light (white)
								  {typename = "omnilight",
								   connector = "BANO_0_BACK",
								   color = {1, 1, 1},
								   pos_correction  = {0, 0, 0},
								   argument  = 203
								  }}
									},
    [4] = {	typename = "collection",
				lights = {{typename = "collection",
						   lights = {
									 -- Top Formation Light (white)
									 {typename = "omnilight",
									  connector = "BANO_0_TOP",
									  color = {1, 1, 1},
									 },
									 {typename  = "argumentlight", argument = 202},
									 -- Bottom Formation Light (white)
									 {typename = "omnilight",
									  connector = "BANO_0_BOTTOM",
									  color = {1, 1, 1},
									 },
									 {typename  = "argumentlight", argument = 201},
									}
							},
							-- Tail formation lights
							{typename = "collection",
								lights = {{
										-- Right Tail Formation Light
										typename = "spotlight",
										connector = "BANO_W_HR",
										color = {1.0, 1.0, 1.0},
										intensity_max = 6,
										angle_max = 0.65,
										argument = 205,
										dont_change_color = false,
										angle_change_rate = 0,
										pos_correction = {0.0, 0.0, 0.1},
										dir_correction = {azimuth = math.rad(-3), elevation = math.rad(9)},
									   },
									   {
										-- Left Tail Formation Light
										typename = "spotlight",
										connector = "BANO_W_HL",
										color = {1.0, 1.0, 1.0},
										intensity_max = 6,
										angle_max = 0.65,
										argument = 204,
										dont_change_color = false,
										angle_change_rate = 0,
										pos_correction = {0.0, 0.0, -0.1},
										dir_correction = {azimuth = math.rad(-3), elevation = math.rad(-9)},
									   }
									},
							},
							-- Electroluminescent formation lights
							{typename  = "argumentlight", argument = 200},
						 }
									},
	[5]	= {typename = "collection",
			lights = {
						{typename = "collection",
						lights = {{
								-- Right Nacelle Floodlight
								typename = "spotlight",
								position  = {0.5, 1.2, 0},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(150), elevation = math.rad(5)},
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {
								-- Left Nacelle Floodlight
								typename = "spotlight",
								position  = {0.5, 1.2, 0},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(-150), elevation = math.rad(5)},
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {typename  = "argumentlight", argument = 212},
						},
					},
					{typename = "collection",
						lights = {{
								-- Left Nose Floodlight
								typename  = "spotlight",
								position  = {0, -0.3, -5.80},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0, angle_max = 0.45,
								direction = {azimuth = math.rad(45)},
								argument = 211,
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {
								-- Right Nose Floodlight
								typename = "spotlight",
								position  = {0, -0.3, 5.80},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(-45)},
								argument = 210,
								dont_change_color = false,
								angle_change_rate = 0
							   }
						}
					},
					-- UARRSI light
					{
						typename = "omnilight", position  = {6.5, 0.4, 0}, color = {1, 1, 1}
					}
				  },
			}
		}
	},
}

add_aircraft(JaguarGR1)
