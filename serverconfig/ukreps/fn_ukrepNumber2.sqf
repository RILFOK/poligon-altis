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
	[-6.19369,5.99095,0,178.178],
	[1.96143,2.18566,0,267.514],
	[-6.33158,-2.47086,0,356.998],
	[-4.27856,8.3835,0,354.543],
	[2.27164,-3.30975,0,85.3723],
	[0.807697,12.1499,0,357.694],
	[-7.4672,-9.028,0,143.47],
	[11.4389,2.55877,0,88.9661],
	[6.73283,-9.31346,0,339.123],
	[9.66653,11.6168,0,51.1698]
];

_bash1 = ["Land_HBarrierTower_F", [-9.38323, 7.50686], 90.0538] call srv_fnc_obj_place;
_bash2 = ["Land_HBarrierTower_F", [-9.53434, -4.50761], 89.4965] call srv_fnc_obj_place;

["Land_HBarrier_1_F", [0, -0.00750002], 0] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [3.05234, -0.00142763], 179.963] call srv_fnc_obj_place;
["Land_HBarrierWall_corner_F", [2.38707, 5.1902], 0.557398] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-0.0376026, -2.82041], 89.9069] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-0.418714, 10.455], 89.8689] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [-8.95407, 9.94041], 359.616] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [2.7649, 8.3661], 0] call srv_fnc_obj_place;
["Land_HBarrierWall6_F", [1.26702, -6.55256], 182.652] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [6.12887, 3.37597], 91.3021] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-4.6378, 13.4955], 89.9069] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_3_F", [-2.51897, -7.98641], 89.9069] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-0.556296, 13.8443], 0.344331] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [2.99436, 14.0078], 89.8689] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-5.77123, -8.81385], 89.9069] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-8.22633, -10.8095], 225.351] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_3_F", [-2.7119, -11.1259], 0.956373] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [-5.55742, -11.0313], 179.413] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [9.80594, 0.233496], 0] call srv_fnc_obj_place;
["Land_BagFence_Round_F", [5.21815, 14.8609], 179.742, -0.00130129] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [7.37706, 13.9173], 89.8689] call srv_fnc_obj_place;

sleep 1;

["Land_BagFence_Round_F", [1.19758, -12.3398], 0.484353, -0.00130129] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [11.8542, 0.386734], 90.1841] call srv_fnc_obj_place;
["Land_HBarrier_3_F", [9.79881, 8.86792], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [7.35428, -11.1385], 180.205] call srv_fnc_obj_place;
["Land_BagFence_Round_F", [13.1083, 2.32773], 270.086, -0.00130129] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_1_F", [12.7377, 4.53652], 0] call srv_fnc_obj_place;
["Land_BagFence_Round_F", [13.0814, 6.7332], 270.086, -0.00130129] call srv_fnc_obj_place;
["Land_BagBunker_Tower_F", [10.8452, -7.08412], 179.767] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [7.69354, 13.6314], 359.032] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [11.8863, 9.47227], 270.918] call srv_fnc_obj_place;

sleep 5;

["OBJECT", _group, "B_HMG_01_high_F", _bash1] call srv_fnc_obj_placeTurret;
["OBJECT", _group, "B_HMG_01_high_F", _bash2] call srv_fnc_obj_placeTurret;

["GROUND", _group, "B_HMG_01_high_F", [11.1312,6.69479,0], 89.651] call srv_fnc_obj_placeTurret;
["GROUND", _group, "B_HMG_01_high_F", [5.0863,12.9574,0], 358.131] call srv_fnc_obj_placeTurret;
["GROUND", _group, "B_HMG_01_high_F", [1.21065,-10.6816,0], 177.979] call srv_fnc_obj_placeTurret;

//Ставим юнитов на заготовленые
sleep 1;
private _list = (Enemy_Config get "DEFENCE_BASH");
{
	[_group, selectRandom _list, [_x#0,_x#1,_x#2], _x#3] call srv_fnc_obj_placeSolider;
} forEach _soliderPosition;

[_point] spawn srv_fnc_defenceBash;