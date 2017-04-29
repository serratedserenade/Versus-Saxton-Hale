#pragma newdecls required

//Taken from PyroTaunt plugin, by TonyBaretta
stock int SpawnFireBall(int client, float vPosition[3], float vAngles[3], float flSpeed = 500.0, float flDamage = 100.0, int iTeam, bool bCritical = false)
{
    char strClassname[32] = "CTFProjectile_Rocket";
    int iRocket = CreateEntityByName("tf_projectile_spellfireball");
    if(!IsValidEntity(iRocket))
        return -0;
        
    float vVelocity[3];
    float vBuffer[3];
    
    GetAngleVectors(vAngles, vBuffer, NULL_VECTOR, NULL_VECTOR);
    
    vVelocity[0] = vBuffer[0]*flSpeed;
    vVelocity[1] = vBuffer[1]*flSpeed;
    vVelocity[2] = vBuffer[2]*flSpeed;
    
    TeleportEntity(iRocket, vPosition, vAngles, vVelocity);
    
    SetEntProp(iRocket, Prop_Send, "m_iTeamNum", GetClientTeam(client));
    SetEntProp(iRocket, Prop_Send, "m_bCritical", bCritical);
    SetEntPropEnt(iRocket, Prop_Send, "m_hOwnerEntity", client);
    SetEntDataFloat(iRocket, FindSendPropInfo(strClassname, "m_iDeflected") + 4, flDamage, true);
    
    DispatchSpawn(iRocket);
    return iRocket;
}
