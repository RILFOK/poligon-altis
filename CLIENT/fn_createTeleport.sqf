// [this, tpavia, "Ехать на аэродром"] call client_fnc_createTeleport;
// [this, firezone, "Ехать на стрельбище"] call client_fnc_createTeleport;
// [this, tpport, "Ехать в порт"] call client_fnc_createTeleport;

// [this, basecsat, "Ехать к транспортной авиации"] call client_fnc_createTeleport;
// [this, mainbase, "Ехать на базу"] call client_fnc_createTeleport;
params["_object", "_target", "_name"];

private _actionID = _object addAction [_name, {
	params ["_target", "_caller", "_actionId", "_arguments"];
	
	private _object = _target getVariable format["_object_%1", _actionId];
	_caller setPosASL [
		((getPosASL _object)#0) - ((sin (getDir _object)) * 1.5),
		((getPosASL _object)#1) - ((cos (getDir _object)) * 1.5),
		(getPosASL _object)#2
	];
	_caller setDir (getDir _object);
},[],1,false,true,"","_this distance _target < 4"];

_object setVariable[format["_object_%1", _actionID], _target];
