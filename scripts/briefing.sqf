// Adds the action to speak and calls it again 70 seconds after the action is permormed

briefing addAction 
[ 
 "<t color='#007EFF' size='1' font='PuristaBold'>Start the Briefing</t>", 
 { 
  [briefing, ["briefing", 300, 1]] remoteExec ["say3d", 0, true]; 
   (_this select 0) removeaction (_this select 2);
   
   
   sleep 189;
	[] execVM "scripts\briefing.sqf";
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