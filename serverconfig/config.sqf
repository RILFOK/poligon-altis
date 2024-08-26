// УНИКАЛЬНОЕ ИМЯ ДЛЯ КАРТЫ (НУЖНО ДЛЯ ХРАНЕНИЯ СПИСКА ТРИГЕЕРОВ В БД)
/*
Требования к идентификатору: "UTF_[ИМЯ_НЕДЕЛИ]_[ИМЯ_КАРТЫ]"
Пример: "UTF_VANILA_ALTIS"
*/
//------------------------------------------------------------
missionNameSpace setVariable ["Unique_Map_Name","UTF_VANILLA_ALTIS",true];
//------------------------------------------------------------


//--------------------------------------------
// 1. НАСТРОЙКА КОЛИЧЕСТВА ТРИГГЕРОВ
// 2. ТИП РЕСТАРТА ПОСЛЕ КОНЦА ПОСЛЕДНЕГО ТРИГГЕРА
// --- #restart - малый рестарт
// --- #restartserver - большой рестарт
//--------------------------------------------
private _config = [2, "#restart"]; 
missionNameSpace setVariable ["_config", _config];



//------------------------------------------------------------------------------------
//====================================================================================
//------------------------------------------------------------------------------------

//
//                         НАСТРОЙКИ СЕРВЕРНЫХ МЕХАННИК
//

//НАСТРОЙКИ ДЛЯ BASH_SETTINGS
_bashSettings = createHashMapFromArray [
	["0", ["Штаб", "Уничтожить штаб", "Штаб уничтожен", "штаб"]],
	["1", ["Вышка", "Уничтожить радиовышку", "Радиовышка уничтожена", "вышка"]],
	["2", ["Передатчик", "Уничтожить передатчик", "Передатчик уничтожен", "передатчик"]]
];

//НАСТРОЙКИ ДЛЯ CONFIG_CONTAINERS
_containersSettings = createHashMapFromArray [
	["GREEN", [
		["FirstAidKit", 20],
		["ToolKit ", 1],
		["Medikit", 1],
		["MineDetector ", 2],
		["HandGrenade", 4],
		["RPG7_F", 20],
		["ClaymoreDirectionalMine_Remote_Mag", 4],
		["ATMine_Range_Mag", 6],
		["launch_RPG7_F", 2],
		["arifle_AK12_F", 2],
		["optic_Holosight_blk_F", 2],
		["30Rnd_762x39_AK12_Mag_F", 30]
	]],
	["NATO_BK", [
		["MRAWS_HEAT_F", 20],
		["Titan_AA", 20],
		["NLAW_F", 10],
		["arifle_MXC_F", 5],
		["optic_Holosight_blk_F", 5],
		["30Rnd_65x39_caseless_mag", 50],
		["30Rnd_556x45_Stanag", 50],
		["FirstAidKit", 50],
		["ToolKit", 5],
		["Medikit", 5],
		["SmokeShell", 10],
		["DemoCharge_Remote_Mag", 10],
		["HandGrenade", 10]
	]]
];

//НАСТРОЙКИ СЕРВЕРНЫХ МЕХАННИК
private _serverSettings = createHashMapFromArray [
	//РАДИУС ЗАЩИТЫ ТРИГГЕРА, В ЭТОМ РАДИУСЕ СПАВНИТСЯ ВСЯ ПЕХОТА
	["DEFENCE_POINT_RADIUS", 500],
	
	//БУДЕТ ЛИ АРТИЛЛЕРИЯ В ТРИГГЕРЕ
	["ARTILLERY_ENABLED", true],
	
	//БУДЕТ ЛИ ПАТРУЛЬНЫЙ ВОЗДУХ
	["AIRPATROL_ENABLED", true],

	//БУДЕТ ЛИ РАДАРНЫЙ ВОЗДУХ 
	["AIRRADAR_ENABLED", true],
	
	//БУДУТ ЛИ УКРЕПЫ В ТРИГГЕРЕ
	["UKREPS_ENABLED", true],
	
	//БУДУТ ЛИ МИНЫ В ТРИГГЕРЕ
	["MINES_ENABLED", true],
	["MINES_GROUND", "APERSMine"],

	//БУДЕТ ЛИ СПАВНИТСЯ БК ЯЩИК И КОМПЬЮТЕР В ШТАБЕ
	["COMPUTER_IN_HQ_ENABLED", true],

	//БУДЕТ ЛИ ПЕХОТНЫЙ ПОДКРЕП В ТРИГГЕРЕ
	["REIN_PECHOTA_PODKREP", [
		false, //Включены ли наземные подкрепы
		0,    //-- Количество отрядом на одном направление
		0,    //-- количество пехоты в одном отряде
		0     //-- Количество направлений
	]],
	
	//БУДЕТ ЛИ ЭСМИНЕЦ
	["SHIP_ENABLED", true],
	
	//НАСТРОЙКИ ЗАДАНИЙ, ВЫШЕ
	["BASH_SETTINGS", _bashSettings],

	//НАСТРОЙКИ КОНТЕЙНЕРОВ БК В ШТАБЕ И СХРОНОВ ДЛЯ ЗЕЛЕНИ, ВЫШЕ
	["CONFIG_CONTAINERS", _containersSettings],
	["RECON_RADIUS_SPAWN", 1000],
	["HEIGHT_SPAWN_AIR", [
		100, //-- GHOSTHAWK
		100, //-- CHINYK
		150, //-- HELI
		650  //-- PLANE
	]],
	//НАСТРОЙКА ОБОРОНЫ РАДАРА (ДОП МИССИИ)
	["RADAR_CONFIG", [
		0, 	//-- TANKS
		0, 	//-- CARS
		0, 	//-- SQUAD COUNT
		0, 	//-- UNIT IN SQUAD
		100, //-- DEFENCE RADIUS
		"RECON" //-- UNIT TYPE, ONLY "RECON" OR "INFANTRY"
	]],
	["MISSION_CONFIG", [
		false, //--ENABLED
		0, 	//-- TANKS
		0, 	//-- CARS
		0, 	//-- SQUAD COUNT
		0, 	//-- UNIT IN SQUAD
		50, //-- DEFENCE RADIUS
		"RECON" //-- UNIT TYPE, ONLY "RECON" OR "INFANTRY"
	]]
];

//------------------------------------------------------------------------------------
//====================================================================================
//------------------------------------------------------------------------------------



// Список доп "параметров" триггера, распространяемых на всю карты 
//// Могут быть переписаны, из БД, свойственными конкретному триггеру
//------------------------------------------------------------

// Формируем сам список. 
// НЕ ОБЯЗАТЕЛЬНО УКАЗЫВАТЬ,ЗАПОЛНЯТЬ ВСЕ ПАРАМЕТРЫ. 
// Дефолтные значения лежат на сервермоде. Сюда нужны только изменения от дефолта.

//------------------------------------------------------------
private _mapParameters = createHashMapFromArray [
  ["START_CLASS_TOWER", "Land_TTowerBig_2_F"],
  ["START_CLASS_TRANSMITTER", "Land_TBox_F"],
  ["START_CLASS_HQ", "Land_Cargo_HQ_V1_F"],
  ["START_PERCENT_BOT_IN_HOUSES", "15"],
  ["START_SQUAD_SIZE", "8"],
  ["START_NUMBER_OF_PATROL_GROUPS", "8" ],
  ["START_NUMBER_OF_CAR", "3"],
  ["START_NUMBER_OF_TANK", "4"],
  ["START_NUMBER_OF_SPECIAL_FORCES_GROUP", "8"],
  ["START_NUMBER_OF_FORTIFICATEIONS", "3"],
  ["START_ADDITIONAL_TASK", "0"],
  ["REINFORCEMENT_NUMBER", "8"],
  ["REINFORCEMENT_CAR", "2"],
  ["REINFORCEMENT_TANK", "4"],
  ["REINFORCEMENT_DESANT", "2"],
  ["REINFORCEMENT_GOSTA", "1"],
  ["REINFORCEMENT_PROTECTION", "1"]
];


//--------------------------------------------

// НАСТРОЙКИ СОЮЗНОЙ СТОРОНЫ

//--------------------------------------------
private _csatParam = createHashMapFromArray [
	["ATTACKHELI", [
		"O_Heli_Attack_02_dynamicLoadout_F"
	]],
	["GHOSTHAWK", [
		"O_Heli_Light_02_dynamicLoadout_F"
	]],
	["CHINYK", [
		"O_Heli_Transport_04_covered_F"
	]],
	["USMC_INFANTRY", [
		"O_medic_F",
		"O_Soldier_GL_F",
		"O_engineer_F",
		"O_Soldier_SL_F",
		"O_soldier_M_F",
		"O_Soldier_F",
		"O_Soldier_AT_F",
		"O_Soldier_AA_F",
		"O_Soldier_AR_F",
		"O_Soldier_LAT_F"
	]],
	["TANK", [
		"O_APC_Tracked_02_cannon_F",
		"O_MBT_04_command_F",
		"O_MBT_04_cannon_F",
		"O_MBT_02_cannon_F"
	]],
	["CAR", [
		"O_MRAP_02_gmg_F",
		"O_MRAP_02_hmg_F",
		"O_LSV_02_AT_F",
		"O_LSV_02_armed_F"
	]]
];

//--------------------------------------------

// НАСТРОЙКИ ВРАЖЕСКОЙ СТОРОНЫ

//--------------------------------------------
private _enemyParam = createHashMapFromArray [
	["ENEMY_AIR_RADAR", [
		"I_Plane_Fighter_03_AA_F",
		"I_Plane_Fighter_03_CAS_F",
		"B_Plane_Fighter_01_Stealth_F"
	]],
	//подкреп - вертолет с вооружением + десант
	["GHOSTHAWK", [
		"B_Heli_Transport_01_F"
	]],
	
	//подкреп - вертолет с десантом
	["CHINYK", [
		"B_Heli_Transport_03_unarmed_F"
	]],

	//арта
	["ARTILLERY", [
		//Арта большого калибра
		["B_MBT_01_arty_F", ["32Rnd_155mm_Mo_shells", "4Rnd_155mm_Mo_guided"]],
		
		//Арта малого калибра
		["B_Mortar_01_F", ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_shells"]]
	]],
	
	//вертолет который прилетит когда собьют верт с десантом (наземка)
	["REVENGE_ENEMY_AIR_HELI", [
		"B_Heli_Attack_01_dynamicLoadout_F"
	]],

	//самолет который прилетит когда собьют верт с десантом (цуп)
	["REVENGE_ENEMY_AIR_PLANE", [
		"B_Plane_Fighter_01_F",
		"B_Plane_Fighter_01_Stealth_F"
	]],

	//патруль - вертолеты
	["ENEMY_AIR_PATROL_HELI", [
		"B_Heli_Light_01_dynamicLoadout_F",
		"B_Heli_Attack_01_dynamicLoadout_F"
	]],

	//патруль - самолеты
	["ENEMY_AIR_PATROL_PLANE", [
		"B_Plane_CAS_01_dynamicLoadout_F",
		"B_Plane_CAS_01_dynamicLoadout_F",
		"B_T_VTOL_01_armed_F"
	]],

	//пехота триггера
	["INFANTRY", [
		"B_Soldier_GL_F",
		"B_engineer_F",
		"B_Soldier_TL_F",
		"B_Soldier_SL_F",
		"B_medic_F",
		"B_soldier_repair_F",
		"B_officer_F",
		"B_Soldier_A_F",
		"B_soldier_AAR_F",
		"B_soldier_AAA_F",
		"B_soldier_AAA_F",
		"B_soldier_AAA_F",
		"B_soldier_AAA_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AR_F",
		"B_soldier_AA_F",
		"B_soldier_AT_F",
		"B_soldier_exp_F",
		"B_soldier_M_F",
		"B_Soldier_F",
		"B_soldier_LAT_F" ,
		"B_HeavyGunner_F" ,
		"B_soldier_UAV_F" ,
		"B_Sharpshooter_F"
	]],
	
	//десант пехота
	["USMC_INFANTRY", [
		"B_Soldier_SL_F",
		"B_medic_F",
		"B_soldier_repair_F",
		"B_officer_F",
		"B_Soldier_A_F",
		"B_soldier_AAR_F",
		"B_soldier_AAA_F",
		"B_soldier_AAA_F",
		"B_soldier_AAA_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AAT_F",
		"B_soldier_AR_F",
		"B_soldier_AA_F",
		"B_soldier_AT_F",
		"B_soldier_exp_F",
		"B_soldier_M_F",
		"B_Soldier_F",
		"B_soldier_LAT_F"
	]],
    ["USMC_AQUALANG", [
        "B_T_Diver_F",
        "B_T_Diver_Exp_F",
        "B_T_Diver_TL_F"
    ]],
	//спн
	["RECON", [
		"B_recon_TL_F",
		"B_recon_M_F",
		"B_recon_medic_F",
		"B_recon_LAT_F",
		"B_recon_JTAC_F",
		"B_recon_exp_F"
	]],

	["DEFENCE_BASH", [
		"B_Soldier_SL_F",
		"B_soldier_AR_F",
		"B_HeavyGunner_F",
		"B_soldier_AAR_F",
		"B_soldier_M_F",
		"B_Sharpshooter_F",
		"B_soldier_LAT_F",
		"B_medic_F"
	]],

	//легкие машины в триггере/подкрепе
	["CAR", [
		"B_MRAP_01_gmg_F",
		"B_MRAP_01_hmg_F",
		"B_LSV_01_AT_F",
		"B_LSV_01_armed_F",
		"B_G_Offroad_01_AT_F",
		"B_APC_Tracked_01_AA_F",
		"B_AFV_Wheeled_01_up_cannon_F",
		"B_G_Offroad_01_armed_F"
	]],

	//танки в триггере/подкрепе
	["TANK", [
		"B_APC_Wheeled_01_cannon_F",
		"B_APC_Wheeled_01_cannon_F",
		"B_APC_Wheeled_01_cannon_F",
		"B_APC_Tracked_01_CRV_F",
		"B_APC_Tracked_01_rcws_F",
		"B_MBT_01_cannon_F",
		"B_MBT_01_TUSK_F",
		"B_T_MBT_01_cannon_F",
		"B_T_MBT_01_TUSK_F",
		"B_T_APC_Tracked_01_AA_F",
		"B_MBT_01_TUSK_F",
		"B_AFV_Wheeled_01_up_cannon_F",
		"B_APC_Tracked_01_AA_F"
	]]
];

private _fortificationConfig = [
	//1. Тип
	//2. Оффсет
	//3. Цена
	["Земля", "Land_ManurePile_01_F", -0.9, 25],
	["Бруствер [3б]", "Land_HBarrier_3_F", -1, 30],
	["Бруствер [5б]", "Land_HBarrier_5_F", -1, 45],
	["Бетонное перекрытие", "Land_CncShelter_F", -2, 45],
	["Мешки с песком (длинный)", "Land_BagFence_Long_F", -0.75, 10],
	["Мешки с песком (закругленный)", "Land_BagFence_Round_F", -0.75, 8],	
	["Мешки с песком (угол)", "Land_BagFence_Corner_F", -0.75, 8],
	["Мешки с песком (большой)", "Land_SandbagBarricade_01_half_F", -0.75, 15]	
];

private _fortificationConfigRP = [
	// 1. Тип
	// 2. Оффсет
	// 3. Цена
	["пластиковая сеть, 4c", "Land_PlasticNetFence_01_long_F", -1, 5],
	["пластиковая сеть, 2c", "Land_PlasticNetFence_01_short_F", -1, 5],
	["палатка во весь рост", "Land_ConnectorTent_01_white_open_F", -2.8, 5],
	["металлический ёж", "Land_CzechHedgehog_01_new_F", -1.2, 5],
	["тачка строительная", "Land_WheelCart_F", 0, 5],
	["скамья строительная деревянная", "Land_WorkStand_F", 0, 5],
	["пень", "Land_WoodenLog_F", 0, 5],
	["куча сумок туристических", "Land_LuggageHeap_02_F", 0, 5],
	["конус", "RoadCone_F", 0, 5],
	["барьер для обозначения дорожных работ", "RoadBarrier_F", 0, 5],
	["барьер для обозначения дорожных работ 2", "RoadBarrier_small_F", 0, 5],
	["шест для обозначения дорожных работ", "Pole_F", 0, 5],
	["пластиковый барьер желтый дорожный", "Land_PlasticBarrier_02_F", 0, 5],
	["пластиковый барьер красный дорожный тонкий", "Land_PlasticBarrier_03_F", 0, 5],
	["носкилки", "Land_Stretcher_01_F", 0, 5],
	["труп в сумке", "Land_Bodybag_01_black_F", 0, 5],
	["Земля", "Land_ManurePile_01_F", -0.9, 25],
	["Бруствер [3б]", "Land_HBarrier_3_F", -1, 30],
	["Бруствер [5б]", "Land_HBarrier_5_F", -1, 45],
	["Бетонное перекрытие", "Land_CncShelter_F", -2, 45],
	["Мешки с песком (длинный)", "Land_BagFence_Long_F", -0.75, 10],
	["Мешки с песком (закругленный)", "Land_BagFence_Round_F", -0.75, 8],
	["Мешки с песком (угол)", "Land_BagFence_Corner_F", -0.75, 8],
	["Мешки с песком (большой)", "Land_SandbagBarricade_01_half_F", -0.75, 15]
];

//------------------------------------------------------------
// Записываем список в Глобал переменную
//------------------------------------------------------------
missionNameSpace setVariable ["Unique_Map_Parameters", _mapParameters];
missionNamespace setVariable ["Server_Settings", _serverSettings];
missionNameSpace setVariable ["Enemy_Config", _enemyParam];
missionNameSpace setVariable ["Csat_Config", _csatParam];

missionNameSpace setVariable ["Fortification_Config", _fortificationConfig, true];
missionNameSpace setVariable ["Fortification_ConfigRP", _fortificationConfigRP, true];
//------------------------------------------------------------

//------------------------------------------------------------
// ЧЕРНЫЙ СПИСОК ПИЛОНОВ
//------------------------------------------------------------
missionNameSpace setVariable ["PylonManagerBlackList",[],true];