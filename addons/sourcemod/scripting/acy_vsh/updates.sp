#pragma newdecls required

char haleversiondates[][] =
{
    "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "--", "25 Aug 2011", "26 Aug 2011", "09 Oct 2011", "09 Oct 2011", "09 Oct 2011", "15 Nov 2011", "15 Nov 2011", "17 Dec 2011", "17 Dec 2011", "05 Mar 2012", "05 Mar 2012", "05 Mar 2012", "16 Jul 2012", "16 Jul 2012", "16 Jul 2012", "10 Oct 2012", "25 Feb 2013", "30 Mar 2013", "14 Jul 2014", "15 Jul 2014", "15 Jul 2014", "15 Jul 2014", "15 Jul 2014", "18 Jul 2014", "17 Jul 2014", "17 Jul 2014", "17 Jul 2014", "17 Jul 2014", "27 Jul 2014", "19 Jul 2014", "19 Jul 2014", "04 Aug 2014", "04 Aug 2014", "14 Aug 2014", "14 Aug 2014", "18 Aug 2014", "04 Oct 2014",
    "29 Oct 2014", //  An update I never bothered to throw outdate
    "25 Dec 2014", //  Merry Xmas
    "10 Sep 2015",
    "9 Mar 2015",  // This has to do with page ordering
    "11 Sep 2015", // This will appear as the final page of the 1.54 updates
    "10 Sep 2015",
    "10 Sep 2015",
    "12 Sep 2015",  // 1.55 update
    "24 Nov 2015",  // 1.55b update
    "6 Feb 2016",  // 1.55c update
    "6 Feb 2016",  // 1.55c update
    "6 Feb 2016",  // 1.55c update
    "6 Feb 2016",  // 1.55c update
    "15 Jun 2016",  // 1.55d update
    "2 Oct 2016",  // 1.55e update
    "28 Jan 2017",  // 1.55f update
    "28 Jan 2017",  // 1.55f update
    "28 Jan 2017",  // 1.55f update
    "31 Jan 2017",  // 1.55g update
    "31 Jan 2017",  // 1.55g update
    "31 Jan 2017",  // 1.55g update
    "31 Jan 2017",  // 1.55g update
    "7 Mar 2017",  // 1.55h update
    "7 Mar 2017",  // 1.55h update
    "7 Mar 2017"  // 1.55h update
};

char haleversiontitles[][] =     //the last line of this is what determines the displayed plugin version
{
    "1.0", "1.1", "1.11", "1.12", "1.2", "1.22", "1.23", "1.24", "1.25", "1.26", "Christian Brutal Sniper", "1.28", "1.29", "1.30", "1.31", "1.32", "1.33", "1.34", "1.35", "1.35_3", "1.36", "1.36", "1.36", "1.36", "1.36", "1.36", "1.362", "1.363", "1.364", "1.365", "1.366", "1.367", "1.368", "1.369", "1.369", "1.369", "1.37", "1.37b", "1.38", "1.38", "1.39beta", "1.39beta", "1.39beta", "1.39c", "1.39c", "1.39c", "1.40", "1.41", "1.42", "1.43", "1.43", "1.43", "1.44", "1.44", "1.45", "1.45", "1.45", "1.45", "1.45", "1.46", "1.46", "1.46", "1.47", "1.47", "1.48", "1.48", "1.49", "1.50",
    "1.51", // 1.38 - (15 Nov 2011)
    "1.52",
    "1.53",
    "1.53",
    "1.54",
    "1.54",
    "1.54",
    "1.55",
    "1.55b",
    "1.55c",
    "1.55c",
    "1.55c",
    "1.55c",
    "1.55d",
    "1.55e",
    "1.55f",
    "1.55f",
    "1.55f",
    "1.55g",
    "1.55g",
    "1.55g",
    "1.55g",
    "1.55h",
    "1.55h"
    ,PLUGIN_VERSION
};

void FindVersionData(Handle panel, int versionindex)
{
    switch (versionindex) // DrawPanelText(panel, "1) .");
    {
        case 92: //1.55h
        {
            DrawPanelText(panel, "1) Eviction Notice damage penalty increased from -60% to -75%.");
            DrawPanelText(panel, "2) Eureka Effect tweaked:");
            DrawPanelText(panel, "--) Teleporting to spawn metal cost changed from 110 -> 100.");
            DrawPanelText(panel, "--) Teleporting to exit teleporter metal cost changed from 110 -> 25.");
            DrawPanelText(panel, "3) Candy Cane now spawns a Medium health pack on hit. Passive +25% damage vulnerability.");
            DrawPanelText(panel, "4) Candy Cane now spawns a Small health pack every 250 damage dealt by non-melee damage.");
        }
        case 91: //1.55h
        {
            DrawPanelText(panel, "5) Updated Air Strike damage HUD. Now shows progress towards next clip size.");
            DrawPanelText(panel, "6) Gunboats fall damage resistance increased from -20% to -30%.");
            DrawPanelText(panel, "7) Sun-on-a-Stick can now cast a 66 damage fireball every 3s. Extinguishes Hale on hit. Deals very little knockback.");
            DrawPanelText(panel, "8) Sandvich now restores Ammo as well as HP. Will be consumed even at full Health.");
            DrawPanelText(panel, "9) Dalokoh's Bar/Fishcake now provides overheal up to 550HP.");
            DrawPanelText(panel, "10) Buffalo Steak Sandvich no longer restricts Heavies to only melee weapons.");
        }
        case 90: //1.55h
        {
            DrawPanelText(panel, "11) Soldier Shotguns (minus the Reserve Shooter) now deal crits while rocket jumping.");
            DrawPanelText(panel, "12) Heavy shotguns now give 50% of damage back as health.");
            DrawPanelText(panel, "--) Stock: Overheal up to 600HP.");
            DrawPanelText(panel, "--) All Others: Overheal up to 450HP.");
            DrawPanelText(panel, "13) Family Business now has +15% faster movespeed, +20% faster reload speed.");
            DrawPanelText(panel, "14) Killing Gloves of Boxing now grant 5s of crits on hit. No longer replaced with GRU, nor critboosted.");
            DrawPanelText(panel, "15) Updated English translations file.");
        }
        case 89: //1.55g
        {
            DrawPanelText(panel, "1) The Enforcer now has a standard +20% bonus damage.");
            DrawPanelText(panel, "2) Stock Revolvers now have +100% ammo.");
            DrawPanelText(panel, "3) Added -40% self blast damage to Soldier backpack items, doesn't apply to the Battalion's Backup.");
            DrawPanelText(panel, "4) Fixed Stock Mediguns/Kritzkriegs having their economy attributes overriden (e.g. Strange parts etc).");
            DrawPanelText(panel, "5) Added new chat notification for new versions of VSH. Will be disabled after using /halenew at least once.");
            DrawPanelText(panel, "6) Updated more lines in the English translations file.");
        }
        case 88: //1.55g
        {
            DrawPanelText(panel, "7) Backscatter now crits whenever it would normally minicrit.");
            DrawPanelText(panel, "8) Soda-Popper has been unblacklisted now that it requires damage not distance to build Hype.");
            DrawPanelText(panel, "9) Shortstop attributes updated, still grants +20% bonus healing, but must be the active weapon.");
            DrawPanelText(panel, "10) PBP Pistol health on hit increased from +5 to +10.");
            DrawPanelText(panel, "11) Wrap Assassin now has +50% faster recharge rate.");
        }
        case 87: //1.55g
        {
            DrawPanelText(panel, "12) Eviction Notice now provides while active: +75% faster swing speed, +25% movespeed, 5s speed boost on hit.");
            DrawPanelText(panel, "13) Phlogistinator now restores ammo on MMMPH activation.");
            DrawPanelText(panel, "14) Phlogistinator non-MMMPH damage penalty reduced from -50% to -25%.");
            DrawPanelText(panel, "15) Flaregun/Detonator now crits burning targets, will also affect afterburn (mostly only affects Phlog users).");
            DrawPanelText(panel, "16) Flaregun/Detonator self damage increased from +33% to +50%.");
            DrawPanelText(panel, "17) Rage speed boost no longer applies to players with the Eyelander.");
        }
        case 86: //1.55g
        {
            DrawPanelText(panel, "18) Engineer Build PDAs now grant +100% Dispenser range, +25% faster build speed.");
            DrawPanelText(panel, "19) Demoman Boots charge turn control bonus increased from +200% to +300%.");
            DrawPanelText(panel, "20) Eureka Effect reworked:");
            DrawPanelText(panel, "--) Teleporting requires at least 110 metal.");
            DrawPanelText(panel, "--) Teleporting to Spawn will restore your HP and ammo/metal. You cannot teleport again for 15s.");
            DrawPanelText(panel, "--) Teleporting to your Exit Teleporter will act as normal, no cooldown.");
        }
        case 85: //1.55f
        {
            DrawPanelText(panel, "1) Added crits, -40% self blast damage and +33% damage to the Righteous Bison.");
            DrawPanelText(panel, "2) Added -90% fall damage to Darwin's Danger Shield.");
            DrawPanelText(panel, "3) Reduced Gunboats fall damage reduction from 90% to 20%. Increased self blast damage reduction from 60% to 75%.");
            DrawPanelText(panel, "4) CBS's bow now grants -25% knockback while charging the bow up.");
            DrawPanelText(panel, "5) Added new !nohale command to avoid being selected as the Hale.");
            DrawPanelText(panel, "6) Superjump has an initial 7s cooldown at the start of the round.");
        }
        case 84: //1.55f
        {
            DrawPanelText(panel, "7) All Grenade Launchers except the Loose Cannon now mini-crit airborne targets.");
            DrawPanelText(panel, "8) All Stickybomb Launchers now have -25% self blast damage.");
            DrawPanelText(panel, "9) Liberty Launcher now has +25% explosion radius.");
            DrawPanelText(panel, "10) Holiday Punch grants some escape buffs for 5s if you hit Hale while Raged.");
            DrawPanelText(panel, "11) Points earned for damage dealt are now added to your queue points at the end of the round.");
            DrawPanelText(panel, "12) Fixed Pomson 6000 not being critboosted.");
        }
        case 83: //1.55f
        {
            DrawPanelText(panel, "13) Buff Banner now grants Crits to the Soldier wearing it while it's active.");
            DrawPanelText(panel, "14) Raged non-Scout players are now given a speed boost to help them escape Hale.");
            DrawPanelText(panel, "15) Demoman shield bash damage is now tripled. Bash damage grants charge meter based on damage dealt.");
            DrawPanelText(panel, "16) Persian Persuader now spawns a medium ammo pack on hit.");
            DrawPanelText(panel, "17) Updated English translations file to bring it up to date with (some) recent changes.");
            DrawPanelText(panel, "--) Unofficial 1.55 sub-versions by Starblaster64.");
        }
        case 82: //1.55e
        {
            DrawPanelText(panel, "1) Added missing switch to/from speed bonus attributes to the Claidheamh Mòr.");
            DrawPanelText(panel, "2) Updated the Demoman boots + Eyelander speed nerf to apply only to Demomen with shields.");
            DrawPanelText(panel, "--) Unofficial 1.55 sub-versions by Starblaster64.");
        }
        case 81: //1.55d
        {
            DrawPanelText(panel, "1) Maps that trigger SpawnRandomHealth/Ammo() will now generate at least 1 of the required pickup.");
            DrawPanelText(panel, "2) Fixed Claidheamh Mòr having a wrong attribute.");
            DrawPanelText(panel, "3) Added IsValidEdict check on Sniper Rifle damage to prevent errors.");
            DrawPanelText(panel, "4) Minor code cleanup of addthecrit.");
            DrawPanelText(panel, "--) Unofficial 1.55 sub-versions by Starblaster64.");
        }
        case 80: //1.55c
        {
            DrawPanelText(panel, "1) Fixed weapons not mini-critting airborne targets when they should.");
            DrawPanelText(panel, "2) Rocket Jumper now has its attributes properly overriden.");
            DrawPanelText(panel, "3) Cow Mangler 5000 now minicrits airborne targets.");
            DrawPanelText(panel, "4) Removed bonus switch speed on Mediguns.");
            DrawPanelText(panel, "--) Actual switch speed is virtually the same as pre Tough-Break. (0.5s vs 0.5025s");
            DrawPanelText(panel, "5) Fixed backstab animations.");
        }
        case 79: //1.55c
        {
            DrawPanelText(panel, "6) Updated Wallclimb ability. Should no longer work on invisible walls/clip brushes.");
            DrawPanelText(panel, "7) Ubercharge reverted to previous behaviour, alternative fix used instead.");
            DrawPanelText(panel, "8) Future-proofed Sniper Rifles, mostly. Also fixed Shooting Star damage.");
            DrawPanelText(panel, "9) Fixed Shahanshah and Shortstop not receiving proper attributes.");
            DrawPanelText(panel, "10) Warrior's Spirit now has +50HP on hit with overheal up to 450HP.");
            DrawPanelText(panel, "11) All sword weapons have +25% faster switch-to/from speed. (Around 0.675s)");
        }
        case 78: //1.55c
        {
            DrawPanelText(panel, "12) Re-added Quick-Fix 'match heal target speed' attribute to Mediguns.");
            DrawPanelText(panel, "13) Claidheamh Mòr reverted to old attributes. (0.5s longer charge duration, -15HP)");
            DrawPanelText(panel, "14) Ullapool Caber penalties removed.");
            DrawPanelText(panel, "15) Phlogistinator fully heals on MMMPH activation again.");
            DrawPanelText(panel, "16) Weapon switch speed nerfs were reverted/modified, with the exception of the Degreaser.");
            DrawPanelText(panel, "17) Nerfed Demoman boots. Max speed from heads caps out at the same speed without boots equipped.");
        }
        case 77: //1.55c
        {
            DrawPanelText(panel, "18) Righteous Bison now mini-crits airborne targets.");
            DrawPanelText(panel, "19) Quickiebomb Launcher now mini-crits airborne targets.");
            DrawPanelText(panel, "---) Unofficial 1.55 sub-versions by Starblaster64.");
        }
        case 76: // 1.55b
        {
            DrawPanelText(panel, "1) Fixed throwable weapons not being crit boosted.");
            DrawPanelText(panel, "2) Re-worked Ubercharge to fix Uber ending too early on Medics.");
            DrawPanelText(panel, "--) Medics are no longer granted 150% Uber on an Ubercharge.");
            DrawPanelText(panel, "--) Ubercharge meter drains 33% slower. Still lasts 12 seconds as before.");
            DrawPanelText(panel, "3) 'tf_spec_xray' is set to 2 by default (Spectators can see outlines on all players).");
            DrawPanelText(panel, "4) Added missing attribute to Scorch Shot (Mini-crits on burning players).");
        }
        case 75: // 1.55
        {
            DrawPanelText(panel, "1) Updated Saxton Hale's model to an HD version made by thePFA");
            DrawPanelText(panel, "2) Vagineer can be properly headshotted now!");
            DrawPanelText(panel, "3) Scorch Shot's Mega Detonator gets Scorch Shot attributes instead of Detonation.");
        }
        case 74: // 1.54
        {
            DrawPanelText(panel, "1) Soldier shotgun: 40% reduced self blast damage.");
            DrawPanelText(panel, "2) Rocket jumper now becomes a reskinned default rocket launcher that deals damage like normal.");
            DrawPanelText(panel, "3) Removed quick-fix attribute from mediguns. .");
            DrawPanelText(panel, "4) Scorch shot now acts like Mega-Detonator.");
            DrawPanelText(panel, "5) Pain Train now acts like a stock weapon.");
            DrawPanelText(panel, "7) HHH Climb no longer slowers attack speed.");
        }
        case 73: // 1.54
        {
            DrawPanelText(panel, "8) Diamondback revenge crits on stab reduced from 3 -> 2.");
            DrawPanelText(panel, "9) Diamondback revenge hits deal 200 dmg instead of 255.");
            DrawPanelText(panel, "10) Market garden formula now scales the same as backstabs - but does less than backstabs.");
            DrawPanelText(panel, "11) Fixed negative HaleHealth glitch, and 20k+ backstab glitch.");
            DrawPanelText(panel, "12) Fixed boss melee weapons on CBS/Vagineer/HHH not showing attack animations in first person.");
        }
        case 72: // 1.54
        {
            DrawPanelText(panel, "13) Integrated goomba stomp and RTD for server owners to use.");
        }
        case 71: // 1.53
        { 
            DrawPanelText(panel, "1) Undid 1.7 syntax. (Chdata)");
            DrawPanelText(panel, "2) Shahanshah: 1.66x dmg if <50% hp, 0.5x dmg if >50% hp.");
            DrawPanelText(panel, "3) Big Earner provides 3 second speed boost on stab.");
            DrawPanelText(panel, "4) Shortstop provides passive effects even when not active.");
            DrawPanelText(panel, "5) Reverted gunmettle changes to deadringer and watch.");
            DrawPanelText(panel, "6) Watches do not give speed boosts on cloak.");
        }
        case 70: // 1.53
        {
            DrawPanelText(panel, "7) Deadringer reduces melee damage to 62, and normal watch to 85.");
            DrawPanelText(panel, "8) OVERRIDE_MEDIGUNS_ON is now on by default. Mediguns will simply have their stats replaced instead of a custom medigun replacement.");
            DrawPanelText(panel, "9) Gunmettle weapons act like their non-skinned counter-parts.");
            DrawPanelText(panel, "10) Natascha will no longer keep its bonus ammo when being replaced.");
            DrawPanelText(panel, "11) Unnerfed the Easter Bunny's rage.");
            DrawPanelText(panel, "12) Disabled dropped weapons during VSH rounds.");
        }
        case 69: //1.52
        {
            DrawPanelText(panel, "1) Added the new festive/other weapons!");
            DrawPanelText(panel, "2) Check out v1.51 because we skipped a version!");
            DrawPanelText(panel, "3) Maps without health/ammo now randomly spawn some in spawn");
        }
        case 68: //1.51
        {
            DrawPanelText(panel, "1) Boss became Hale HUD no longer overlaps final score HUD.");
            DrawPanelText(panel, "2) Must touch ground again after market gardening (Can no longer screw HHH over).");
            DrawPanelText(panel, "3) Parachuting reduces market garden dmg by 33% and disables your parachute.");
        }
        case 67: // 1.50
        {
            DrawPanelText(panel, "1) Removed gamedata dependency.");
            DrawPanelText(panel, "2) Optimized some code.");
            DrawPanelText(panel, "3) Reserve shooter no longer Thriller taunts.");
            DrawPanelText(panel, "4) Fixed mantreads not giving increased jump height.");
            // Should be in sync with github now
            // Fixed SM1.7 compiler warning
            // FlaminSarge's timer/requestframe changes
            // Removed require_plugin around tryincluding tf2attributes
            // Changed RemoveWeaponSlot2 to RemoveWeaponSlot
        }
        case 66: //1.49
        {
            DrawPanelText(panel, "1) Updated again for the latest version of sourcemod (1.6.1 or higher)");
            DrawPanelText(panel, "2) Hopefully botkillers are fixed now?");
            DrawPanelText(panel, "3) Fixed wrong number of players displaying when control point is enabled.");
            DrawPanelText(panel, "4) Fixed festive GRU's stats and festive/bread jarate not removing rage.");
            DrawPanelText(panel, "5) Fixed issues with HHH teleporting to spawn.");
            DrawPanelText(panel, "6) Added configs/saxton_spawn_teleport.cfg");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 65: //1.48
        {
            DrawPanelText(panel, "1) Can call medic to rage.");
            DrawPanelText(panel, "2) Harder to double tap taunt and fail rage.");
            DrawPanelText(panel, "3) Cannot spam super duper jump as much when falling into pits.");
            DrawPanelText(panel, "4) Hale only takes 5% of his max health as damage while in pits, at a max of 500.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 64: //1.48
        {
            DrawPanelText(panel, "5) Blocked boss from using voice commands unless he's CBS or Bunny");
            DrawPanelText(panel, "6) HHH always teleports to spawn after falling off the map.");
            DrawPanelText(panel, "7) HHH takes 50 seconds to get his first teleport instead of 25.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 63: //1.47
        {
            DrawPanelText(panel, "1) Updated for the latest version of sourcemod (1.6.1)");
            DrawPanelText(panel, "2) Fixed final player disconnect not giving the remaining players mini/crits.");
            DrawPanelText(panel, "3) Fixed cap not starting enabled when the round starts with low enough players to enable it.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 62: //1.47
        {
            DrawPanelText(panel, "5) !haleclass as Hale now shows boss info instead of class info.");
            DrawPanelText(panel, "6) Fixed Hale's anchor to work against sentries. Crouch walking negates all knockback.");
            DrawPanelText(panel, "7) Being cloaked next to a dispenser now drains your cloak to prevent camping.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 61: //1.46
        {
            DrawPanelText(panel, "1) Fixed botkillers (thanks rswallen).");
            DrawPanelText(panel, "2) Fixed Tide Turner & Razorback not being unequipped/removed properly.");
            DrawPanelText(panel, "3) Hale can no longer pick up health packs.");
            DrawPanelText(panel, "4) Fixed maps like military area where BLU can't pick up ammo packs in the first arena round.");
            DrawPanelText(panel, "5) Fixed unbalanced team joining in the first arena round.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 60: //1.46
        {
            DrawPanelText(panel, "6) Can now type !resetq to reset your queue points.");
            DrawPanelText(panel, "7) !infotoggle can disable the !haleclass info popups on round start.");
            DrawPanelText(panel, "8) Easter Bunny has 40pct knockback resist in light of the crit eggs.");
            DrawPanelText(panel, "9) Phlog damage reduced by half when not under the effects of CritMmmph.");
            DrawPanelText(panel, "10) Quiet decloak moved from Letranger to Your Eternal Reward / Wanga Prick.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 59: //1.46
        {
            DrawPanelText(panel, "11) YER no longer disguises you.");
            DrawPanelText(panel, "12) Changed /halenew pagination a little.");
            DrawPanelText(panel, "13) Nerfed demo shield crits to minicrits. He was overpowered compared to other classes.");
            DrawPanelText(panel, "14) Added Cvar 'hale_shield_crits' to re-enable shield crits for servers balanced around taunt crits/goomba.");
            DrawPanelText(panel, "15) Added cvar 'hale_hp_display' to toggle displaying Hale's Health at all times on the hud.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 58: //1.45
        {
            DrawPanelText(panel, "1) Fixed equippable wearables (thanks fiagram & Powerlord).");
            DrawPanelText(panel, "2) Fixed flickering HUD text.");
            DrawPanelText(panel, "3) Implemented anti-suicide as Hale measures.");
            DrawPanelText(panel, "4) Hale cannot suicide until around 30 seconds have passed.");
            DrawPanelText(panel, "5) Hale can no longer switch teams to suicide.");
            DrawPanelText(panel, "6) Repositioned 'player became x boss' message off of your crosshair.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community."); // Blatant advertising
        }
        case 57: //1.45
        {
            DrawPanelText(panel, "7) Removed annoying no yes no no you're Hale next message.");
            DrawPanelText(panel, "8) Market Gardens do damage similar to backstabs.");
            DrawPanelText(panel, "9) Deadringer now displays its status.");
            DrawPanelText(panel, "10) Phlog is invulnerable during taunt activation.");
            DrawPanelText(panel, "11) Phlog Crit Mmmph duration has 75% damage resistance.");
            DrawPanelText(panel, "12) Phlog disables flaregun crits.");
            DrawPanelText(panel, "13) Fixed Bread Bite and Festive Eyelander.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 56: //1.45
        {
            DrawPanelText(panel, "14) Can now see uber meter with melee or syringe equipped.");
            DrawPanelText(panel, "15) Soda Popper & BFB replaced with scattergun.");
            DrawPanelText(panel, "16) Bonk replaced with crit-a-cola.");
            DrawPanelText(panel, "17) All 3 might be rebalanced in the future.");
            DrawPanelText(panel, "18) Reserve shooter crits in place of minicrits. Still 3 clip.");
            DrawPanelText(panel, "19) Re-enabled Darwin's Danger Shield. Overhealed sniper can tank a hit!");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 55: //1.45
        {
            DrawPanelText(panel, "20) Batt's Backup has 75% knockback resist.");
            DrawPanelText(panel, "21) Air Strike relaxed to 200 dmg per clip.");
            DrawPanelText(panel, "22) Fixed backstab rarely doing 1/3 damage glitch.");
            DrawPanelText(panel, "23) Big Earner gives full cloak on backstab.");
            DrawPanelText(panel, "24) Fixed SteamTools not changing gamedesc.");
            DrawPanelText(panel, "25) Reverted 3/5ths backstab assist for medics and fixed no assist glitch.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 54: //1.45
        {
            DrawPanelText(panel, "26) HHH can wallclimb.");
            DrawPanelText(panel, "27) HHH's weighdown timer is reset on wallclimb.");
            DrawPanelText(panel, "28) HHH now alerts their teleport target that he teleported to them.");
            DrawPanelText(panel, "29) HHH can get stuck in soldiers and scouts, but not other classes on teleport.");
            DrawPanelText(panel, "30) Can now charge super jump while holding space.");
            DrawPanelText(panel, "31) Nerfed Easter Bunny's rage eggs by 40% damage.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 53: //1.44
        {
            DrawPanelText(panel, "1) Fixed first round glich (thanks nergal).");
            DrawPanelText(panel, "2) Kunai starts at 65 HP instead of 60. Max 270 HP.");
            DrawPanelText(panel, "3) Kunai gives 180 HP on backstab instead of 100.");
            DrawPanelText(panel, "4) Demo boots now reduce fall damage like soldier boots and do stomp damage.");
            DrawPanelText(panel, "5) Fixed bushwacka disabling crits.");
            DrawPanelText(panel, "6) Air Strike gains ammo based on every 500 damage dealt.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 52: //1.44
        {
            DrawPanelText(panel, "7) Sydney Sleeper generates half the usual rage for Hale.");
            DrawPanelText(panel, "8) Other sniper rifles just do 3x damage as usual.");
            DrawPanelText(panel, "9) Huntsman gets 2x ammo, fortified compound fixed.");
            DrawPanelText(panel, "10) Festive flare gun now acts like mega-detonator.");
            DrawPanelText(panel, "11) Medic crossbow now gives 15pct uber instead of 10.");
            DrawPanelText(panel, "12) Festive crossbow is fixed to be like normal crossbow.");
            DrawPanelText(panel, "13) Medics now get 3/5 the damage of a backstab for assisting.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 51: //1.43
        {
            DrawPanelText(panel, "1) Backstab formula rebalanced to do better damage to lower HP Hales.");
            DrawPanelText(panel, "2) Damage Dealt now work properly with backstabs.");
            DrawPanelText(panel, "3) Slightly reworked Hale health formula.");
            DrawPanelText(panel, "4) (Anchor) Bosses take no pushback from damage while ducking on the ground.");
            DrawPanelText(panel, "5) Short circuit blocked until further notice.");
            DrawPanelText(panel, "--) This version courtesy of the TF2Data community.");
        }
        case 50: //1.43
        {
            DrawPanelText(panel, "6) Bushwacka blocks healing while in use.");
            DrawPanelText(panel, "7) Cannot wallclimb if your HP is low enough that it'll kill you.");
            DrawPanelText(panel, "8) Bushwacka doesn't disable crits.");
            DrawPanelText(panel, "9) 2013 festives and bread now get crits.");
            DrawPanelText(panel, "10) Fixed telefrag and mantread stomp damage.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 49: //1.43
        {
            DrawPanelText(panel, "11) L'etranger's 40% cloak is replaced with quiet decloak and -25% cloak regen rate.");
            DrawPanelText(panel, "12) Ambassador does 2.5x damage on headshots.");
            DrawPanelText(panel, "13) Diamondback gets 3 crits on backstab.");
            DrawPanelText(panel, "14) Diamondback crit shots do bonus damage similar to the Ambassador.");
            DrawPanelText(panel, "15) Manmelter always crits, while revenge crits do bonus damage.");
            DrawPanelText(panel, "---) This version courtesy of the TF2Data community.");
        }
        case 48: //142
        {
            DrawPanelText(panel, "1) Festive fixes");
            DrawPanelText(panel, "2) Hopefully fixed targes disappearing");
#if defined EASTER_BUNNY_ON
            DrawPanelText(panel, "3) Easter and April Fool's Day so close together... hmmm...");
#endif
        }
        case 47: //141
        {
            DrawPanelText(panel, "1) Fixed bosses disguising");
            DrawPanelText(panel, "2) Updated action slot whitelist");
            DrawPanelText(panel, "3) Updated sniper rifle list, Fest. Huntsman");
            DrawPanelText(panel, "4) Medigun speed works like Quick-Fix");
            DrawPanelText(panel, "5) Medigun+gunslinger vm fix");
            DrawPanelText(panel, "6) CBS gets Fest. Huntsman");
            DrawPanelText(panel, "7) Spies take more dmg while cloaked (normal watch)");
            DrawPanelText(panel, "8) Experimental backstab block animation");
        }
        case 46: //140
        {
            DrawPanelText(panel, "1) Dead Ringers have no cloak defense buff. Normal cloaks do.");
            DrawPanelText(panel, "2) Fixed Sniper Rifle reskin behavior");
            DrawPanelText(panel, "3) Boss has small amount of stun resistance after rage");
            DrawPanelText(panel, "4) Fixed HHH/CBS models");
        }
        case 45: //139c
        {
            DrawPanelText(panel, "1) Backstab disguising smoother/less obvious");
            DrawPanelText(panel, "2) Rage 'dings' dispenser/tele, to help locate Hale");
            DrawPanelText(panel, "3) Improved skip panel");
            DrawPanelText(panel, "4) Removed crits from sniper rifles, now do 2.9x damage");
            DrawPanelText(panel, "-- Sleeper does 2.4x damage, 2.9x if Hale's rage is >90pct");
            DrawPanelText(panel, "-- Bushwacka nerfs still apply");
            DrawPanelText(panel, "-- Minicrit- less damage, more knockback");
            DrawPanelText(panel, "5) Scaled sniper rifle glow time a bit better");
            DrawPanelText(panel, "6) Fixed Dead Ringer spy death icon");
        }
        case 44: //139c
        {
            DrawPanelText(panel, "7) BabyFaceBlaster will fill boost normally, but will hit 100 and drain+minicrits");
            DrawPanelText(panel, "8) Can't Eureka+destroy dispenser to insta-tele");
            DrawPanelText(panel, "9) Phlogger invuln during the taunt");
            DrawPanelText(panel, "10) Added !hale_resetq");
            DrawPanelText(panel, "11) Heatmaker gains Focus on hit (varies by charge)");
            DrawPanelText(panel, "12) Bosses get short defense buff after rage");
            DrawPanelText(panel, "13) Cozy Camper comes with SMG - 1.5s bleed, no random crit, -15% dmg");
            DrawPanelText(panel, "14) Valve buffed Crossbow. Balancing.");
            DrawPanelText(panel, "15) New cvars-hale_force_team, hale_enable_eureka");
        }
        case 43: //139c
        {
            DrawPanelText(panel, "16) Powerlord's Better Backstab Detection");
            DrawPanelText(panel, "17) Backburner has charged airblast");
            DrawPanelText(panel, "18) Skip Hale notification mixes things up");
            DrawPanelText(panel, "19) Bosses may or may not obey Pyrovision voice rules. Or both.");
        }
        case 42: //139
        {
            DrawPanelText(panel, "1) !hale_resetqueuepoints");
            DrawPanelText(panel, "-- From chat, asks for confirmation");
            DrawPanelText(panel, "-- From console, no confirmation!");
            DrawPanelText(panel, "2) Help panel stops repeatedly popping up");
            DrawPanelText(panel, "3) Medic is credited 100% of damage done during uber");
            DrawPanelText(panel, "4) Bushwacka changes:");
            DrawPanelText(panel, "-- Hit a wall to climb it");
            DrawPanelText(panel, "-- Slower fire rate");
            DrawPanelText(panel, "-- Disables crits on rifles (not Huntsman)");
            DrawPanelText(panel, "-- Effect does not occur during HHH round");
            DrawPanelText(panel, "...contd.");
        }

        case 41: //139
        {
            DrawPanelText(panel, "5) Late December increases chances of CBS appearing");
            DrawPanelText(panel, "6) If map changes mid-round, queue points not lost");
            DrawPanelText(panel, "7) Fixed HHH tele (again).");
            DrawPanelText(panel, "8) HHH tele removes Sniper Rifle glow");
            DrawPanelText(panel, "9) Mantread stomp deals 5x damage to Hale");
            DrawPanelText(panel, "10) Rage stun range- Vagineer increased, CBS decreased");
            DrawPanelText(panel, "11) Balanced CBS arrows");
            DrawPanelText(panel, "12) Minicrits will not play loud sound to all players");
            DrawPanelText(panel, "13) Dead Ringer will not be able to activate for 2s after backstab");
            DrawPanelText(panel, "-- Other spy watches can");
            DrawPanelText(panel, "14) Fixed crit issues");
            DrawPanelText(panel, "15) Hale queue now accepts negative points");
            DrawPanelText(panel, "...contd.");
        }
        case 40: //139
        {
            DrawPanelText(panel, "16) For server owners:");
            DrawPanelText(panel, "-- Translations updated");
            DrawPanelText(panel, "-- Added hale_spec_force_boss cvar");
            DrawPanelText(panel, "-- Now attempts to integrate tf2items config");
            DrawPanelText(panel, "-- With steamtools, changes game desc");
            DrawPanelText(panel, "-- Plugin may warn if config is outdated");
            DrawPanelText(panel, "-- Jump/tele charge defines at top of code");
            DrawPanelText(panel, "17) For mapmakers:");
            DrawPanelText(panel, "-- Indicate that your map has music:");
            DrawPanelText(panel, "-- Add info_target with name 'hale_no_music'");
            DrawPanelText(panel, "18) Third Degree hit adds uber to healers");
            DrawPanelText(panel, "19) Knockback resistance on Hale/HHH");
        }
        case 39: //138
        {
            DrawPanelText(panel, "1) Bots will use rage.");
            DrawPanelText(panel, "2) Doors only forced open on specified maps");
            DrawPanelText(panel, "3) CBS spawns more during Winter holidays");
            DrawPanelText(panel, "4) Deathspam for teamswitch gone");
            DrawPanelText(panel, "5) More notice for next Hale");
            DrawPanelText(panel, "6) Wrap Assassin has 2 ammo");
            DrawPanelText(panel, "7) Holiday Punch slightly disorients Hale");
            DrawPanelText(panel, "-- If stunned Heavy punches Hale, removes stun");
            DrawPanelText(panel, "8) Mantreads increase rocketjump distance");
        }
        case 38: //138
        {
            DrawPanelText(panel, "9) Fixed CBS Huntsman rate of fire");
            DrawPanelText(panel, "10) Fixed permanent invuln Vagineer glitch");
            DrawPanelText(panel, "11) Jarate removes some Vagineer uber time and 1 CBS arrow");
            DrawPanelText(panel, "12) Low-end Medic assist damage now counted");
            DrawPanelText(panel, "13) Hitting Dead Ringers does more damage (as balancing)");
            DrawPanelText(panel, "14) Eureka Effect temporarily removed)");
            DrawPanelText(panel, "15) HHH won't get stuck in ceilings when teleporting");
            DrawPanelText(panel, "16) Further updates pending");
        }
        case 37:    //137
        {
            DrawPanelText(panel, "1) Fixed taunt/rage.");
            DrawPanelText(panel, "2) Fixed rage+high five.");
            DrawPanelText(panel, "3) hale_circuit_stun - Circuit Stun time (0 to disable)");
            DrawPanelText(panel, "4) Fixed coaching bug");
            DrawPanelText(panel, "5) Config file for map doors");
            DrawPanelText(panel, "6) Fixed floor-Hale");
            DrawPanelText(panel, "7) Fixed Circuit stun");
            DrawPanelText(panel, "8) Fixed negative health bug");
            DrawPanelText(panel, "9) hale_enabled isn't a dummy cvar anymore");
            DrawPanelText(panel, "10) hale_special cmd fixes");
        }
        case 36: //137
        {
            DrawPanelText(panel, "11) 1st-round cap enables after 1 min.");
            DrawPanelText(panel, "12) More invalid Hale checks.");
            DrawPanelText(panel, "13) Backstabs act like Razorbackstab (2s)");
            DrawPanelText(panel, "14) Fixed map check error");
            DrawPanelText(panel, "15) Wanga Prick -> Eternal Reward effect");
            DrawPanelText(panel, "16) Jarate removes 8% of Hale's rage meter");
            DrawPanelText(panel, "17) The Fan O' War removes 5% of the rage meter on hit");
            DrawPanelText(panel, "18) Removed Shortstop reload penalty");
            DrawPanelText(panel, "19) VSH_OnMusic forward");
        }
        case 35: //1369
        {
            DrawPanelText(panel, "1) Fixed spawn door blocking.");
            DrawPanelText(panel, "2) Cleaned up HUD text (health, etc).");
            DrawPanelText(panel, "3) VSH_OnDoJump now has a bool for superduper.");
            DrawPanelText(panel, "4) !halenoclass changed to !haleclassinfotoggle.");
            DrawPanelText(panel, "5) Fixed invalid clients becoming Hale");
            DrawPanelText(panel, "6) Removed teamscramble from first round.");
            DrawPanelText(panel, "7) Vagineer noises:");
            DrawPanelText(panel, "-- Nope for no");
            DrawPanelText(panel, "-- Gottam/mottag (same as jump but quieter) for Move Up");
            DrawPanelText(panel, "-- Hurr for everything else");
        }
        case 34: //1369
        {
            DrawPanelText(panel, "8) All map dispensers will be on the non-Hale team (fixes health bug)");
            DrawPanelText(panel, "9) Fixed command flags on overlay command");
            DrawPanelText(panel, "10) Fixed soldier shotgun not dealing midair minicrits.");
            DrawPanelText(panel, "11) Fixed invalid weapons on clients");
            DrawPanelText(panel, "12) Damage indicator (+spec damage indicator)");
            DrawPanelText(panel, "13) Hale speed remains during humiliation time");
            DrawPanelText(panel, "14) SuperDuperTele for HHH stuns for 4s instead of regular 2");
        }
        case 33: //1369
        {
            DrawPanelText(panel, "15) Battalion's Backup adds +10 max hp, but still only overheal to 300");
            DrawPanelText(panel, "-- Full rage meter when hit by Hale. Buff causes drastic defense boost.");
            DrawPanelText(panel, "16) Fixed a telefrag glitch");
            DrawPanelText(panel, "17) Powerjack is now +25hp on hit, heal up to +50 overheal");
            DrawPanelText(panel, "18) Backstab now shows the regular hit indicator (like other weapons do)");
            DrawPanelText(panel, "19) Kunai adds 100hp on backstab, up to 270");
            DrawPanelText(panel, "20) FaN/Scout crit knockback not nerfed to oblivion anymore");
            DrawPanelText(panel, "21) Removed Short Circuit stun (better effect being made)");
        }
        case 32: //1368
        {
            DrawPanelText(panel, "1) Now FaN and Scout crit knockback is REALLY lessened.");
            DrawPanelText(panel, "2) Medic says 'I'm charged' when he gets fully uber-charge with syringegun.");
            DrawPanelText(panel, "3) Team will scramble in 1st round, if 1st round is default arena.");
            DrawPanelText(panel, "4) Now client can disable info about changes of classes, displayed when round started.");
            DrawPanelText(panel, "5) Powerjack adds 50HPs per hit.");
            DrawPanelText(panel, "6) Short Circuit stuns Hale for 2.0 seconds.");
            DrawPanelText(panel, "7) Vagineer says \"hurr\"");
            //DrawPanelText(panel, "8) Added support of VSH achievements.");
        }
        case 31: //1367
        {
            DrawPanelText(panel, "1) Map-specific fixes:");
            DrawPanelText(panel, "-- Oilrig's pit no longer allows HHH to instatele");
            DrawPanelText(panel, "-- Arakawa's pit damage drastically lessened");
            DrawPanelText(panel, "2) General map fixes: disable spawn-blocking walls");
            DrawPanelText(panel, "3) Cap point now properly un/locks instead of fake-unlocking.");
            DrawPanelText(panel, "4) Tried fixing double-music playing.");
            DrawPanelText(panel, "5) Fixed Eternal Reward disguise glitch - edge case.");
            DrawPanelText(panel, "6) Help menus no longer glitch votes.");
        }
        case 30: //1366
        {
            DrawPanelText(panel, "1) Fixed superjump velocity code.");
            DrawPanelText(panel, "2) Fixed replaced Rocket Jumpers not minicritting Hale in midair.");
        }
        case 29: //1365
        {
            DrawPanelText(panel, "1) Half-Zatoichi is now allowed. Heal 35 health on hit, but must hit Hale to remove Honorbound.");
            DrawPanelText(panel, "-- Can add up to 25 overheal");
            DrawPanelText(panel, "-- Starts the round bloodied.");
            DrawPanelText(panel, "2) Fixed Hale not building rage when only Scouts remain.");
            DrawPanelText(panel, "3) Tried fixing Hale disconnect/nextround glitches (including music).");
            DrawPanelText(panel, "4) Candycane spawns healthpack on hit.");
        }
        case 28:    //1364
        {
            DrawPanelText(panel, "1) Added convar hale_first_round (default 0). If it's 0, first round will be default arena.");
            DrawPanelText(panel, "2) Added more translations.");
        }
        case 27:    //1363
        {
            DrawPanelText(panel, "1) Fixed a queue point exploit (VoiDeD is mean)");
            DrawPanelText(panel, "2) HHH has backstab/death sound now");
            DrawPanelText(panel, "3) First rounds are normal arena");
            DrawPanelText(panel, "-- Some weapon replacements still apply!");
            DrawPanelText(panel, "-- Teambalance is still off, too.");
            DrawPanelText(panel, "4) Fixed arena_ maps not switching teams occasionally");
            DrawPanelText(panel, "-- After 3 rounds with a team, has a chance to switch");
            DrawPanelText(panel, "-- Will add a cvar to keep Hale always blue/force team, soon");
            DrawPanelText(panel, "5) Fixed pit damage");
        }
        case 26:    //1361 and 2
        {
            DrawPanelText(panel, "1) CBS music");
            DrawPanelText(panel, "2) Soldiers minicrit Hale while he's in midair.");
            DrawPanelText(panel, "3) Direct Hit crits instead of minicrits");
            DrawPanelText(panel, "4) Reserve Shooter switches faster, +10% dmg");
            DrawPanelText(panel, "5) Added hale_stop_music cmd - admins stop music for all");
            DrawPanelText(panel, "6) FaN and Scout crit knockback is lessened");
            DrawPanelText(panel, "7) Your halemusic/halevoice settings are saved");
            DrawPanelText(panel, "1.362) Sounds aren't stupid .mdl files anymore");
            DrawPanelText(panel, "1.362) Fixed translations");
        }
        case 25:    //136
        {
            DrawPanelText(panel, "MEGA UPDATE by FlaminSarge! Check next few pages");
            DrawPanelText(panel, "SUGGEST MANNO-TECH WEAPON CHANGES");
            DrawPanelText(panel, "1) Updated CBS model");
            DrawPanelText(panel, "2) Fixed last man alive sound");
            DrawPanelText(panel, "3) Removed broken hale line, fixed one");
            DrawPanelText(panel, "4) New HHH rage sound");
            DrawPanelText(panel, "5) HHH music (/halemusic)");
            DrawPanelText(panel, "6) CBS jump noise");
            DrawPanelText(panel, "7) /halevoice and /halemusic to turn off voice/music");
            DrawPanelText(panel, "8) Updated natives/forwards (can change rage dist in fwd)");
        }
        case 24:    //136
        {
            DrawPanelText(panel, "9) hale_crits cvar to turn off hale random crits");
            DrawPanelText(panel, "10) Fixed sentries not repairing when raged");
            DrawPanelText(panel, "-- Set hale_ragesentrydamagemode 0 to force engineer to pick up sentry to repair");
            DrawPanelText(panel, "11) Now uses sourcemod autoconfig (tf/cfg/sourcemod/)");
            DrawPanelText(panel, "12) No longer requires saxton_hale_points.cfg file");
            DrawPanelText(panel, "-- Now using clientprefs for queue points");
            DrawPanelText(panel, "13) When on non-VSH map, team switch does not occur so often.");
            DrawPanelText(panel, "14) Should have full replay compatibility");
            DrawPanelText(panel, "15) Bots work with queue, are Hale less often");
        }
        case 23:    //136
        {
            DrawPanelText(panel, "16) Hale's health increased by 1 (in code)");
            DrawPanelText(panel, "17) Many many many many many fixes");
            DrawPanelText(panel, "18) Crossbow +150% damage +10 uber on hit");
            DrawPanelText(panel, "19) Syringegun has overdose speed boost");
            DrawPanelText(panel, "20) Sniper glow time scales with charge (2 to 8 seconds)");
            DrawPanelText(panel, "21) Eyelander/reskins add heads on hit");
            DrawPanelText(panel, "22) Axetinguisher/reskins use fire axe attributes");
            DrawPanelText(panel, "23) GRU/KGB is +50% speed but -7hp/s");
            DrawPanelText(panel, "24) Airblasting boss adds rage (no airblast reload though)");
            DrawPanelText(panel, "25) Airblasting uber vagineer adds time to uber and takes extra ammo");
        }
        case 22:    //136
        {
            DrawPanelText(panel, "26) Frontier Justice allowed, crits only when sentry sees Hale");
            DrawPanelText(panel, "27) Boss weighdown (look down + crouch) after 5 seconds in midair");
            DrawPanelText(panel, "28) FaN is back");
            DrawPanelText(panel, "29) Scout crits/minicrits do less knockback if not melee");
            DrawPanelText(panel, "30) Saxton has his own fists");
            DrawPanelText(panel, "31) Unlimited /halehp but after 3, longer cooldown");
            DrawPanelText(panel, "32) Fist kill icons");
            DrawPanelText(panel, "33) Fixed CBS arrow count (start at 9, but if less than 9 players, uses only that number of players)");
            DrawPanelText(panel, "34) Spy primary minicrits");
            DrawPanelText(panel, "35) Dead ringer fixed");
        }
        case 21:    //136
        {
            DrawPanelText(panel, "36) Flare gun replaced with detonator. Has large jump but more self-damage (like old detonator beta)");
            DrawPanelText(panel, "37) Eternal Reward backstab disguises as random faster classes");
            DrawPanelText(panel, "38) Kunai adds 60 health on backstab");
            DrawPanelText(panel, "39) Randomizer compatibility.");
            DrawPanelText(panel, "40) Medic uber works as normal with crits added (multiple targets, etc)");
            DrawPanelText(panel, "41) Crits stay when being healed, but adds minicrits too (for sentry, etc)");
            DrawPanelText(panel, "42) Fixed Sniper back weapon replacement");
        }
        case 20:    //136
        {
            DrawPanelText(panel, "43) Vagineer NOPE and Well Don't That Beat All!");
            DrawPanelText(panel, "44) Telefrags do 9001 damage");
            DrawPanelText(panel, "45) Speed boost when healing scouts (like Quick-Fix)");
            DrawPanelText(panel, "46) Rage builds (VERY slowly) if there are only Scouts left");
            DrawPanelText(panel, "47) Healing assist damage split between healers");
            DrawPanelText(panel, "48) Fixed backstab assist damage");
            DrawPanelText(panel, "49) Fixed HHH attacking during tele");
            DrawPanelText(panel, "50) Soldier boots - 1/10th fall damage");
            DrawPanelText(panel, "AND MORE! (I forget all of them)");
        }
        case 19:    //135_3
        {
            DrawPanelText(panel, "1)Added point system (/halenext).");
            DrawPanelText(panel, "2)Added [VSH] to VSH messages.");
            DrawPanelText(panel, "3)Removed native VSH_GetSaxtonHaleHealth() added native VSH_GetRoundState().");
            DrawPanelText(panel, "4)There is mini-crits for scout's pistols. Not full crits, like before.");
            DrawPanelText(panel, "5)Fixed issues associated with crits.");
            DrawPanelText(panel, "6)Added FORCE_GENERATION flag to stop errorlogs.");
            DrawPanelText(panel, "135_2 and 135_3)Bugfixes and updated translations.");
        }
        case 18:    //135
        {
            DrawPanelText(panel, "1)Special crits will not removed by Medic.");
            DrawPanelText(panel, "2)Sniper's glow is working again.");
            DrawPanelText(panel, "3)Less errors in console.");
            DrawPanelText(panel, "4)Less messages in chat.");
            DrawPanelText(panel, "5)Added more natives.");
            DrawPanelText(panel, "6)\"Over 9000\" sound returns! Thx you, FlaminSarge.");
            DrawPanelText(panel, "7)Hopefully no more errors in logs.");
        }
        case 17:    //134
        {
            DrawPanelText(panel, "1)Biohazard skin for CBS");
            DrawPanelText(panel, "2)TF2_IsPlayerInCondition() fixed");
            DrawPanelText(panel, "3)Now sniper rifle must be 100perc.charged to glow Hale.");
            DrawPanelText(panel, "4)Fixed Vagineer's model.");
            DrawPanelText(panel, "5)Added Natives.");
            DrawPanelText(panel, "6)Hunstman deals more damage.");
            DrawPanelText(panel, "7)Added reload time (5sec) for Pyro's airblast. ");
            DrawPanelText(panel, "1.34_1 1)Fixed airblast reload when VSH is disabled.");
            DrawPanelText(panel, "1.34_1 2)Fixed airblast reload after detonator's alt-fire.");
            DrawPanelText(panel, "1.34_1 3)Airblast reload time reduced to 3 seconds.");
            DrawPanelText(panel, "1.34_1 4)hale_special 3 is disabled.");
        }
        case 16:    //133
        {
            DrawPanelText(panel, "1)Fixed bugs, associated with Uber-update.");
            DrawPanelText(panel, "2)FaN replaced with Soda Popper.");
            DrawPanelText(panel, "3)Bazaar Bargain replaced with Sniper Rifle.");
            DrawPanelText(panel, "4)Sniper Rifle adding glow to Hale - anyone can see him for 5 seconds.");
            DrawPanelText(panel, "5)Crusader's Crossbow deals more damage.");
            DrawPanelText(panel, "6)Code optimizing.");
        }
        case 15:    //132
        {
            DrawPanelText(panel, "1)Added new Saxton's lines on...");
            DrawPanelText(panel, "  a)round start");
            DrawPanelText(panel, "  b)jump");
            DrawPanelText(panel, "  c)backstab");
            DrawPanelText(panel, "  d)destroy Sentry");
            DrawPanelText(panel, "  e)kill Scout, Pyro, Heavy, Engineer, Spy");
            DrawPanelText(panel, "  f)last man standing");
            DrawPanelText(panel, "  g)killing spree");
            DrawPanelText(panel, "2)Fixed bugged count of CBS' arrows.");
            DrawPanelText(panel, "3)Reduced Hale's damage versus DR by 20 HPs.");
            DrawPanelText(panel, "4)Now two specials can not be at a stretch.");
            DrawPanelText(panel, "v1.32_1 1)Fixed bug with replay.");
            DrawPanelText(panel, "v1.32_1 2)Fixed bug with help menu.");
        }
        case 14:    //131
            DrawPanelText(panel, "1)Now \"replay\" will not change team.");
        case 13:    //130
            DrawPanelText(panel, "1)Fixed bugs, associated with crushes, error logs, scores.");
        case 12:    //129
        {
            DrawPanelText(panel, "1)Fixed random crushes associated with CBS.");
            DrawPanelText(panel, "2)Now Hale's HP formula is ((760+x-1)*(x-1))^1.04");
            DrawPanelText(panel, "3)Added hale_special0. Use it to change next boss to Hale.");
            DrawPanelText(panel, "4)CBS has 9 arrows for bow-rage. Also he has stun rage, but on little distantion.");
            DrawPanelText(panel, "5)Teammates gets 2 scores per each 600 damage");
            DrawPanelText(panel, "6)Demoman with Targe has crits on his primary weapon.");
            DrawPanelText(panel, "7)Removed support of non-Arena maps, because nobody wasn't use it.");
            DrawPanelText(panel, "8)Pistol/Lugermorph has crits.");
        }
        case 11:    //128
        {
            DrawPanelText(panel, "VS Saxton Hale Mode is back!");
            DrawPanelText(panel, "1)Christian Brutal Sniper is a regular character.");
            DrawPanelText(panel, "2)CBS has 3 melee weapons ad bow-rage.");
            DrawPanelText(panel, "3)Added new lines for Vagineer.");
            DrawPanelText(panel, "4)Updated models of Vagineer and HHH jr.");
        }
        case 10:    //999
            DrawPanelText(panel, "Attachables are broken. Many \"thx\" to Valve.");
        case 9: //126
        {
            DrawPanelText(panel, "1)Added the second URL for auto-update.");
            DrawPanelText(panel, "2)Fixed problems, when auto-update was corrupt plugin.");
            DrawPanelText(panel, "3)Added a question for the next Hale, if he want to be him. (/haleme)");
            DrawPanelText(panel, "4)Eyelander and Half-Zatoichi was replaced with Claidheamh Mor.");
            DrawPanelText(panel, "5)Fan O'War replaced with Bat.");
            DrawPanelText(panel, "6)Dispenser and TP won't be destoyed after Engineer's death.");
            DrawPanelText(panel, "7)Mode uses the localization file.");
            DrawPanelText(panel, "8)Saxton Hale will be choosed randomly for the first 3 rounds (then by queue).");
        }
        case 8: //125
        {
            DrawPanelText(panel, "1)Fixed silent HHHjr's rage.");
            DrawPanelText(panel, "2)Now bots (sourcetv too) do not will be Hale");
            DrawPanelText(panel, "3)Fixed invalid uber on Vagineer's head.");
            DrawPanelText(panel, "4)Fixed other little bugs.");
        }
        case 7: //124
        {
            DrawPanelText(panel, "1)Fixed destroyed buildables associated with spy's fake death.");
            DrawPanelText(panel, "2)Syringe Gun replaced with Blutsauger.");
            DrawPanelText(panel, "3)Blutsauger, on hit: +5 to uber-charge.");
            DrawPanelText(panel, "4)Removed crits from Blutsauger.");
            DrawPanelText(panel, "5)CnD replaced with Invis Watch.");
            DrawPanelText(panel, "6)Fr.Justice replaced with shotgun");
            DrawPanelText(panel, "7)Fists of steel replaced with fists.");
            DrawPanelText(panel, "8)KGB replaced with GRU.");
            DrawPanelText(panel, "9)Added /haleclass.");
            DrawPanelText(panel, "10)Medic gets assist damage scores (1/2 from healing target's damage scores, 1/1 when uber-charged)");
        }
        case 6: //123
        {
            DrawPanelText(panel, "1)Added Super Duper Jump to rescue Hale from pit");
            DrawPanelText(panel, "2)Removed pyro's ammolimit");
            DrawPanelText(panel, "3)Fixed little bugs.");
        }
        case 5: //122
        {
            DrawPanelText(panel, "1.21)Point will be enabled when X or less players be alive.");
            DrawPanelText(panel, "1.22)Now it's working :) Also little optimize about player count.");
        }
        case 4: //120
        {
            DrawPanelText(panel, "1)Added new Hale's phrases.");
            DrawPanelText(panel, "2)More bugfixes.");
            DrawPanelText(panel, "3)Improved super-jump.");
        }
        case 3: //112
        {
            DrawPanelText(panel, "1)More bugfixes.");
            DrawPanelText(panel, "2)Now \"(Hale)<mapname>\" can be nominated for nextmap.");
            DrawPanelText(panel, "3)Medigun's uber gets uber and crits for Medic and his target.");
            DrawPanelText(panel, "4)Fixed infinite Specials.");
            DrawPanelText(panel, "5)And more bugfixes.");
        }
        case 2: //111
        {
            DrawPanelText(panel, "1)Fixed immortal spy");
            DrawPanelText(panel, "2)Fixed crashes associated with classlimits.");
        }
        case 1: //110
        {
            DrawPanelText(panel, "1)Not important changes on code.");
            DrawPanelText(panel, "2)Added hale_enabled convar.");
            DrawPanelText(panel, "3)Fixed bug, when all hats was removed...why?");
        }
        case 0: //100
        {
            DrawPanelText(panel, "Released!!!");
            DrawPanelText(panel, "On new version you will get info about changes.");
        }
        default:
        {
            DrawPanelText(panel, "-- Somehow you've managed to find a glitched version page!");
            DrawPanelText(panel, "-- Congratulations. Now go fight Hale.");
        }
    }
}