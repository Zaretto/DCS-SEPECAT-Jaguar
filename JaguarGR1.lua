--mounting 3d model paths and texture paths

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path (current_mod_path.."/Shapes")

AircraftDefintion = {

   Name = 'JaguarGR1',
   DisplayName = _('Jaguar GR1'),
   --Cannon = "yes",
   HumanCockpit = true,
   HumanCockpitPath = current_mod_path..'/Cockpit3/Scripts',

   Picture = "FrontView.png",
   Rate = 40, -- RewardPoint in Multiplayer
   Shape = "JaguarGR1_test1",

   shape_table_data ={
      {
         file = 'JaguarGR1_test1';
         life = 20; -- lifebar
         vis = 3; -- visibility gain.
         desrt = 'su-25-oblomok'; -- Name of destroyed object file name
         fire = { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
         username = 'JaguarGR1';
         index = WSTYPE_PLACEHOLDER;
      },
      {
         name  = "su-25-oblomok";
         file  = "su-25-oblomok";
         fire  = { 240, 2};
      },

   },
   mapclasskey = "P0091000024",
   attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, A_10A, "Multirole fighters", "Refuelable", },
   Categories = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor", },
   M_empty = 5400,
   M_nominal = 6000,
   M_max = 11000,
   M_fuel_max = 3350,
   H_max = 12730,
   average_fuel_consumption = 0.302,
   CAS_min = 58,
   V_opt = 125,
   V_take_off = 62,
   V_land = 68,
   has_afteburner = false,
   has_speedbrake = true,
   ----------------- SUSPENSION CODE
   nose_gear_amortizer_direct_stroke = 0, -- down from nose_gear_pos
   nose_gear_amortizer_reversal_stroke = -0.107, -- up
   main_gear_amortizer_direct_stroke = 0, --  down from main_gear_pos
   main_gear_amortizer_reversal_stroke = -0.102, --  up
   nose_gear_amortizer_normal_weight_stroke = -0.01,
   main_gear_amortizer_normal_weight_stroke = -0.01,

   has_differential_stabilizer = false,
   main_gear_pos = {0.369, - 1.458, 1.954}, --0.369,	-1.460,	1.954
   radar_can_see_ground = false,
   nose_gear_pos = {2.593, - 1.421, 0}, --2.593,	-1.420,	0
   AOA_take_off = 0.19,
   stores_number = 8,
   bank_angle_max = 70,
   Ny_min = -4,
   Ny_max = 8,
   tand_gear_max = 0.577,
   V_max_sea_level = 236,
   V_max_h = 134,
   tanker_type = 1,
   wing_area = 17.09,
   wing_span = 17.53,
   thrust_sum_max = 8224,
   thrust_sum_ab = 8224,
   Vy_max = 30,
   length = 16.26,
   height = 4.47,
   flaps_maneuver = 0.35,
   Mach_max = 2.5,
   range = 1630,
   crew_size = 2,
   RCS = 10,
   Ny_max_e = 5.9,
   detection_range_max = 0,
   IR_emission_coeff = 0.53,
   IR_emission_coeff_ab = 0,
   engines_count = 1,
   wing_tip_pos = {0.531, - 0.229, 5.286}, ---3.996,	0.263,	7.304
   nose_gear_wheel_diameter = 0.350, --0.754
   main_gear_wheel_diameter = 0.603, --0.972
   engines_nozzles =
      {
      [1] =
         {
         pos = { - 1.209, - 0.486,  0.00}, --6.889,	-0.257,	-1.193
         elevation = 0,
         diameter = 1.137,
         exhaust_length_ab = 8.6,
         exhaust_length_ab_K = 0.629,
      }, -- end of [1]
   }, -- end of engines_nozzles
   crew_members =
      {
      [1] =
         {
         ejection_seat_name = 9,
         drop_canopy_name = "JaguarGR1_probe",
         pos = {1.348, - 0.085, 0.287},
      }, -- end of [1]
      [2] =
         {
         ejection_seat_name = 9,
         --drop_canopy_name	=	"JaguarGR1_probe",
         pos = {1.348, - 0.085, - 0.287},
      }, -- end of [2]
   }, -- end of crew_members
   brakeshute_name = 0,
   is_tanker = false,
   --air_refuel_receptacle_pos = {4.563, - 0.315, 0.000}, --9.709,	1.305,	-0.866
   fires_pos =
      {
      [1] = { - 1.594, - 0.064, 0},
      [2] = { - 1.073, 0.319, 2.304},
      [3] = { - 1.187, 0.338, - 2.678},
      [4] = { - 0.82, 0.265, 2.774},
      [5] = { - 0.82, 0.265, - 2.774},
      [6] = { - 0.82, 0.255, 2.274},
      [7] = { - 0.82, 0.255, - 2.274},
      [8] = { - 5.889, - 0.257, 1.193},
      [9] = { - 5.889, - 0.257, - 1.193},
      [10] = { - 1.257, 0.283, 2.05},
      [11] = { - 1.257, 0.283, - 2.05},
   }, -- end of fires_pos
   chaff_flare_dispenser =
      {
      [1] =
         {
         dir = {0, - 1, 0},
         pos = { - 3.776, 1.4, - 0.422},
      }, -- end of [1]
      [2] =
         {
         dir = {0, - 1, 0},
         pos = { - 3.776, 1.4, 0.422},
      }, -- end of [2]
   }, -- end of chaff_flare_dispenser

   LandRWCategories =
      {
      [1] =
         {
         Name = "AircraftCarrier",
      }, -- end of [1]
   }, -- end of LandRWCategories
   MaxFuelWeight = "3350",
   MaxHeight = "12730",
   MaxSpeed = "850",
   MaxTakeOffWeight = "6350",
   Picture = "JaguarGR1-picture.png",
   Rate = "50",
   Shape = "JaguarGR1_test1",
   TakeOffRWCategories =
      {
      [1] =
         {
         Name = "AircraftCarrier With Catapult",
      }, -- end of [1]
      [2] =
         {
         Name = "AircraftCarrier With Tramplin",
      }, -- end of [2]
   }, -- end of TakeOffRWCategories
   WingSpan = "10.26",
   WorldID = JaguarGR1,

   -- Countermeasures
   SingleChargeTotal = 480,
   CMDS_Incrementation = 30,
   ChaffDefault = 240, -- RR-170
   ChaffChargeSize = 1,
   FlareDefault = 120, -- MJU-7
   FlareChargeSize = 2,
   CMDS_Edit = true,

   CanopyGeometry = {
      azimuth = { - 145.0, 145.0},
      elevation = { - 50.0, 90.0}
   },

   ammo_type = { _("CM Combat Mix"),
      _("HEI High Explosive Incendiary"),
      _("TP Target Practice"),
   },

   Sensors = {
      --RADAR = "N-011M",--N-001,N-019M,N-011M
      --IRST = "OLS-27",
      --OPTIC = {"TADS DTV", "TADS DVO", "TADS FLIR"},
      RWR = "Abstract RWR"
   },
   Countermeasures = {
      ECM = "Gardenia"
   },
   Failures = {
      { id = 'asc', label = _('ASC'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'hydro', label = _('HYDRO'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'l_engine', label = _('L-ENGINE'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'r_engine', label = _('R-ENGINE'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      --{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'mlws', label = _('MLWS'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'rws', label = _('RWS'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'ecm', label = _('ECM'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'hud', label = _('HUD'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
      { id = 'mfd', label = _('MFD'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
   },
   HumanRadio = {
      frequency = 124.0, -- Radio Freq
      editable = true,
      minFrequency = 100.000,
      maxFrequency = 156.000,
      modulation = MODULATION_AM
   },

   mapclasskey = "P0091000025",
   sounderName = "Aircraft/Planes/A-10A",

   Guns = {gun_mount("M_39", { count = 280, effect_arg_number = 350, azimuth_initial = 0, elevation_initial = 2, supply_position = {3.5, 0, 0}}, {muzzle_pos = {3.641000, - 0.713000, - 0.353000}}), --0.611000, -0.790000, 0.373000   --GSh_6_30K,2A38,2A14,GSh_30_6

   },



   Pylons =     {},
Tasks = {
   --      aircraft_task(CAP),
   --     	aircraft_task(Escort),
   --aircraft_task(FighterSweep),
   --aircraft_task(Intercept),
   aircraft_task(Reconnaissance),
   --aircraft_task(GroundAttack),
   --aircraft_task(CAS),
   --aircraft_task(AFAC),
   --aircraft_task(RunwayAttack),
   --aircraft_task(AntishipStrike),
},
DefaultTask = aircraft_task(Reconnaissance),

SFM_Data = {

   aerodynamics =
      {
      Cy0	=	0,
      Mzalfa	=	6.6,
      Mzalfadt	=	1,
      kjx = 2.85,
      kjz=0.00125,
      Czbe = -0.012,
      cx_gear = 0.026,
      cx_flap = 0.06,
      cy_flap = 0.32,
      cx_brk = 0.06,
      table_data =
         {
         --      M	 Cx0		 Cya			B				B4	      Omxmax	Aldop	Cymax

         {0.0,	0.038,		0.09,			0.051,			0.0065,		0.15,	 20,	 1.40 	},
         {0.2,	0.038,		0.09,			0.051,			0.0065,		1.2,	 20,	 1.40 	},
         {0.3,	0.038,		0.09,			0.051,			0.009,		1.6,	 20,	 1.40 	},
         {0.4,	0.038,		0.09,			0.051,			0.009,		2.1,	 19,	 1.35 	},
         {0.5,	0.038,		0.09,			0.051,			0.009,		2.6,	 18,	 1.3  	},
         {0.6,	0.040,		0.09,			0.059,			0.016,		3.1,	 11,	 1.14 	},
         {0.7,	0.052,		0.09,			0.072,			0.03,		3.5,	 8,	 0.9	    },
         {0.8,	0.082,		0.09,			0.180,			0.06,		3.5,	 3,	 0.5	    },
         {1.1,	0.160,		0.09,			0.200,			0.08,		3.5,	 1,	 0.3        },
      }
   }, -- end of aerodynamics


   engine =
      {
      Nmg	=	67.5,
      MinRUD	=	0,
      MaxRUD	=	1,
      MaksRUD	=	1,
      ForsRUD	=	1,
      typeng	=	0,
      hMaxEng	=	12.5,
      dcx_eng	=	0.015,
      cemax	=	0.37,
      cefor	=	0.37,
      dpdh_m	=	4500,
      dpdh_f	=	4500,
      table_data =
         {
         --   M			Pmax
         {0.0,		77824},
         {0.1,		68600},
         {0.2,		61300},
         {0.3,		54500},
         {0.4,		47600},
         {0.5,		41900},
         {0.6,		36700},
         {0.7,		31100},
         {0.8,		26000},
         {0.9,		25520},
         {1.9,		15000}
      }, -- end of table_data
   }, -- end of engine
},


--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
Damage = {},

DamageParts ={},

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
      [3] = { typename = "collection",
         lights = {-- Left Position Light (red)
            {typename = "omnilight",
               connector = "BANO_1",
               color = {0.99, 0.11, 0.3},
               pos_correction = {0.1, 0, - 0.2},
               argument = 190
            },
            -- Right Position Light (green)
            {typename = "omnilight",
               connector = "BANO_2",
               color = {0, 0.894, 0.6},
               pos_correction = {0.1, 0, 0.2},
               argument = 191
            },
            -- Tail Position Light (white)
            {typename = "omnilight",
               connector = "BANO_0",
               color = {1, 1, 1},
               pos_correction = {0, 0, 0},
               argument = 192
         }}
      },
      --[4] = { typename = "collection", -- white strobe upper
      --	lights = {
      --				{typename = "natostrobelight",connector = "WHITE_TOP",argument_1 = 999,period = 1.0,color = {0.8, 0.8, 1.0},phase_shift = 0.0},
      --				{typename = "natostrobelight",connector = "WHITE_TOP",argument_1 = 998,period = 1.0,color = {0.8, 0.8, 1.0},phase_shift = 0.5},
      --			 }
      --		},
      [5] = {typename = "collection",
         lights = {
            {typename = "collection",
               lights = {{
                     -- Right Nacelle Floodlight
                     typename = "spotlight",
                     position = {0.5, 1.2, 0},
                     color = {1.0, 1.0, 1.0},
                     intensity_max = 0.0,
                     angle_max = 0.45,
                     direction = {azimuth = math.rad(150), elevation = math.rad(5)},
                     dont_change_color = false,
                     angle_change_rate = 0
                  },
                  {
                     -- Left Nacelle Floodlight
                     typename = "spotlight",
                     position = {0.5, 1.2, 0},
                     color = {1.0, 1.0, 1.0},
                     intensity_max = 0.0,
                     angle_max = 0.45,
                     direction = {azimuth = math.rad(-150), elevation = math.rad(5)},
                     dont_change_color = false,
                     angle_change_rate = 0
                  },
                  {typename = "argumentlight", argument = 212},
               },
            },
            {typename = "collection",
               lights = {{
                     -- Left Nose Floodlight
                     typename = "spotlight",
                     position = {0, - 0.3, - 5.80},
                     color = {1.0, 1.0, 1.0},
                     intensity_max = 0.0, angle_max = 0.45,
                     direction = {azimuth = math.rad(45)},
                     argument = 211,
                     dont_change_color = false,
                     angle_change_rate = 0
                  },
                  {
                     -- Right Nose Floodlight
                     typename = "spotlight",
                     position = {0, - 0.3, 5.80},
                     color = {1.0, 1.0, 1.0},
                     intensity_max = 0.0,
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
               typename = "omnilight", position = {6.5, 0.4, 0}, color = {6, 6, 2}
            }
         },
      }
   }
},
}
cockpit_local_point = {9.4, 1.2, 0.0}

add_aircraft(AircraftDefintion)
