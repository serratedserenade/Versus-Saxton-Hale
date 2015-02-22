#if defined _VSH_included
 #endinput
#endif
#define _VSH_included


// VSH_GetRoundState()
enum VSHRState
{
    VSHRState_Disabled = -1,
    VSHRState_Waiting,
    VSHRState_Active,
    VSHRState_End
};

// VSH_GetSpecialRoundIndex()
enum VSHSpecial
{
    VSHSpecial_None = -1,
    VSHSpecial_Hale,
    VSHSpecial_Vagineer,
    VSHSpecial_HHH,
    VSHSpecial_CBS,
    VSHSpecial_Bunny
};

methodmap VSH
{
	property bool IsVSHMap
	{
		public native get();
	}
	
	property bool IsEnabled
	{
		public native get();
	}
	
	property int BossUserId
	{
		public native get();
	}
	
	property TFTeam BossTeam
	{
		public native get();
	}
	
	property VSHSpecial SpecialIndex
	{
		public native get();
	}
	
	property int BossHealth
	{
		public native get();
	}
	
	property int BossHealthMax
	{
		public native get();
	}
	
	property VSHRState RoundState
	{
		public native get();
	}
};

/**
 * Will VSH be played on the current map?
 * Use this check in OnMapStart() or OnPluginStart(),
 * since VSH_IsSaxtonHaleModeEnabled() returns 0 before the 1st round.
 *
 * @return 1 if it's a VSH map, 0 otherwise.
 */
#pragma deprecated Use the VSH method map.
native bool VSH_IsSaxtonHaleModeMap();

/**
 *
 * @return True if VSH is enabled, false otherwise.
 */
#pragma deprecated Use the VSH method map.
native bool VSH_IsSaxtonHaleModeEnabled();

/**
 * Returns the userid of the current Hale.
 *
 * @return		    	Userid of current Hale/boss (-1 if invalid/doesn't exist).
 */
#pragma deprecated Use the VSH method map.
native int VSH_GetSaxtonHaleUserId();

/**
 * Current team number for the boss.
 *
 * @return		    	Hale's team number (as in the TFTeam enum)
 */
#pragma deprecated Use the VSH method map.
native TFTeam VSH_GetSaxtonHaleTeam();

/**
 * Current special
 *
 * @return		    	0 - Saxton Hale
 *						1 - Vagineer
 *						2 - HHH
 *						4 - CBS
 */
#pragma deprecated Use the VSH method map.
native VSHSpecial VSH_GetSpecialRoundIndex();

/**
 * Hale's current health.
 *
 * @return		    	An integer representing Hale's health.
 */
#pragma deprecated Use the VSH method map.
native int VSH_GetSaxtonHaleHealth();

/**
 * Hale's initial health.
 *
 * @return		    	An integer representing Hale's max/initial health.
 */
#pragma deprecated Use the VSH method map.
native int VSH_GetSaxtonHaleHealthMax();

/**
 * Damage dealt by a client.
 *
 * @param client 		Client index.
 * @return		    	Damage dealt by the client for the current round.
 */
native int VSH_GetClientDamage(int client);

/**
 * The current round state for VSH.
 *
 * @return		     -1 - VSH is disabled
 *				0 - VSH preround freeze
 *				1 - VSH during round
 *				2 - VSH after round end
 */
#pragma deprecated Use the VSH method map.
native VSHRState VSH_GetRoundState();

/**
 * When Hale attempts to superjump/teleport.
 *
 * @param bSuperDuper 	Boolean for whether the jump is a superjump.
 * @return		    Change bSuperDuper and return Plugin_Changed to change it. Plugin_Stop or Plugin_Handled to stop the jump.
 */
forward Action VSH_OnDoJump(bool &bSuperDuper);

/**
 * When Hale attemps to use rage.
 *
 * @param RageDist 	Distance that the boss's rage reaches.
 * @return		    Plugin_Stop or Plugin_Handled will prevent rage, change RageDist and return Plugin_Changed to change the distance.
 */
forward Action VSH_OnDoRage(float &RageDist);

/**
 * When Hale uses the weighdown.
 *
 * @return		    Plugin_Stop/Plugin_Handled will prevent Weighdown
 */
forward Action VSH_OnDoWeighdown();

/**
 * Called at the start of each round, when the music begins to play (even if the round has no music).
 * Also called each time the music is set to start up again in the loop.
 *
 * @param sound		Sound that is being played for music. Change it and return Plugin_Changed to change.
 *				Set to "" for silence that does not stop the forward firing every <time> seconds.
 * @param mTime		Duration of the sound (seconds). Must change this to the duration of whatever the music was changed to,
 * 				but +2 to 4 seconds so that your song doesn't overlap itself. Set to -1.0 to play the music only once.
 * @return			Plugin_Stop or Plugin_Handled to prevent the music from playing (stops the music/forward for the entire round),
 *				or change the values and return Plugin_Changed to change the music. REMEMBER TO CHANGE THE TIME AS WELL.
 */
forward Action VSH_OnMusic(char[] sound, float &mTime);

/**
 * Called when VSH opens a panel to a client, stating they will be hale next round.
 *
 * @param client 	Client to be hale soon.
 * 
 * @return 			Plugin_Stop or Plugin_Handled to prevent panel being opened. Plugin_Continue to allow panel to be displayed.
 */
forward Action VSH_OnHaleNext(int client);

public SharedPlugin __pl_SaxtonHale = 
{
	name = "saxtonhale",
	file = "saxtonhale.smx",
#if defined REQUIRE_PLUGIN
	required = 1,
#else
	required = 0,
#endif
};

#if !defined REQUIRE_PLUGIN
public __pl_SaxtonHale_SetNTVOptional()
{
	MarkNativeAsOptional("VSH_IsSaxtonHaleModeMap");
	MarkNativeAsOptional("VSH_IsSaxtonHaleModeEnabled");
	MarkNativeAsOptional("VSH_GetSaxtonHaleUserId");
	MarkNativeAsOptional("VSH_GetSaxtonHaleTeam");
	MarkNativeAsOptional("VSH_GetSpecialRoundIndex");
	MarkNativeAsOptional("VSH_GetSaxtonHaleHealth");
	MarkNativeAsOptional("VSH_GetSaxtonHaleHealthMax");
	MarkNativeAsOptional("VSH_GetClientDamage");
	MarkNativeAsOptional("VSH_GetRoundState");
	MarkNativeAsOptional("VSH.IsVSHMap.get");
	MarkNativeAsOptional("VSH.IsEnabled.get");
	MarkNativeAsOptional("VSH.BossUserId.get");
	MarkNativeAsOptional("VSH.BossTeam.get");
	MarkNativeAsOptional("VSH.SpecialIndex.get");
	MarkNativeAsOptional("VSH.BossHealth.get");
	MarkNativeAsOptional("VSH.BossHealthMax.get");
	MarkNativeAsOptional("VSH.RoundState.get");
};
#endif