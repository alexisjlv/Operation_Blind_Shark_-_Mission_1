// Ambient radio noise sounds 

while {true} do {
    [ambient_radio_noise_1, ["radio_noise", 30, 1]] remoteExec ["say3d", 0, true];
    [ambient_radio_noise_2, ["radio_noise", 20, 1]] remoteExec ["say3d", 0, true];
    [ambient_radio_noise_3, ["radio_noise", 20, 1]] remoteExec ["say3d", 0, true];
    sleep 8.3;
};  