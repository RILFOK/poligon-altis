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

_obj1 = ["Land_MedicalTent_01_tropic_closed_F", [-8.87952, 5.68232], 89.8864] call srv_fnc_obj_place;
_obj2 = ["Land_MedicalTent_01_tropic_closed_F", [-7.34428, 16.6935], 107.766] call srv_fnc_obj_place;
_obj3 = ["Land_Cargo_House_V3_F", [-6.39705, -11.5222], 180.215] call srv_fnc_obj_place;
_obj4 = ["Land_Cargo_House_V3_F", [-13.5338, -11.3201], 180.215] call srv_fnc_obj_place;

_vehicle = ["GROUND", _group, "B_APC_Tracked_01_AA_F", [11.719, 9.246, 0], 191] call srv_fnc_obj_placeTurret;
_vehicle setFuel 0;

["Land_HBarrier_5_F", [1.72196, 3.59725], 88.6007] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [15.2822, 2.44757], 192.615] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-2.63099, -2.4102], 0] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [15.3347, 3.69588], 279.342] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-7.09717, -2.3665], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-2.35084, -10.3287], 0] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [16.2666, 9.19685], 279.342] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [3.54126, 18.7019], 109.114] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-2.35968, -11.7043], 89.1832] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [17.4337, 14.8118], 192.615] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-8.13966, -16.0298], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [4.1032, 19.8587], 196.238] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [-17.08, -2.42045], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-17.0819, 3.39266], 88.6007] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-1.30537, 21.5005], 196.238] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [-16.272, 8.63844], 98.4811] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-13.7669, -16.0498], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-17.8103, -8.59228], 274.824] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [-15.2039, 14.1098], 100.78] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-13.6382, 19.562], 106.819] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-17.8707, -10.3361], 90.0287] call srv_fnc_obj_place;

sleep 2;

["Land_HBarrier_5_F", [-6.64558, 23.0459], 196.238] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-19.4264, -16.0977], 0] call srv_fnc_obj_place;
["Land_HBarrier_5_F", [-12.1669, 24.8852], 105.025] call srv_fnc_obj_place;

[_position] remoteExec ["srv_fnc_aiProtectMission", (call srv_fnc_scriptOwner)];
[_position, [
	"Уничтожить базу противника", //титл
	"Поступила боевая задача, союзный силы обнаружили базу противника и просят ее уничтожить.", //описание
	"D", //иконка
	[_obj1, _obj2, _obj3, _obj4, _vehicle] //обьекты которые надо уничтожить
]] call srv_fnc_finalExtraTask;