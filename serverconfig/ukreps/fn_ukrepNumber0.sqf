params["_position"];
// ! Это не трогаем
_point = "Land_HBarrier_1_F" createVehicle _position;
_point setVectorUp surfaceNormal position _point;
_point setDir (random 360);
_point setPos _position;
_point setPos (getPos _point vectorAdd [0, 0, 0]);

_point enableSimulation false;
_point allowdamage false;
_group = createGroup WEST;
// ! Создание укрепа начинаем отсюда

// Позиция солдат
private _soliderPosition = [
	[-1.92423,-4.30784,0,13.7498],
	[9.30221,3.8926,0,197.586],
	[13.0019,-0.972023,0,88.7677],
	[13.1759,-5.76676,0,89.3623],
	[-13.5511,-2.18586,0,250.781],
	[-11.1957,-12.1516,0,207.235],
	[-13.8257,3.77114,0,298.641],
	[-13.8119,11.6501,0,296.598]
];

_bash1 = ["Land_HBarrierTower_F", [-0.396947, 11.658], 179.49] call srv_fnc_obj_place;
_bash2 = ["Land_HBarrierTower_F", [12.2975, -11.3791], 0] call srv_fnc_obj_place;
_bash3 = ["Land_HBarrierTower_F", [-1.72254, -11.2791], 0] call srv_fnc_obj_place;

["Land_HBarrier_1_F", [0, -0.00750002], 0] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [0.407562, -5.20716], 90.1992] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-4.72379, -2.04957], 358.664] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [9.85544, -5.32407], 90.1992] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [13.6645, 2.48627], 179.532] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrierWall6_F", [-9.54218, -4.04672], 269.684] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [14.8118, -3.39545], 269.3] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-6.147, -10.6986], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [14.8831, -8.9842], 269.3] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_3_F", [-9.93, 4.24323], 0] call srv_fnc_obj_place;
["Land_Cargo_House_V3_F", [-6.6626, 8.47594], 0] call srv_fnc_obj_place;
["Land_Cargo_Patrol_V3_F", [14.8406, 5.58116], 268.147] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [14.6977, 5.552], 90.1992] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrierWall6_F", [6.32421, 14.6951], 3.46206] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [12.5022, 11.7816], 234.758] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-10.8628, 7.65109], 90.1992] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-10.0377, -14.6084], 0] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_3_F", [-15.1215, -7.56445], 0] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-16.0181, -4.16549], 0] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-7.6122, 13.1185], 179.847] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-15.8841, -4.41559], 269.3] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-16.0026, 5.49583], 0] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [-14.7558, -11.8907], 268.745] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-14.622, -12.1165], 32.9609] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-15.8942, 1.20422], 269.3] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-15.9146, 8.74426], 269.3] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-16.1488, 13.1505], 0] call srv_fnc_obj_place;

sleep 5;

["OBJECT", _group, "B_HMG_01_high_F", _bash1] call srv_fnc_obj_placeTurret;
["OBJECT", _group, "B_HMG_01_high_F", _bash2] call srv_fnc_obj_placeTurret;
["OBJECT", _group, "B_HMG_01_high_F", _bash3] call srv_fnc_obj_placeTurret;

//Ставим юнитов на заготовленые
sleep 1;
private _list = (Enemy_Config get "DEFENCE_BASH");
{
	[_group, selectRandom _list, [_x#0,_x#1,_x#2], _x#3] call srv_fnc_obj_placeSolider;
} forEach _soliderPosition;

[_point] spawn srv_fnc_defenceBash;