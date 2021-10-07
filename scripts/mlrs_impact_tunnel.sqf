// Plays sounds, make the camera shake and creates particles around the player for immersion purposes

// [mlrs_explosions, ["mlrs_impact", 10000, 1]] remoteExec ["say3d", 0, true]; // Tesst 3D, not loud enough
playSound "mlrs_impact";
playSound "mlrs_impact";

private _posATL = player modelToWorld [0,10,0];

sleep 0;
addCamShake [3, 2, 2];

// create dust
private _ps2 = "#particlesource" createVehicleLocal _posATL;
_ps2 setParticleParams
[
	["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 0, 8],
	"", "Billboard", 1, 20,						// animationName, type, timerPeriod, lifeTime
	[0,0,15],									// position relative to referenceObject
	[0,0,-2],									// velocity
	1, 0.5, 0.397, 0, [3, 4],		// rotation, weight, volume, rubbing, size
	[[0.5,0.5,0.5,0.35], [0.5,0.5,0.5,0.4], [0.5,0.5,0.5,0.3]],	// colors
	[10],										// animationPhase
	1, 0,										// randomDirectionPeriod, randomDirectionIntensity
	"", "",										// onTimer, beforeDestroy
	_ps2,										// referenceObject
	0, false,									// angle, bounces
	-1, [],										// bounceOnSurface, emissiveColor
	[0,1,0]										// vectorDir - CANNOT be [0,0,0]
];
_ps2 setParticleRandom [0, [60, 40, 0], [0.25, 0.25, 0], 0, 1.5, [0, 0, 0, 0], 0, 0];
_ps2 setDropInterval 0.003;
// end create dust

sleep 2;
addCamShake [4, 7, 4];

// ceate rock fall
private _ps1 = "#particlesource" createVehicleLocal _posATL;
_ps1 setParticleParams [
	"\A3\Data_F\ParticleEffects\Pstone\Pstone", "", "SpaceObject",
	1, 5, 
	[0, 0, 30], 
	[0, 0, -2], 
	1, 8, 1, 0, [0.1, 0.2],
	[[0.5, 0.5, 0.5 ,1]],
	[0, 1], 1, 0, "", "", _ps1];
_ps1 setParticleRandom [0, [60, 40, 0], [0.25, 0.25, 0], 0, 1.5, [0, 0, 0, 0], 0, 0];
_ps1 setDropInterval 0.001;
// end create rock fall

sleep 6.5;
addCamShake [3, 4, 3];
sleep 4;
player playAction "PlayerCrouch";
addCamShake [6, 6, 4];
sleep 6;
addCamShake [4, 7, 4];
sleep 7;
addCamShake [3, 40, 4];

sleep 30;

// removes rock fall
deleteVehicle _ps1;
sleep 3;

// removes dust
deleteVehicle _ps2;