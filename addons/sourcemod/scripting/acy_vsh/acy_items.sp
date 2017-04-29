#pragma newdecls required

public Action TF2Items_OnGiveNamedItem(int client, char[] classname, int iItemDefinitionIndex, Handle &hItem) {
//    if (!g_bEnabled) return Plugin_Continue; // This messes up the first round sometimes


    //if (RoundCount <= 0 && !GetConVarBool(cvarFirstRound)) return Plugin_Continue;
/*
    7:52 AM - C:/hdata: may as well just comment this out and give the custom items during the first round too
    7:52 AM - C:/hdata: here's why it happens
    7:52 AM - C:/hdata: tf2_ongivenamed item sometimes only fires once between multiple rounds
    7:52 AM - C:/hdata: so if it doesn't fire on the first round
    7:52 AM - C:/hdata: then the custom stats never appear the second round (which becomes a hale round)
    7:53 AM - C:/hdata: it's what I did when I had the arena round
    7:53 AM - C:/hdata: just gave people the slightly modded weapons
    7:53 AM - C:/hdata: it didn't make much difference since it was only one round

     - It only refires if the player changes their class or loadout. No change in equipped items = no call of this native
*/

//  if (client == Hale) return Plugin_Continue;
//  if (hItem != null) return Plugin_Continue;

    Handle hItemOverride = null;
    TFClassType iClass = TF2_GetPlayerClass(client);

    switch (iItemDefinitionIndex)
    {
        case 39, 351, 1081: // Mega Detonator
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "551 ; 1 ; 25 ; 0.5 ; 207 ; 1.5 ; 144 ; 1 ; 58 ; 3.2 ; 20 ; 1.0", true);
        }
        case 740: // Mega Scorch shot
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "551 ; 1 ; 25 ; 0.5 ; 207 ; 1.33 ; 416 ; 3 ; 58 ; 2.08 ; 1 ; 0.65 ; 209 ; 1.0", true);
        }
        case 40, 1146: // Backburner
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "165 ; 1");
        }
        case 648: // Wrap assassin
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "279 ; 2.0 ; 278 ; 0.50");
        }
        case 224: // Letranger
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "166 ; 15 ; 1 ; 0.8", true);
        }
        case 225, 574: // YER
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "155 ; 1 ; 160 ; 1", true);
        }
        /*case 232, 401: // Bushwacka + Shahanshah
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "236 ; 1");
        }*/
        case 356: // Kunai
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "125 ; -60");
        }
        case 405, 608: // Demo boots have falling stomp damage, +300% turning control while charging
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "259 ; 1 ; 252 ; 0.25 ; 246 ; 4.0");
        }
        case 1150: //Quickiebomb Launcher
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "114 ; 1.0 ; 135 ; 0.75"); //Minicrits airborne targets, -25% self blast damage
        }
        case 307: //Caber
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "15 ; 0.0", true);
        }
        case 327: //Claidheamh Mòr - Restored to Pre-Tough Break behaviour (increased charge duration).
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "781 ; 72 ; 202 ; 0.5 ; 2034 ; 0.25 ; 125 ; -15 ; 15 ; 0.0 ; 547 ; 0.75 ; 199 ; 0.75", true);
        }
        case 220: // Shortstop - Effects are no longer 'only while active'. Otherwise acts like post-gunmettle shortstop.
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "526 ; 1.2");
        }
        case 226: // The Battalion's Backup
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "252 ; 0.25"); //125 ; -10
        }
        case 133: // The Gunboats
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "135 ; 0.25"); //-75% self blast damagem, buffed from the stock -60%.
        }
        case 305, 1079: // Medic Xbow
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "17 ; 0.15 ; 2 ; 1.45"); // ; 266 ; 1.0");
        }
        case 56, 1005, 1092: // Huntsman
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "2 ; 1.5 ; 76 ; 2.0");
        }
        case 38, 457, 154: // Axtinguisher
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "", true);
        }
        case 239, 1100, 1084: // GRU
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "107 ; 1.5 ; 1 ; 0.5 ; 128 ; 1 ; 191 ; -7", true);
        }
        case 442: //Righteous Bison
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "135 ; 0.6 ; 2 ; 1.33"); //-40% self blast damage, +33% damage bonus
        }
        case 414: //Liberty Launcher
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "114 ; 1 ; 99 ; 1.25"); //Minicrits airborne targets, +25% blast radius
        }
        case 1103: //Back Scatter
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "179 ; 1.0"); //Crits whenever it would normally minicrit (e.g. backside crits)
        }
        case 773: //Pretty Boy's Pocket Pistol
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "16 ; 10.0"); //10HP per hit, up from 5.
        }
        case 426: //Eviction Notice
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "1 ; 0.25 ; 6 ; 0.25 ; 107 ; 1.25 ; 737 ; 5.0"); //Swing speed increased to +75%, speed boost increased to +25%, speed buff duration increased to 5s. 
        }
        case 25, 737: //Engineer Build PDA
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "345 ; 2.0 ; 321 ; 0.75"); //+100% Dispenser range, +25% faster build rate
        }
        case 460: //Enforcer
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "2 ; 1.2"); //+20% damage
        }
        // case 589: //Eureka Effect
        // {
            // hItemOverride = PrepareItemHandle(hItem, _, _, "276 ; 1.0"); //Allows two-way teleporters
        // }
        case 317: //Candy Cane
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "412 ; 1.25"); //+25% damage vulnerability (affects fall damage, bunny eggs, and CBS arrows)
        }
        case 349: //Sun-on-a-Stick
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "5 ; 6.0"); //500% slower firing speed (once every 3 seconds). Shoots slow fireballs.
        }
        // case 811, 832: //Huo-Long Heater
        // {
            // hItemOverride = PrepareItemHandle(hItem, _, _, "209 ; 1.0"); //Minicrits against burning targets.
        // }
        case 42, 863, 1002: //Sandvich
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "144 ; 5.0"); //Restores ammo in addition to health. Can be shared with teammates to give ammo as well.
        }
        case 415: // Reserve Shooter
        {
            if (iClass == TFClass_Soldier) // Soldier shotguns get 40% rocket jump
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "135 ; 0.6 ; 179 ; 1 ; 114 ; 1.0 ; 178 ; 0.6 ; 3 ; 0.67 ; 551 ; 1 ; 5 ; 1.15", true);
            }
            else
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "179 ; 1 ; 114 ; 1.0 ; 178 ; 0.6 ; 3 ; 0.67 ; 551 ; 1 ; 5 ; 1.15", true); //  ; 2 ; 1.1
            }
        
        }
        case 402: // Bazaar Bargain
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "2 ; 0.89"); // Reduced damage
        }
        case 348: // Volcano Fragment
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "208 ; 1 ; 1 ; 0.02 ; 74 ; 0.3 ; 71 ; 3.5 ; 20 ; 1");
        }
    }

    if (hItemOverride != null) // This has to be here, else stuff below can overwrite what's above
    {
        hItem = hItemOverride;

        return Plugin_Changed;
    }

    switch (iClass)
    {
        case TFClass_Heavy:
        {
            if (StrStarts(classname, "tf_weapon_shotgun", false))
            {
                if (iItemDefinitionIndex == 425) //Family Business
                {
                    hItemOverride = PrepareItemHandle(hItem, _, _, "318 ; 0.8 ; 107 ; 1.15");
                }
                // if (iItemDefinitionIndex == 1153) //Panic Attack
                // {
                    // hItemOverride = PrepareItemHandle(hItem, _, _, "");
                // }
                // else
                // {
                    // hItemOverride = PrepareItemHandle(hItem, _, _, ""); // Heavy shotguns
                // }
            }
        }
        case TFClass_Spy:
        {
            if (StrEqual(classname, "tf_weapon_revolver", false))
            {
                if (iItemDefinitionIndex != 61 &&
                    iItemDefinitionIndex != 224 &&
                    iItemDefinitionIndex != 460 &&
                    iItemDefinitionIndex != 525 &&
                    iItemDefinitionIndex != 1006)
                    {
                        hItemOverride = PrepareItemHandle(hItem, _, _, "78 ; 2.0"); //Stock revolver gets 2x max ammo.
                    }
            }
        }
        case TFClass_Sniper:
        {
            if (StrEqual(classname, "tf_weapon_club", false) || StrEqual(classname, "saxxy", false))
            {
                switch (iItemDefinitionIndex)
                {
                    case 401: // Shahanshah
                    {
                        hItemOverride = PrepareItemHandle(hItem, _, _, "236 ; 1 ; 224 ; 1.66 ; 225 ; 0.5");
                    }
                    default:
                    {
                        hItemOverride = PrepareItemHandle(hItem, _, _, "236 ; 1"); // Block healing while in use.
                    }
                }
            }
        }
        case TFClass_DemoMan:
        {
            if (StrStarts(classname, "tf_weapon_sword", false) || StrStarts(classname, "tf_weapon_katana", false))
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "547 ; 0.75 ; 199 ; 0.75"); // All Sword weapons are returned (close) to the old default switch time of 0.67s
            }
            if (StrStarts(classname, "tf_weapon_pipebomblauncher", false))
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "135 ; 0.75"); //-25% self blast damage
            }
            else if (StrStarts(classname, "tf_weapon_grenadelauncher", false))
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "114 ; 1.0"); //Mini-crit airborne targets
            }
        }
        case TFClass_Soldier: // TODO if (TF2_GetPlayerClass(client) == TFClass_Soldier && (strncmp(classname, "tf_weapon_rocketlauncher", 24, false) == 0 || strncmp(classname, "tf_weapon_particle_cannon", 25, false) == 0 || strncmp(classname, "tf_weapon_shotgun", 17, false) == 0 || strncmp(classname, "tf_weapon_raygun", 16, false) == 0))
        {
            if (StrStarts(classname, "tf_weapon_katana", false))
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "547 ; 0.75 ; 199 ; 0.75"); // All Sword weapons are returned (close) to the old default switch time of 0.67s
            }
            if (StrStarts(classname, "tf_weapon_shotgun", false) || GunmettleToIndex(iItemDefinitionIndex) == TFWeapon_Shotgun)
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "267 ; 1.0 ; 135 ; 0.6 ; 114 ; 1.0"); // Soldier shotguns get 40% rocket jump dmg reduction     ; 265 ; 99999.0
            }
            if (StrStarts(classname, "tf_weapon_buff_item", false))
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "135 ; 0.6"); // Soldier backpacks get 40% rocket jump dmg reduction 
            }
            else if (StrStarts(classname, "tf_weapon_rocketlauncher", false)  || StrStarts(classname, "tf_weapon_particle_cannon", false) || GunmettleToIndex(iItemDefinitionIndex) == TFWeapon_RocketLauncher)
            {
                if (iItemDefinitionIndex == 127) // Direct hit
                {
                    hItemOverride = PrepareItemHandle(hItem, _, _, "179 ; 1"); //  ; 215 ; 300.0
                }
                else
                {
                    hItemOverride = PrepareItemHandle(hItem, _, _, "114 ; 1.0", (iItemDefinitionIndex == 237)); // Rocket jumper
                }
            }
        }
#if defined OVERRIDE_MEDIGUNS_ON
        case TFClass_Medic:
        {
            //Medic mediguns
            if (StrStarts(classname, "tf_weapon_medigun", false))
            {
                switch (iItemDefinitionIndex)
                {
                    case 411, 998: //Non-stock/non-Kritzkrieg Mediguns have their attributes completely wiped
                    {
                        hItemOverride = PrepareItemHandle(hItem, _, _, "10 ; 1.25 ; 18 ; 0 ; 144 ; 2", true);
                    }
                    case 35: //Kritskrieg has only attributes that VSH alters, so we don't need to override it completely.
                        hItemOverride = PrepareItemHandle(hItem, _, _, "10 ; 1.25 ; 18 ; 0 ; 144 ; 2");
                    default: //Stock Mediguns already begin with no gameplay altering stats, so we just add the VSH stats on-top to preserve econ attributes.
                        hItemOverride = PrepareItemHandle(hItem, _, _, "10 ; 1.25 ; 18 ; 0 ; 144 ; 2");
                }
            }
        }
#endif
    }

    if (hItemOverride != null)
    {
        hItem = hItemOverride;

        return Plugin_Changed;
    }

    return Plugin_Continue;
}