waitUntil {(!isNull player && {local player})};

//Запрашиваем скрипты для HeadlessClient
if (!hasInterface) exitWith{
    player remoteExec ["hc_fnc_reqHeadlessScripts", 2];
}; 

//Запрашиваем скрипты и инитиализируем игрока 
player remoteExec ["plr_fnc_reqPlayerINIT", 2];
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;