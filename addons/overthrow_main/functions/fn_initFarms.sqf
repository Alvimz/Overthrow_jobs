if (!isServer) exitWith {};
if (worldName != "Altis") exitWith {}; // Sai do escopo!!
OT_farmData = [
    [[10321,21851.7,0], "banana_field", ""]
    //  adicione mais linhas aqui
	// [[localização], "nome_classe_cfgMarkers.hpp", "label_map"]
];

private _idx = 0;
{
    private _id = format ["%1_%2", _x#1, _idx];
    private _m  = createMarker [_id, _x#0];
    _m setMarkerType (_x#1);
    _m setMarkerText (_x#2);
    _idx = _idx + 1;
} forEach OT_farmData;

