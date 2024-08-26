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
	[-4.10514,5.57735,0,154.712],
	[-11.3296,2.11557,0,201.014],
	[-12.0791,-2.12103,0,308.916],
	[3.95542,-5.29567,0,330.423],
	[11.5791,2.38052,0,128.43],
	[11.5302,-1.34564,0,55.2483]
];

["Land_HBarrier_5_F", [-3.60463, -0.0118489], 180.666] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-3.14611, 7.06718], 60.1991] call srv_fnc_obj_place;
["Land_HBarrier_1_F", [0, -0.00750002], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-3.38958, 7.18026], 181.634] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-8.2376, 7.21523], 119.147] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [-3.25107, -6.70903], 299.75] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [0.0256822, 7.16125], 269.75] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [3.04055, 7.0113], 120.124] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-8.10791, -6.52041], 238.848] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-6.04736, 9.48603], 0.778401] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [-3.43878, -6.88281], 181.634] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-11.5362, 6.16596], 299.259] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [2.93582, -6.72457], 239.825] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-0.16204, -6.9323], 271.395] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [7.70344, -0.276704], 180.666] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_Big_F", [-11.4905, -6.43005], 238.778] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [-6.20503, -9.49151], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [7.71259, 6.9791], 181.634] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [3.24438, -6.84964], 0.942299] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [5.789, 9.43373], 0] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [7.88954, 6.88002], 58.9818] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [5.67057, -9.40916], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [7.98706, -6.85589], 299.281] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [11.447, 6.49422], 58.1654] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [11.358, -5.84429], 119.712] call srv_fnc_obj_place;

sleep 5;
_artygroup = createGroup WEST;
[_artygroup, "B_Mortar_01_F", [-5.78319,3.78133,0], 0] call srv_fnc_obj_placeArty;
[_artygroup, "B_Mortar_01_F", [5.78534,3.5786,0], 0] call srv_fnc_obj_placeArty;
[_artygroup, "B_Mortar_01_F", [5.82177,-3.30159,0], 0] call srv_fnc_obj_placeArty;
[_artygroup, "B_Mortar_01_F", [-5.69645,-3.74218,0], 0] call srv_fnc_obj_placeArty;

//Ставим юнитов на заготовленые
sleep 1;
private _list = (Enemy_Config get "DEFENCE_BASH");
{
	[_group, selectRandom _list, [_x#0,_x#1,_x#2], _x#3] call srv_fnc_obj_placeSolider;
} forEach _soliderPosition;

[_point] spawn srv_fnc_defenceBash;