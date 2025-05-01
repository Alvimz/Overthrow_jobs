// banana_collect.sqf
params ["_target", "_caller"];

[
    4,
    [_target, _caller],   // agora _target e _caller estão definidos
    {
        params ["_args", "_elapsed", "_total", "_err"];
        _args params ["_target", "_caller"];

        _caller playActionNow "PutDown";
        [_caller, "ACE_Banana", "", 1] call ace_common_fnc_addToInventory;
    },
    {
        hint "Coleta cancelada.";
    },
    "Coletando banana…"
] call ace_common_fnc_progressBar;
