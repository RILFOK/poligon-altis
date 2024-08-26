params["_position"];

_dir = (random 360);

_point = "Land_Campfire_F" createVehicle _position;
_point setVectorUp surfaceNormal position _point;
_point setDir _dir;
_point setPos _position;
_point setPos (getPos _point vectorAdd [0, 0, 0]);

ET_Object = _point;

_point enableSimulation false;
_point allowdamage false;
_group = createGroup WEST;

_obj1 = ["Land_TentDome_F", [1.41712, 3.56993], 309.506] call srv_fnc_obj_place;
_obj2 = ["Land_TentDome_F", [1.86707, -3.32254], 44.4358] call srv_fnc_obj_place;
_obj3 = ["Land_TentDome_F", [-2.33651, -4.3022], 23.7286] call srv_fnc_obj_place;
_obj4 = ["Land_TentDome_F", [3.22585, -0.023179], 0] call srv_fnc_obj_place;

["CamoNet_ghex_open_F", [0.212953, -0.211579], 270.671] call srv_fnc_obj_place;

[_position] remoteExec ["srv_fnc_aiProtectMission", (call srv_fnc_scriptOwner)];
[_position, [
	"Уничтожить лагерь противнки", //титл
	"Союзные силы засекли лагерь противника, уничтожьте его по возможности", //описание
	"D", //иконка
	[_obj1, _obj2, _obj3, _obj4] //обьекты которые надо уничтожить
]] call srv_fnc_finalExtraTask;