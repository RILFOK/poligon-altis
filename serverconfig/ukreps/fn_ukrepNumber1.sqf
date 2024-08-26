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
	[-4.33682,-2.39049,0,321.117],
	[7.55563,4.36659,0,223.235],
	[1.15286,-7.99157,0,179.424],
	[-2.29684,9.63136,0,359.688],
	[7.04935,9.91676,0,1.10563],
	[12.6759,1.37696,0,91.304],
	[11.4413,8.26905,0,46.3047],
	[-7.74326,-8.13134,0,179.058],
	[-12.5809,3.9618,0,269.475],
	[-12.8168,-3.51208,0,269.399]
];

["Land_HBarrier_5_F", [2.76908, 0.0412383], 270.522] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [2.90605, 0.272353], 358.966] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-2.65139, -2.50161], 270.522] call srv_fnc_obj_place;
["Land_HBarrierWall6_F", [3.66476, 6.75281], 1.77798] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-5.8055, 1.73744], 358.966] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_3_F", [2.54607, -4.73722], 0] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-4.85218, 6.35555], 0] call srv_fnc_obj_place;
["Land_HBarrierWall6_F", [-4.05983, -4.9071], 181.291] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [9.53086, 3.45287], 269.685] call srv_fnc_obj_place;
_bash1 = ["Land_HBarrierTower_F", [7.21703, -5.90362], 0] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [0.968201, 11.1658], 180.116] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-1.11563, -9.47239], 0.630219] call srv_fnc_obj_place;
_bash2 = ["Land_HBarrierTower_F", [-7.463, 7.55608], 181.166] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-9.60879, -1.68294], 90.1992] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [10.0638, 11.3673], 178.972] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [14.5377, -4.78586], 180.116] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [14.3151, -3.48524], 269.644] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [14.337, 2.14855], 269.644] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-10.2127, -9.59235], 359.487] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [13.9897, 7.67632], 228.742] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [-14.5415, 6.60036], 0.630219] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-14.3305, 5.29783], 90.1579] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-14.403, -0.335471], 90.1579] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-14.1052, -5.86616], 49.2558] call srv_fnc_obj_place;

sleep 5;

["OBJECT", _group, "B_HMG_01_high_F", _bash1] call srv_fnc_obj_placeTurret;
["OBJECT", _group, "B_HMG_01_high_F", _bash2] call srv_fnc_obj_placeTurret;

//Ставим юнитов на заготовленые
sleep 1;
private _list = (Enemy_Config get "DEFENCE_BASH");
{
	[_group, selectRandom _list, [_x#0,_x#1,_x#2], _x#3] call srv_fnc_obj_placeSolider;
} forEach _soliderPosition;

[_point] spawn srv_fnc_defenceBash;