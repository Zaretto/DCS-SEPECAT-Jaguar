
shape_name   = "Cockpit_F-5E"

draw_pilot					 = false

external_model_canopy_arg	 = 38
external_model_canopy_trucks_arg = 118

-- main panel shaking
shake_filter_Y_Left_ = {IsHPF = false, B = 1/6.0, C = 1.0, Freq0 = 7.7, K = 0.02}
shake_filter_Y_Right_ = {IsHPF = false, B = 1/6.2, C = 1.0, Freq0 = 8.0, K = 0.023}
shake_filter_Z_ = {IsHPF = false, B = 1/4.0, C = 1.0, Freq0 = 7.5, K = 0.02}

rot_x_k = 1.0
cross_accel = 0.5

shaking_dt 			= 0.01

cockpit_local_point = {9.4, 1.2, 0.0}

day_texture_set_value   = 0.0
night_texture_set_value = 0.1

---------------------------------------------------------------
-- CONTROLLERS
---------------------------------------------------------------

local controllers = LoRegisterPanelControls()
mirrors_data =
{
    center_point 	= {0.488,0.139,0},
    width 		 	= 0.35, --integrated (keep in mind that mirrors can be none planar )
    aspect 		 	= 3.0,
  rotation 	 	= math.rad(1);
  animation_speed = 2.0;
  near_clip 		= 0.1;
  middle_clip		= 10;
  far_clip		= 60000;
}

mirrors_draw                    = CreateGauge("parameter")
mirrors_draw.parameter_name   = "TEST"
mirrors_draw.arg_number    		= 183
mirrors_draw.input    		  = {0.0,100.0}
mirrors_draw.output   			= {1,0}
mirrors_draw.controller         = controllers.mirrors_draw

draw_arcade					 = LockOn_Options.flight.easy_radar or LockOn_Options.flight.auto_lockon


args_initial_state = {}

if not LockOn_Options.cockpit.mirrors then
   args_initial_state[183] = 1.0
end

local function rad_(value)
	return math.rad(value)
end

-- Flight Instruments
Accelerometer               = CreateGauge("parameter")
Accelerometer.parameter_name = "Accelerometer"
Accelerometer.arg_number    = 6
Accelerometer.input			= {-5.0, 0.0,   5.0,   10.0}
Accelerometer.output		= { 0.0, 0.323, 0.653, 1.0}
--Accelerometer.controller	= controllers.Accelerometer

Slipball							= CreateGauge("parameter")
Slipball.arg_number					= 3
Slipball.parameter_name = "Slipball"
Slipball.input						= {-0.1, 0.1}
Slipball.output						= {-1.0, 1.0}

AOA_Units					= CreateGauge("parameter")
AOA_Units.arg_number		= 7
AOA_Units.parameter_name = "AOA_Units"
AOA_Units.input				= {0.0, 30.0}
AOA_Units.output			= {0.0, 1.0}

AirspeedNeedle				= CreateGauge("parameter")
AirspeedNeedle.parameter_name   = "Airspeed"
AirspeedNeedle.arg_number	= 8
AirspeedNeedle.input    	= {0.0,   80.0, 100.0, 170.0,  190.0, 200.0, 230.0,  250.0, 290.0, 300.0,  350.0, 390.0, 400.0, 500.0, 550.0, 650.0, 700.0, 750.0, 800.0, 850.0}
AirspeedNeedle.output		= {0.0, 0.0435,   0.1, 0.318, 0.3745, 0.397, 0.4495, 0.482,  0.54, 0.553, 0.6145, 0.658, 0.668, 0.761, 0.801, 0.877, 0.909, 0.942, 0.972,   1.0}

CabinPressure				= CreateGauge("parameter")
CabinPressure.arg_number	= 114
CabinPressure.parameter_name = "CabinPressure"
CabinPressure.input			= {0.0, 50.0}
CabinPressure.output		= {0.0, 1.0}
-- CabinPressure.controller	= controllers.CabinPressure

-- Vertical Velocity Indicator
Variometer					= CreateGauge("parameter")
Variometer.arg_number		= 24
Variometer.parameter_name = "Variometer"
Variometer.input			= {-6000.0, -3000.0, -2000.0, -1000.0,  0.0, 1000.0,  2000.0, 3000.0, 6000.0} 
Variometer.output			= {   -1.0,   -0.64,    -0.5,   -0.29,  0.0,   0.29,     0.5,   0.64,    1.0}
-- Variometer.controller		= controllers.Variometer

-- Fuel Flow Indicator (Dual)
FuelFlow_Left				= CreateGauge("parameter")
FuelFlow_Left.arg_number	= 525
FuelFlow_Left.parameter_name = "FuelFlow_Left"
FuelFlow_Left.input			= {0.0, 4000.0, 7000.0, 10000.0, 15000.0}
FuelFlow_Left.output		= {0.0,   0.67,   0.75,    0.83,     1.0}
FuelFlow_Left.params		= {0}
-- FuelFlow_Left.controller	= controllers.FuelFlow

FuelFlow_Right				= CreateGauge("parameter")
FuelFlow_Right.arg_number	= 526
FuelFlow_Right.parameter_name = "FuelFlow_Right"
FuelFlow_Right.input		= {0.0, 4000.0, 7000.0, 10000.0, 15000.0}
FuelFlow_Right.output		= {0.0,   0.67,   0.75,    0.83,     1.0}
FuelFlow_Right.params		= {1}
-- FuelFlow_Right.controller	= controllers.FuelFlow

-- Fuel Quantity Indicator (Dual)
FuelQuantity_Left				= CreateGauge("parameter")
FuelQuantity_Left.arg_number	= 22
FuelQuantity_Left.parameter_name = "FuelQuantity_Left"
FuelQuantity_Left.input			= {0.0, 2500.0}
FuelQuantity_Left.output		= {0.0,    1.0}
FuelQuantity_Left.params		= {0}
-- FuelQuantity_Left.controller	= controllers.FuelQuantity

FuelQuantity_Right				= CreateGauge("parameter")
FuelQuantity_Right.arg_number	= 23
FuelQuantity_Right.parameter_name = "FuelQuantity_Right"
FuelQuantity_Right.input		= {0.0, 2500.0}
FuelQuantity_Right.output		= {0.0,    1.0}
FuelQuantity_Right.params		= {1}
-- FuelQuantity_Right.controller	= controllers.FuelQuantity

-- Oxygen Quantity Indicator
OxygenQuantity				= CreateGauge("parameter")
OxygenQuantity.arg_number	= 390
OxygenQuantity.parameter_name = "OxygenQuantity"
OxygenQuantity.input		= {0.0, 5.0}
OxygenQuantity.output		= {0.0, 1.0}
-- OxygenQuantity.controller	= controllers.OxygenQuantity

-- Oxygen Flow Pressure Indicator
FlowPressure				= CreateGauge("parameter")
FlowPressure.arg_number	= 604
FlowPressure.parameter_name = "FlowPressure"
FlowPressure.input		= {0.0, 100.0, 500.0}
FlowPressure.output		= {0.0,   0.5,   1.0}
-- FlowPressure.controller	= controllers.FlowPressure

-- Oxygen Flow Indicator
FlowBlinker				= CreateGauge("parameter")
FlowBlinker.arg_number	= 600
FlowBlinker.parameter_name = "FlowBlinker"
FlowBlinker.input		= {0.0, 1.0}
FlowBlinker.output		= {0.0, 1.0}
-- FlowBlinker.controller	= controllers.FlowBlinker

-- RADIO ------------------------------------------------------
-- UHF Radio AN/ARC-164
UHFRadioChannel				= CreateGauge("parameter")
UHFRadioChannel.arg_number	= 326
UHFRadioChannel.parameter_name = "UHFRadioChannel"
UHFRadioChannel.input		= {0.0, 1.0}
UHFRadioChannel.output		= {0.0, 1.0}
-- UHFRadioChannel.controller	= controllers.UHFRadioChannel

UHFRadio100MHz				= CreateGauge("parameter")
UHFRadio100MHz.arg_number	= 302
UHFRadio100MHz.parameter_name = "UHFRadio100MHz"
UHFRadio100MHz.input		= {0.0, 1.0}
UHFRadio100MHz.output		= {0.0, 1.0}
-- UHFRadio100MHz.controller	= controllers.UHFRadio100MHz

UHFRadio10MHz				= CreateGauge("parameter")
UHFRadio10MHz.arg_number	= 303
UHFRadio10MHz.parameter_name = "UHFRadio10MHz"
UHFRadio10MHz.input			= {0.0, 1.0}
UHFRadio10MHz.output		= {1.0, 0.0}
-- UHFRadio10MHz.controller	= controllers.UHFRadio10MHz

UHFRadio1MHz				= CreateGauge("parameter")
UHFRadio1MHz.arg_number		= 304
UHFRadio1MHz.parameter_name = "UHFRadio1MHz"
UHFRadio1MHz.input			= {0.0, 1.0}
UHFRadio1MHz.output			= {1.0, 0.0}
-- UHFRadio1MHz.controller		= controllers.UHFRadio1MHz

UHFRadio01MHz				= CreateGauge("parameter")
UHFRadio01MHz.arg_number	= 305
UHFRadio01MHz.parameter_name = "UHFRadio01MHz"
UHFRadio01MHz.input			= {0.0, 1.0}
UHFRadio01MHz.output		= {1.0, 0.0}
-- UHFRadio01MHz.controller	= controllers.UHFRadio01MHz

UHFRadio0025MHz				= CreateGauge("parameter")
UHFRadio0025MHz.arg_number	= 306
UHFRadio0025MHz.parameter_name = "UHFRadio0025MHz"
UHFRadio0025MHz.input		= {0.0,	1.0}
UHFRadio0025MHz.output		= {1.0,	0.0}
-- UHFRadio0025MHz.controller	= controllers.UHFRadio0025MHz

-- IFF/SIF APX72
IFF_Code4Sw_Pull			= CreateGauge("parameter")
IFF_Code4Sw_Pull.arg_number	= 197
IFF_Code4Sw_Pull.parameter_name = "IFF_Code4Sw_Pull"
IFF_Code4Sw_Pull.input		= {0.0, 1.0}
IFF_Code4Sw_Pull.output		= {0.0, 1.0}
-- IFF_Code4Sw_Pull.controller	= controllers.IFF_Code4Sw_Pull

IFF_MasterSw_Pull				= CreateGauge("parameter")
IFF_MasterSw_Pull.arg_number	= 198
IFF_MasterSw_Pull.parameter_name = "IFF_MasterSw_Pull"
IFF_MasterSw_Pull.input			= {0.0, 1.0}
IFF_MasterSw_Pull.output		= {0.0, 1.0}
-- IFF_MasterSw_Pull.controller	= controllers.IFF_MasterSw_Pull

-- TACAN
TACAN_test_light = CreateGauge("parameter")
TACAN_test_light.arg_number	= 260
TACAN_test_light.parameter_name = "TACAN_test_light"
TACAN_test_light.input		= {0.0, 1.0}
TACAN_test_light.output		= {0.0, 1.0}
-- TACAN_test_light.controller	= controllers.TACAN_test_light_controller

AI_Pitch				= CreateGauge("parameter")
AI_Pitch.arg_number		= 81
AI_Pitch.parameter_name = "AI_Pitch"
AI_Pitch.input			= {-rad_(90.0), 0.0, rad_(90.0)}
AI_Pitch.output			= {     -0.507, 0.0,      0.507}
-- AI_Pitch.controller		= controllers.AI_Pitch

AI_Bank					= CreateGauge("parameter")
AI_Bank.arg_number		= 30
AI_Bank.parameter_name = "AI_Bank"
AI_Bank.input			= { -rad_(180), rad_(180.0)}
AI_Bank.output			= {-1.0,           1.0}
-- AI_Bank.controller		= controllers.AI_Bank
EGT_Left			= CreateGauge("parameter")
EGT_Left.arg_number	= 12
EGT_Left.parameter_name = "EGT_Left"
EGT_Left.input		= {0.0, 140.0, 200.0, 500.0, 800.0, 1200.0}
EGT_Left.output		= {0.0,  0.03,  0.1, 0.274,  0.78,    1.0}
EGT_Left.params		= {0}

Tachometer_Left				= CreateGauge("parameter")
Tachometer_Left.arg_number	= 16
Tachometer_Left.parameter_name = "Tachometer_Left"
Tachometer_Left.input		= {  0.0,  50.0, 90.0, 100.0, 107.0}
Tachometer_Left.output		= {0.008, 0.475, 0.84,  0.94,   1.0}
Tachometer_Left.params		= {0}
-- Tachometer_Left.controller	= controllers.Tachometer

Tachometer_percent_Left				= CreateGauge("cycled")
Tachometer_percent_Left.arg_number	= 425
Tachometer_percent_Left.parameter_name = "Tachometer_percent_Left"
Tachometer_percent_Left.cycle_value	= 10.0
Tachometer_percent_Left.input		= {0.0, 10.0}
Tachometer_percent_Left.output		= {0.0, 1.0}
Tachometer_percent_Left.params		= {0}

Altimeter_100_footPtr				= CreateGauge("parameter")
Altimeter_100_footPtr.arg_number	= 10
Altimeter_100_footPtr.parameter_name = "Altimeter_100_footPtr"
Altimeter_100_footPtr.input			= {0.0, 1000.0}
Altimeter_100_footPtr.output		= {0.0, 1.0}
-- Altimeter_100_footPtr.controller	= controllers.Altimeter100ftPtr

Altimeter_10000_footCount				= CreateGauge("parameter")
Altimeter_10000_footCount.arg_number	= 11
Altimeter_10000_footCount.parameter_name = "Altimeter_10000_footCount"
Altimeter_10000_footCount.input			= {0.0, 10.0}
Altimeter_10000_footCount.output		= {0.0, 1.0}
Altimeter_10000_footCount.params		= {2}
-- Altimeter_10000_footCount.controller	= controllers.AltimeterDrumCounter

Altimeter_1000_footCount				= CreateGauge("parameter")
Altimeter_1000_footCount.arg_number		= 520
Altimeter_1000_footCount.parameter_name = "Altimeter_1000_footCount"
Altimeter_1000_footCount.input			= {0.0, 10.0}
Altimeter_1000_footCount.output			= {0.0, 1.0}
Altimeter_1000_footCount.params			= {1}
-- Altimeter_1000_footCount.controller		= controllers.AltimeterDrumCounter

Altimeter_100_footCount					= CreateGauge("parameter")
Altimeter_100_footCount.arg_number		= 521
Altimeter_100_footCount.parameter_name = "Altimeter_100_footCount"
Altimeter_100_footCount.input			= {0.0, 10.0}
Altimeter_100_footCount.output			= {0.0, 1.0}
Altimeter_100_footCount.params			= {0}
-- Altimeter_100_footCount.controller		= controllers.AltimeterDrumCounter

HSI_CompassCard				= CreateGauge("parameter")
HSI_CompassCard.arg_number	= 32
HSI_CompassCard.parameter_name = "HSI_CompassCard"
HSI_CompassCard.input		= {0.0, math.rad(360.0)}
HSI_CompassCard.output		= {0.0,   1.0}

MachIndicator				= CreateGauge("parameter")
MachIndicator.parameter_name = "MachIndicator";
MachIndicator.arg_number	= 179
MachIndicator.input			= {0.5,   0.6,   0.7,   0.8,   0.9,   1.0,   1.1,   1.2,   1.3,   1.4,   1.5,   1.6, 1.7, 2.2} 
MachIndicator.output		= {1.0, 0.929, 0.871, 0.816, 0.765, 0.727, 0.683, 0.643, 0.611, 0.582, 0.551, 0.525, 0.5, 0.4}

-- Standby Attitude Indicator
SAI_Pitch					= CreateGauge("parameter")
SAI_Pitch.arg_number		= 438
SAI_Pitch.parameter_name = "SAI_Pitch"
SAI_Pitch.input				= {-rad_(78.0), -rad_(60.0), -rad_(42.0), 0.0, rad_(42.0), rad_(60.0), rad_(80.0), rad_(92.0)}
SAI_Pitch.output			= {     -0.665,      -0.581,        -0.5, 0.0,        0.5,      0.581,      0.676,      0.735}
-- SAI_Pitch.controller		= controllers.SAI_Pitch

SAI_Bank					= CreateGauge("parameter")
SAI_Bank.arg_number			= 439
SAI_Bank.parameter_name = "SAI_Bank"
SAI_Bank.input				= {-math.pi, math.pi}
SAI_Bank.output				= {-1.0, 1.0}

-- Oil Pressure Indicator (Dual)
OilPressure_Left			= CreateGauge("parameter")
OilPressure_Left.arg_number	= 112
OilPressure_Left.parameter_name = "OilPressure_Left"
OilPressure_Left.input		= {0.0, 100.0}
OilPressure_Left.output		= {0.0, 1.0}
OilPressure_Left.params		= {0}
-- OilPressure_Left.controller	= controllers.OilPressure

NozzlePos_Left				= CreateGauge("parameter")
NozzlePos_Left.arg_number	= 107
NozzlePos_Left.parameter_name = "NozzlePos_Left"
NozzlePos_Left.input		= {0.0, 1.0}
NozzlePos_Left.output		= {0.0, 1.0}
NozzlePos_Left.params		= {0}

-- Oxygen Quantity Indicator
OxygenQuantity				= CreateGauge("parameter")
OxygenQuantity.arg_number	= 390
OxygenQuantity.parameter_name = "OxygenQuantity"
OxygenQuantity.input		= {0.0, 5.0}
OxygenQuantity.output		= {0.0, 1.0}

-- Oxygen Flow Pressure Indicator
FlowPressure				= CreateGauge("parameter")
FlowPressure.arg_number	= 604
FlowPressure.parameter_name = "FlowPressure"
FlowPressure.input		= {0.0, 100.0, 500.0}
FlowPressure.output		= {0.0,   0.5,   1.0}

FlowBlinker				= CreateGauge("parameter")
FlowBlinker.arg_number	= 600
FlowBlinker.parameter_name = "FlowBlinker"
FlowBlinker.input		= {0.0, 1.0}
FlowBlinker.output		= {0.0, 1.0}

-- Hydraulic Pressure Indicators
Utility_Pressure			= CreateGauge("parameter")
Utility_Pressure.arg_number	= 109
Utility_Pressure.parameter_name = "Utility_Pressure"
Utility_Pressure.input		= {0.0, 4000.0}
Utility_Pressure.output		= {0.0, 1.0}
-- Utility_Pressure.controller	= controllers.UtilityPressure

Flight_Pressure				= CreateGauge("parameter")
Flight_Pressure.arg_number	= 110
Flight_Pressure.parameter_name = "Flight_Pressure"
Flight_Pressure.input		= {0.0, 4000.0}
Flight_Pressure.output		= {0.0, 1.0}
-- Flight_Pressure.controller	= controllers.FlightPressure

need_to_be_closed = true -- close lua state after initialization

dofile(LockOn_Options.common_script_path.."tools.lua")
livery = find_custom_livery("TF-51D","default")
