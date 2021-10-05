// Plays music and add an action to destroy the radio that plays sounds and puts the radio's damage to 1 to stop it playing any sound

// [mlrs_explosions, ["mlrs_impact", 10000, 1]] remoteExec ["say3d", 0, true]; // Tesst 3D, not loud enough
playSound "mlrs_impact";
playSound "mlrs_impact";

private _posATL = player modelToWorld [0,10,0];

sleep 0;
addCamShake [3, 2, 2];


private _ps2 = "#particlesource" createVehicleLocal _posATL;
_ps2 setParticleParams
[
	["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 0, 8],
	"", "Billboard", 1, 10,						// animationName, type, timerPeriod, lifeTime
	[0,0,15],									// position relative to referenceObject
	[0,0,-2],									// velocity
	1, 1.5, 1, 0.2, [2, 3],		// rotation, weight, volume, rubbing, size
	[[0.5,0.5,0.5,0.35], [0.5,0.5,0.5,0.4], [0.5,0.5,0.5,0.3]],	// colors
	[1],										// animationPhase
	1, 0,										// randomDirectionPeriod, randomDirectionIntensity
	"", "",										// onTimer, beforeDestroy
	_ps2,										// referenceObject
	0, false,									// angle, bounces
	-1, [],										// bounceOnSurface, emissiveColor
	[0,1,0]										// vectorDir - CANNOT be [0,0,0]
];
_ps2 setParticleRandom [0, [60, 60, 0], [0.25, 0.25, 0], 0, 1.5, [0, 0, 0, 0], 0, 0];
_ps2 setDropInterval 0.001;


sleep 2;
addCamShake [4, 7, 4];



// ceates rock fall
private _ps1 = "#particlesource" createVehicleLocal _posATL;
_ps1 setParticleParams [
	"\A3\Data_F\ParticleEffects\Pstone\Pstone", "", "SpaceObject",
	1, 10, 
	[0, 0, 30], 
	[0, 0, -2], 
	1, 10, 1, 0.2, [0.3, 0.5],
	[[0.5, 0.5, 0.5 ,1]],
	[0, 1], 1, 0, "", "", _ps1];
_ps1 setParticleRandom [0, [60, 60, 0], [0.25, 0.25, 0], 0, 1.5, [0, 0, 0, 0], 0, 0];
_ps1 setDropInterval 0.001;



sleep 6.5;
addCamShake [3, 4, 3];
sleep 4;
player playAction "PlayerCrouch";
addCamShake [6, 6, 4];
sleep 6;



addCamShake [4, 7, 4];
sleep 7;
addCamShake [3, 40, 3];

sleep 30;
deleteVehicle _ps1;
sleep 30;
deleteVehicle _ps2;