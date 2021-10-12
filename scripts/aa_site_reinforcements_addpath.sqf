// Big disgusting hack to re-add a group name to a unit after an ace fast rope and then add waypoints to them (ace fastrope deletes group name and waypoints for AIs)

spetsnaz_regroup_1 = group spetsnaz1_1;
spetsnaz_regroup_2 = group spetsnaz2_1;
spetsnaz_regroup_3 = group spetsnaz3_1;

spetsnaz_regroup_1 addWaypoint [getMarkerPos "spetsnaz1mkr1", 0];
spetsnaz_regroup_2 addWaypoint [getMarkerPos "spetsnaz1mkr1", 0];
spetsnaz_regroup_3 addWaypoint [getMarkerPos "spetsnaz1mkr1", 0];

// re-enable damage for team leaders
spetsnaz1_1 allowDamage true;
spetsnaz2_1 allowDamage true;
spetsnaz3_1 allowDamage true;


sleep 60;

// deletes helicopters
deleteVehicle  helicopter_reinforcement_1;
deleteVehicle  helicopter_reinforcement_2;
deleteVehicle  helicopter_reinforcement_3;

// delete pilots
spetsnaz_pilot_1 setDamage 1;
spetsnaz_pilot_2 setDamage 1;
spetsnaz_pilot_3 setDamage 1;
spetsnaz_pilot_4 setDamage 1;
spetsnaz_pilot_5 setDamage 1;
spetsnaz_pilot_6 setDamage 1;