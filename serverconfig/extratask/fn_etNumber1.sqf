params["_position"];

_dir = (random 360);

_point = "Land_HBarrier_1_F" createVehicle _position;
_point setVectorUp surfaceNormal position _point;
_point setDir _dir;
_point setPos _position;
_point setPos (getPos _point vectorAdd [0, 0, 0]);

ET_Object = _point;

_point enableSimulation false;
_point allowdamage false;
_group = createGroup WEST;

_obj1 = ["Land_Cargo_House_V4_F", [16.2156, 1.29464], 270.069] call srv_fnc_obj_place;
_obj2 = ["Land_Cargo_House_V4_F", [16.1689, -5.3346], 270.069] call srv_fnc_obj_place;

_veh1 = ["GROUND", _group, "B_Truck_01_ammo_F", [0.845331,-4.00937, 0], 269] call srv_fnc_obj_placeTurret;
_veh2 = ["GROUND", _group, "B_Truck_01_ammo_F", [1.05178,-10.1666, 0], 269] call srv_fnc_obj_placeTurret;
_veh1 setFuel 0;
_veh2 setFuel 0;

["Land_HBarrier_5_F", [3.01529, 1.18771], 180.011] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [2.8448, 6.90813], 89.7994] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-13.692, 1.21626], 181.753] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [2.85467, 12.4923], 89.7994] call srv_fnc_obj_place;
["CamoNet_ghex_open_F", [4.68087, 9.36661], 87.9176] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [11.5205, 0.0329531], 180.226] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_5_F", [-1.4028, 13.9544], 1.76375] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-17.9497, 2.67751], 269.788] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [11.3732, -1.31125], 89.7994] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_Big_F", [-0.240425, -16.0045], 1.90678] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-17.9409, 8.26173], 269.788] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-18.1125, 13.9821], 0] call srv_fnc_obj_place;

sleep 1;

["Land_HBarrier_Big_F", [11.5367, -10.7059], 270.477] call srv_fnc_obj_place;
["Land_HBarrier_01_tower_green_F", [-7.40517, -19.4914], 180] call srv_fnc_obj_place;
["Land_HBarrier_Big_F", [8.27943, -15.9755], 1.90678] call srv_fnc_obj_place;
["CamoNet_ghex_open_F", [10.8834, -14.983], 310.774] call srv_fnc_obj_place;

sleep 1;

[_position] remoteExec ["srv_fnc_aiProtectMission", (call srv_fnc_scriptOwner)];
[_position, [
	"Уничтожить базу снабжения противника", //титл
	"Поступила боевая задача, союзный силы обнаружили базу противника и просят ее уничтожить. Необходимо уничтожить 2 машины, один вертолет, жилые модули", //описание
	"D", //иконка
	[_obj1, _obj2, _veh1, _veh2] //обьекты которые надо уничтожить
]] call srv_fnc_finalExtraTask;
