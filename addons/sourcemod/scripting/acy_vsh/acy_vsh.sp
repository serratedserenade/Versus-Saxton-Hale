#pragma newdecls required

const int VSH_ACY_SCOUT_HYPE_SCATTERGUN = 300;
const int VSH_ACY_SCOUT_HYPE_FANOWAR = 300;
const int VSH_ACY_SCOUT_HYPE_CANDYCANE = 250;

float HaleProximity[TF_MAX_PLAYERS];
int SeenByHale[TF_MAX_PLAYERS];

enum
{
    TFWeapon_Invalid = -1,

    TFWeapon_SniperRifle = 14,
    TFWeapon_SMG = 16,
    TFWeapon_Scattergun = 13,

    TFWeapon_Shotgun = 10,
    TFWeapon_ShotgunSoldier = 10,
    TFWeapon_ShotgunPyro = 12,
    TFWeapon_ShotgunHeavy = 11,
    TFWeapon_ShotgunEngie = 9,

    TFWeapon_Minigun = 15,
    TFWeapon_Flamethrower = 21,
    TFWeapon_RocketLauncher = 18,
    TFWeapon_Medigun = 29,
    TFWeapon_StickyLauncher = 20,
    TFWeapon_Revolver = 24,

    TFWeapon_Pistol = 23,
    TFWeapon_PistolScout = 23,
    TFWeapon_PistolEngie = 22
}

int SkinToDefault(int iGun, int itemClass = -1)
{
    switch (iGun)
    {
        case 15000, 15007, 15019, 15023, 15033, 15059: return TFWeapon_SniperRifle;
        case 15001, 15022, 15032, 15037, 15058: return TFWeapon_SMG;
        case 13, 200, 799, 808, 888, 897, 906, 915, 964, 973, 15002, 15015, 15021, 15029, 15036, 15053, 15065, 15069, 15106, 15107, 15108, 15131, 15151, 15157: return TFWeapon_Scattergun;
        case 15003, 15016, 15044, 15047:
        {
            switch (itemClass)
            {
                case TFClass_Soldier: return TFWeapon_ShotgunSoldier;
                case TFClass_Pyro: return TFWeapon_ShotgunPyro;
                case TFClass_Heavy: return TFWeapon_ShotgunHeavy;
                case TFClass_Engineer: return TFWeapon_ShotgunEngie;
                
            }
            return TFWeapon_Shotgun;
        }
        case 15004, 15020, 15026, 15031, 15040, 15055: return TFWeapon_Minigun;
        case 15005, 15017, 15030, 15034, 15049, 15054: return TFWeapon_Flamethrower;
        case 15006, 15014, 15028, 15043, 15052, 15057: return TFWeapon_RocketLauncher;
        case 15008, 15010, 15025, 15039, 15050: return TFWeapon_Medigun;
        case 15009, 15012, 15024, 15038, 15045, 15048: return TFWeapon_StickyLauncher;
        case 15011, 15027, 15042, 15051: return TFWeapon_Revolver;
        case 15013, 15018, 15035, 15041, 15046, 15056:
        {
            switch (itemClass)
            {
                case TFClass_Scout: return TFWeapon_PistolScout;
                case TFClass_Engineer: return TFWeapon_PistolEngie;
            }
            return TFWeapon_Pistol;
        }
    }
    return TFWeapon_Invalid;
}

// ----------------------------------------------------------------------------
// ClientViews()
// ----------------------------------------------------------------------------
bool ClientViews(int Viewer, int Target, float fMaxDistance=0.0, float fThreshold=0.73)
{
    // Retrieve view and target Eyes position
    float fViewPos[3]; GetClientEyePosition(Viewer, fViewPos);
    float fViewAng[3]; GetClientEyeAngles(Viewer, fViewAng);
    float fViewDir[3];
    float fTargetPos[3]; GetClientEyePosition(Target, fTargetPos);
    float fTargetDir[3];
    float fDistance[3];
    
    // Calculate view direction
    fViewAng[0] = fViewAng[2] = 0.0;
    GetAngleVectors(fViewAng, fViewDir, NULL_VECTOR, NULL_VECTOR);
    
    // Calculate distance to viewer to see if it can be seen.
    fDistance[0] = fTargetPos[0]-fViewPos[0];
    fDistance[1] = fTargetPos[1]-fViewPos[1];
    fDistance[2] = 0.0;
    if (fMaxDistance != 0.0)
    {
        if (((fDistance[0]*fDistance[0])+(fDistance[1]*fDistance[1])) >= (fMaxDistance*fMaxDistance))
        return false;
    }
    
    // Check dot product. If it's negative, that means the viewer is facing
    // backwards to the target.
    NormalizeVector(fDistance, fTargetDir);
    if (GetVectorDotProduct(fViewDir, fTargetDir) < fThreshold) return false;
    
    // Now check if there are no obstacles in between through raycasting
    Handle hTrace = TR_TraceRayFilterEx(fViewPos, fTargetPos, MASK_PLAYERSOLID_BRUSHONLY, RayType_EndPoint, ClientViewsFilter);
    if (TR_DidHit(hTrace)) { delete hTrace; return false; }
        delete hTrace;
    
    // Done, it's visible
    return true;
}

int GetCurrentWeaponIndex(int player)
{
    int activeWeaponEnt = GetEntPropEnt(player, Prop_Send, "m_hActiveWeapon");
    return IsValidEntity(player)
        ? IsValidEntity(activeWeaponEnt)
            ? GetEntProp(activeWeaponEnt, Prop_Send, "m_iItemDefinitionIndex")
            : -1
        : -1;
}

// ----------------------------------------------------------------------------
// ClientViewsFilter()
// ----------------------------------------------------------------------------
public bool ClientViewsFilter(int Entity, int Mask, any Junk)
{
    if (Entity >= 1 && Entity <= MaxClients) return false;
    return true;
}

void ACY_HaleTimerLogic(int Hale)
{
    for (int player = 1; player <= MaxClients; player++)
    {
        if (player == Hale) continue;
        int currentWeaponIndex = GetCurrentWeaponIndex(player);
        float playerPosition[3];
        float halePosition[3];
        GetEntPropVector(EntRefToEntIndex(player), Prop_Send, "m_vecOrigin", playerPosition);
        GetEntPropVector(EntRefToEntIndex(Hale), Prop_Send, "m_vecOrigin", halePosition);
        HaleProximity[player] = GetVectorDistance(
            playerPosition, 
            halePosition, 
            true
        );
        SeenByHale[player] = ClientViews(Hale, player);

        if (IsClientInGame(player) && IsValidEntity(player))
        {
            TFClassType class = TF2_GetPlayerClass(player);
            if (class == TFClass_Spy)
            {
                switch (currentWeaponIndex)
                {
                    case 225: TF2_AddCondition(player, TFCond_SpeedBuffAlly, 0.3); //YER
                }
            }
            if (class == TFClass_Scout)
            {
                switch (currentWeaponIndex)
                {
                    case 1103:
                    {
                        if (HaleProximity[player] <= 250000 && !SeenByHale[player])
                        {
                            TF2_AddCondition(player, TFCond_Buffed, 0.3);
                        }
                    }
                }
            }
        }
    } 
}
/*
    Draw ray from client vision to hit first player
*/
int TraceClientViewEntity(int client)
{
    float m_vecOrigin[3], m_angRotation[3];
    GetClientEyePosition(client, m_vecOrigin);
    GetClientEyeAngles(client, m_angRotation);
    Handle tr = TR_TraceRayFilterEx(m_vecOrigin, m_angRotation, MASK_VISIBLE | MASK_SHOT, RayType_Infinite, TraceRayDontHitSelf, client);
    int pEntity = -1;
    if (TR_DidHit(tr)) 
    {
        pEntity = TR_GetEntityIndex(tr);
        // CloseHandle(tr);
        // return pEntity;
    }

    delete tr;
    return pEntity;
}

void SniperHealAlly(int[] HealingScore, int client, int weapon)
{
    if (GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex") != 402) return;

    int target = TraceClientViewEntity(client);
    if (!(target < 1 || target > MaxClients)
        && IsValidEdict(target))
    {
        if (GetClientTeam(client) == GetClientTeam(target))
        {
            float chargeLevel = GetEntPropFloat(weapon, Prop_Send, "m_flChargedDamage");
            int beforeHealth = GetClientHealth(target);   
            
            AddPlayerHealth(
                target, 
                RoundToCeil(
                    chargeLevel <= 40.0 ? 30.0 : chargeLevel * 2.5
                    ),
                chargeLevel > 1.0 ? 1.5 : 1.0
                );

            //healing scoring
            float afterHealth = GetClientHealth(target) * 1.0;
            int healingChange = RoundToZero(
                (afterHealth - beforeHealth) < 0.0
                ? 0.0
                : afterHealth - beforeHealth
            );

            if (afterHealth - beforeHealth > 0.0) {
                HealingScore[client] += healingChange;
                EmitSoundToClient(client, "items/gift_drop.wav", client);
                EmitSoundToClient(target, "items/gift_drop.wav", target);
                SetEntProp(client, Prop_Send, "m_iDecapitations", GetEntProp(client, Prop_Send, "m_iDecapitations") + 1);
            }
        }
        return;
    }

    SetEntProp(client, Prop_Send, "m_iDecapitations", 0);
}

// Timers and Events for:
// When near hale
// When near a player with an active buff (or temporary)