// Plays music and add an action to destroy the radio that plays sounds and puts the radio's damage to 1 to stop it playing any sound

[radio, ["russian_music_radio", 150, 1]] remoteExec ["say3d", 0, true]; 


radio addAction 
[ 
 "<t color='#FF0000'>Destroy</t>", 
 { 
    [radio_destroy, ["russian_music_radio_destroyed", 50, 1]] remoteExec ["say3d", 0, true]; 
    [radio_destroy, ["russian_music_radio_destroyed", 50, 1]] remoteExec ["say3d", 0, true]; 
    [radio_destroy, ["russian_music_radio_shut_up", 100, 1]] remoteExec ["say3d", 0, true]; 
    [radio_destroy, ["russian_music_radio_shut_up", 100, 1]] remoteExec ["say3d", 0, true]; 
    sleep 0.5;
    radio setDamage 1;
    removeAllActions radio;
 }, 
 nil, 
 6, 
 true, 
 true, 
 "", 
 "true",  
 3, 
 false, 
 "", 
 "" 
]; 