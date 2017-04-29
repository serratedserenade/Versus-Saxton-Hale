bool bSpecials = true;
// Saxton Hale Files

// Model
//#define HaleModel               "models/player/saxton_hale/saxton_hale.mdl"
#define HaleModel               "models/player/saxton_test4/saxton_hale_test4.mdl"

// Materials

static const char HaleMatsV2[][] = {
    "materials/models/player/saxton_test4/eyeball_l.vmt",
    "materials/models/player/saxton_test4/eyeball_r.vmt",
    "materials/models/player/saxton_test4/halebody.vmt",
    "materials/models/player/saxton_test4/halebody.vtf",
    "materials/models/player/saxton_test4/halebodyexponent.vtf",
    "materials/models/player/saxton_test4/halehead.vmt",
    "materials/models/player/saxton_test4/halehead.vtf",
    "materials/models/player/saxton_test4/haleheadexponent.vtf",
    "materials/models/player/saxton_test4/halenormal.vtf",
    "materials/models/player/saxton_test4/halephongmask.vtf"
    //"materials/models/player/saxton_test4/halegibs.vmt",
    //"materials/models/player/saxton_test4/halegibs.vtf"
};

// SFX
#define HaleYellName            "saxton_hale/saxton_hale_responce_1a.wav"
#define HaleRageSoundB          "saxton_hale/saxton_hale_responce_1b.wav"
#define HaleComicArmsFallSound  "saxton_hale/saxton_hale_responce_2.wav"
#define HaleLastB               "vo/announcer_am_lastmanalive"

#define HaleKSpree              "saxton_hale/saxton_hale_responce_3.wav"
//HaleKSpree2 - this line is broken and unused
#define HaleKSpree2             "saxton_hale/saxton_hale_responce_4.wav"

//===New responces===
#define HaleRoundStart          "saxton_hale/saxton_hale_responce_start"                // 1-5
#define HaleJump                "saxton_hale/saxton_hale_responce_jump"                 // 1-2
#define HaleRageSound           "saxton_hale/saxton_hale_responce_rage"                 // 1-4
#define HaleKillMedic           "saxton_hale/saxton_hale_responce_kill_medic.wav"
#define HaleKillSniper1         "saxton_hale/saxton_hale_responce_kill_sniper1.wav"
#define HaleKillSniper2         "saxton_hale/saxton_hale_responce_kill_sniper2.wav"
#define HaleKillSpy1            "saxton_hale/saxton_hale_responce_kill_spy1.wav"
#define HaleKillSpy2            "saxton_hale/saxton_hale_responce_kill_spy2.wav"
#define HaleKillEngie1          "saxton_hale/saxton_hale_responce_kill_eggineer1.wav"
#define HaleKillEngie2          "saxton_hale/saxton_hale_responce_kill_eggineer2.wav"
#define HaleKSpreeNew           "saxton_hale/saxton_hale_responce_spree"                // 1-5
#define HaleWin                 "saxton_hale/saxton_hale_responce_win"                  // 1-2
#define HaleLastMan             "saxton_hale/saxton_hale_responce_lastman"              // 1-5
//#define HaleLastMan2Fixed     "saxton_hale/saxton_hale_responce_lastman2.wav"
#define HaleFail                "saxton_hale/saxton_hale_responce_fail"                 // 1-3

//===1.32 responces===
#define HaleJump132             "saxton_hale/saxton_hale_132_jump_"                     // 1-2
#define HaleStart132            "saxton_hale/saxton_hale_132_start_"                    // 1-5
#define HaleKillDemo132         "saxton_hale/saxton_hale_132_kill_demo.wav"
#define HaleKillEngie132        "saxton_hale/saxton_hale_132_kill_engie_"               // 1-2
#define HaleKillHeavy132        "saxton_hale/saxton_hale_132_kill_heavy.wav"
#define HaleKillScout132        "saxton_hale/saxton_hale_132_kill_scout.wav"
#define HaleKillSpy132          "saxton_hale/saxton_hale_132_kill_spie.wav"
#define HaleKillPyro132         "saxton_hale/saxton_hale_132_kill_w_and_m1.wav"
#define HaleSappinMahSentry132  "saxton_hale/saxton_hale_132_kill_toy.wav"
#define HaleKillKSpree132       "saxton_hale/saxton_hale_132_kspree_"                   // 1-2
#define HaleKillLast132         "saxton_hale/saxton_hale_132_last.wav"
#define HaleStubbed132          "saxton_hale/saxton_hale_132_stub_"                     // 1-4

// Unused
//#define HaleEnabled             QueuePanelH(Handle:0, MenuAction:0, 9001, 0)


// Christian Brutal Sniper Files

// Model
#define CBSModel                "models/player/saxton_hale/cbs_v4.mdl"

// Materials
// Prepared Manually

// SFX
#define CBSTheme                "saxton_hale/the_millionaires_holiday.mp3"
#define CBS0                    "vo/sniper_specialweapon08.mp3"
#define CBS1                "vo/taunts/sniper_taunts02.mp3"
#define CBS2                    "vo/sniper_award"
#define CBS3                "vo/sniper_battlecry03.mp3"
#define CBS4                    "vo/sniper_domination"
#define CBSJump1                "vo/sniper_specialcompleted02.mp3"

// Unused
//#define ShivModel               "models/weapons/c_models/c_wood_machete/c_wood_machete.mdl"


// Horseless Headless Horsemann Files

// Model
#define HHHModel                "models/player/saxton_hale/hhh_jr_mk3.mdl"

// Materials

// SFX
#define HHHLaught               "vo/halloween_boss/knight_laugh"
#define HHHRage                 "vo/halloween_boss/knight_attack01.mp3"
#define HHHRage2                "vo/halloween_boss/knight_alert.mp3"
#define HHHAttack               "vo/halloween_boss/knight_attack"

#define HHHTheme                "ui/holiday/gamestartup_halloween.mp3"

// Unused
//#define AxeModel                "models/weapons/c_models/c_headtaker/c_headtaker.mdl"


// Vagineer Files

// Model
#define VagineerModel           "models/player/saxton_hale/vagineer_v150.mdl"

// Materials
// None! He uses Engineer's stuff

// SFX
#define VagineerLastA           "saxton_hale/lolwut_0.wav"
#define VagineerRageSound       "saxton_hale/lolwut_2.wav"
#define VagineerStart           "saxton_hale/lolwut_1.wav"
#define VagineerKSpree          "saxton_hale/lolwut_3.wav"
#define VagineerKSpree2         "saxton_hale/lolwut_4.wav"
#define VagineerHit             "saxton_hale/lolwut_5.wav"

//===New Vagineer's responces===
#define VagineerRoundStart      "saxton_hale/vagineer_responce_intro.wav"
#define VagineerJump            "saxton_hale/vagineer_responce_jump_"         //  1-2
#define VagineerRageSound2      "saxton_hale/vagineer_responce_rage_"         //  1-4
#define VagineerKSpreeNew       "saxton_hale/vagineer_responce_taunt_"        //  1-5
#define VagineerFail            "saxton_hale/vagineer_responce_fail_"         //  1-2

// Unused
//#define VagineerModel           "models/player/saxton_hale/vagineer_v150.mdl"
//#define WrenchModel             "models/weapons/w_models/w_wrench.mdl"


#if defined EASTER_BUNNY_ON
// Easter Bunny Files

// Model
#define BunnyModel              "models/player/saxton_hale/easter_demo.mdl"
#define EggModel                "models/player/saxton_hale/w_easteregg.mdl"

// Materials
static const char BunnyMaterials[][] = {
    "materials/models/player/easter_demo/demoman_head_red.vmt",
    "materials/models/player/easter_demo/easter_body.vmt",
    "materials/models/player/easter_demo/easter_body.vtf",
    "materials/models/player/easter_demo/easter_rabbit.vmt",
    "materials/models/player/easter_demo/easter_rabbit.vtf",
    "materials/models/player/easter_demo/easter_rabbit_normal.vtf",
    "materials/models/player/easter_demo/eyeball_r.vmt"
    // "materials/models/player/easter_demo/demoman_head_blue_invun.vmt", // This is for the new version of easter demo which VSH isn't using
    // "materials/models/player/easter_demo/demoman_head_red_invun.vmt",
    // "materials/models/player/easter_demo/easter_rabbit_blue.vmt",
    // "materials/models/player/easter_demo/easter_rabbit_blue.vtf",
    // "materials/models/player/easter_demo/easter_rabbit_invun.vmt",
    // "materials/models/player/easter_demo/easter_rabbit_invun.vtf",
    // "materials/models/player/easter_demo/easter_rabbit_invun_blue.vmt",
    // "materials/models/player/easter_demo/easter_rabbit_invun_blue.vtf",
    // "materials/models/player/easter_demo/eyeball_invun.vmt"
};

// SFX
char BunnyWin[][] = {
    "vo/demoman_gibberish01.mp3",
    "vo/demoman_gibberish12.mp3",
    "vo/demoman_cheers02.mp3",
    "vo/demoman_cheers03.mp3",
    "vo/demoman_cheers06.mp3",
    "vo/demoman_cheers07.mp3",
    "vo/demoman_cheers08.mp3",
    "vo/taunts/demoman_taunts12.mp3"
};

const char BunnyJump[][] = {
    "vo/demoman_gibberish07.mp3",
    "vo/demoman_gibberish08.mp3",
    "vo/demoman_laughshort01.mp3",
    "vo/demoman_positivevocalization04.mp3"
};

const char BunnyRage[][] = {
    "vo/demoman_positivevocalization03.mp3",
    "vo/demoman_dominationscout05.mp3",
    "vo/demoman_cheers02.mp3"
};

const char BunnyFail[][] = {
    "vo/demoman_gibberish04.mp3",
    "vo/demoman_gibberish10.mp3",
    "vo/demoman_jeers03.mp3",
    "vo/demoman_jeers06.mp3",
    "vo/demoman_jeers07.mp3",
    "vo/demoman_jeers08.mp3"
};

const char BunnyKill[][] = {
    "vo/demoman_gibberish09.mp3",
    "vo/demoman_cheers02.mp3",
    "vo/demoman_cheers07.mp3",
    "vo/demoman_positivevocalization03.mp3"
};

const char BunnySpree[][] = {
    "vo/demoman_gibberish05.mp3",
    "vo/demoman_gibberish06.mp3",
    "vo/demoman_gibberish09.mp3",
    "vo/demoman_gibberish11.mp3",
    "vo/demoman_gibberish13.mp3",
    "vo/demoman_autodejectedtie01.mp3"
};

const char BunnyLast[][] = {
    "vo/taunts/demoman_taunts05.mp3",
    "vo/taunts/demoman_taunts04.mp3",
    "vo/demoman_specialcompleted07.mp3"
};

const char BunnyPain[][] = {
    "vo/demoman_sf12_badmagic01.mp3",
    "vo/demoman_sf12_badmagic07.mp3",
    "vo/demoman_sf12_badmagic10.mp3"
};

const char BunnyStart[][] = {
    "vo/demoman_gibberish03.mp3",
    "vo/demoman_gibberish11.mp3"
};

const char BunnyRandomVoice[][] = {
    "vo/demoman_positivevocalization03.mp3",
    "vo/demoman_jeers08.mp3",
    "vo/demoman_gibberish03.mp3",
    "vo/demoman_cheers07.mp3",
    "vo/demoman_sf12_badmagic01.mp3",
    "vo/burp02.mp3",
    "vo/burp03.mp3",
    "vo/burp04.mp3",
    "vo/burp05.mp3",
    "vo/burp06.mp3",
    "vo/burp07.mp3"
};

// Unused
//#define ReloadEggModel          "models/player/saxton_hale/c_easter_cannonball.mdl"
#endif

AddToDownload()
{
    /*
        Files to precache that are originally part of TF2 or HL2 / etc and don't need to be downloaded
    */

    PrecacheSound("vo/announcer_am_capincite01.mp3", true);
    PrecacheSound("vo/announcer_am_capincite03.mp3", true);
    PrecacheSound("vo/announcer_am_capenabled02.mp3", true);
    
    PrecacheModel("models/items/ammopack_medium.mdl", true);

    //PrecacheSound("weapons/barret_arm_zap.wav", true);
    PrecacheSound("player/doubledonk.wav", true);
    PrecacheSound("items/gift_drop.wav", true);
#if defined EASTER_BUNNY_ON
    PrecacheSound("items/pumpkin_pickup.wav", true); // Only necessary for servers that don't have halloween holiday mode enabled.
#endif

    PrecacheParticleSystem("ghost_appearation");
    PrecacheParticleSystem("yikes_fx");

    /*
        Files to download + precache that are not originally part of TF2 or HL2 / etc
    */
    
    PrepareSound("saxton_hale/9000.wav");

    /*
        All boss related files
    */

    // Saxton Hale

    // Precache
    // None.. he's all custom

    // Download

    PrepareModel(HaleModel);

    PrepareMaterial("materials/models/player/saxton_hale/eye"); // Some of these materials are used by Christian Brutal Sniper
    PrepareMaterial("materials/models/player/saxton_hale/hale_head");
    PrepareMaterial("materials/models/player/saxton_hale/hale_body");
    PrepareMaterial("materials/models/player/saxton_hale/hale_misc");
    PrepareMaterial("materials/models/player/saxton_hale/sniper_red");
    PrepareMaterial("materials/models/player/saxton_hale/sniper_lens");

    //Saxton Hale Materials
    AddFileToDownloadsTable("materials/models/player/saxton_hale/sniper_head.vtf"); // So we're keeping ALL of them.
    AddFileToDownloadsTable("materials/models/player/saxton_hale/sniper_head_red.vmt");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_misc_normal.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_body_normal.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/eyeball_l.vmt");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/eyeball_r.vmt");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_egg.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_egg.vmt");

    DownloadMaterialList(HaleMatsV2, sizeof(HaleMatsV2)); // New material files for Saxton Hale's new model.

    PrepareSound(HaleComicArmsFallSound);
    PrepareSound(HaleKSpree);

    decl i, String:s[PLATFORM_MAX_PATH];
    for (i = 1; i <= 4; i++)
    {
        Format(s, PLATFORM_MAX_PATH, "%s0%i.mp3", HaleLastB, i);
        PrecacheSound(s, true);
        /*Format(s, PLATFORM_MAX_PATH, "%s0%i.mp3", HHHLaught, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "%s0%i.mp3", HHHAttack, i);
        PrecacheSound(s, true);*/
    }

    PrepareSound(HaleKillMedic);
    PrepareSound(HaleKillSniper1);
    PrepareSound(HaleKillSniper2);
    PrepareSound(HaleKillSpy1);
    PrepareSound(HaleKillSpy2);
    PrepareSound(HaleKillEngie1);
    PrepareSound(HaleKillEngie2);
    PrepareSound(HaleKillDemo132);

    PrepareSound(HaleKillHeavy132);
    PrepareSound(HaleKillScout132);
    PrepareSound(HaleKillSpy132);
    PrepareSound(HaleKillPyro132);
    PrepareSound(HaleSappinMahSentry132);
    PrepareSound(HaleKillLast132);
    PrepareSound(HaleKillDemo132);
    PrepareSound(HaleKillDemo132);
    PrepareSound(HaleKillDemo132);
    PrepareSound(HaleKillDemo132);
    PrepareSound(HaleKillDemo132);

    for (i = 1; i <= 5; i++)
    {
        if (i <= 2)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleJump, i);
            PrepareSound(s);

            /*Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerJump, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerRageSound2, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerFail, i);
            PrepareSound(s);*/

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleWin, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleJump132, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKillEngie132, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKillKSpree132, i);
            PrepareSound(s);
        }

        if (i <= 3)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleFail, i);
            PrepareSound(s);
        }

        if (i <= 4)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleRageSound, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleStubbed132, i);
            PrepareSound(s);
        }

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleRoundStart, i);
        PrepareSound(s);

        //Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerKSpreeNew, i);
        //PrepareSound(s);

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKSpreeNew, i);
        PrepareSound(s);

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleLastMan, i);
        PrepareSound(s);

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleStart132, i);
        PrepareSound(s);
    }

    if (!bSpecials)
    {
        return;
    }

    // Christian Brutal Sniper

    // Precache

    PrecacheSound(CBS0, true);
    PrecacheSound(CBS1, true);
    PrecacheSound(CBS3, true);
    PrecacheSound(CBSJump1, true);

    for (i = 1; i <= 25; i++)
    {
        if (i <= 9)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%02i.mp3", CBS2, i);
            PrecacheSound(s, true);
        }
        Format(s, PLATFORM_MAX_PATH, "%s%02i.mp3", CBS4, i);
        PrecacheSound(s, true);
    }

    PrecacheSound("vo/sniper_dominationspy04.mp3", true);

    // Download

    PrepareModel(CBSModel);

    PrepareSound(CBSTheme);


    // Horseless Headless Horsemann

    // Precache

    PrecacheSound(HHHRage, true);
    PrecacheSound(HHHRage2, true);

    for (i = 1; i <= 4; i++)
    {
        Format(s, PLATFORM_MAX_PATH, "%s0%i.mp3", HHHLaught, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "%s0%i.mp3", HHHAttack, i);
        PrecacheSound(s, true);
    }

    PrecacheSound("ui/halloween_boss_summoned_fx.wav", true);
    PrecacheSound("ui/halloween_boss_defeated_fx.wav", true);

    PrecacheSound("vo/halloween_boss/knight_pain01.mp3", true);
    PrecacheSound("vo/halloween_boss/knight_pain02.mp3", true);
    PrecacheSound("vo/halloween_boss/knight_pain03.mp3", true);
    PrecacheSound("vo/halloween_boss/knight_death01.mp3", true);
    PrecacheSound("vo/halloween_boss/knight_death02.mp3", true);

    PrecacheSound("misc/halloween/spell_teleport.wav", true);

    PrecacheSound(HHHTheme, true);

    // Download

    PrepareModel(HHHModel);
    

    // Vagineer

    // Precache

    PrecacheSound("vo/engineer_no01.mp3", true);
    PrecacheSound("vo/engineer_jeers02.mp3", true);

    // Download

    PrepareModel(VagineerModel);

    PrepareSound(VagineerLastA);
    PrepareSound(VagineerStart);
    PrepareSound(VagineerRageSound);
    PrepareSound(VagineerKSpree);
    PrepareSound(VagineerKSpree2);
    PrepareSound(VagineerHit);

    for (i = 1; i <= 5; i++)
    {
        if (i <= 2)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerJump, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerRageSound2, i);
            PrepareSound(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerFail, i);
            PrepareSound(s);
        }

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", VagineerKSpreeNew, i);
        PrepareSound(s);
    }

    PrepareSound(VagineerRoundStart);

#if defined EASTER_BUNNY_ON
    // Easter Bunny

    // Precache

    PrecacheSoundList(BunnyWin, sizeof(BunnyWin));
    PrecacheSoundList(BunnyJump, sizeof(BunnyJump));
    PrecacheSoundList(BunnyRage, sizeof(BunnyRage));
    PrecacheSoundList(BunnyFail, sizeof(BunnyFail));
    PrecacheSoundList(BunnyKill, sizeof(BunnyKill));
    PrecacheSoundList(BunnySpree, sizeof(BunnySpree));
    PrecacheSoundList(BunnyLast, sizeof(BunnyLast));
    PrecacheSoundList(BunnyPain, sizeof(BunnyPain));
    PrecacheSoundList(BunnyStart, sizeof(BunnyStart));
    PrecacheSoundList(BunnyRandomVoice, sizeof(BunnyRandomVoice));

    // Download

    PrepareModel(BunnyModel);
    PrepareModel(EggModel);
    // PrepareModel(ReloadEggModel);

    DownloadMaterialList(BunnyMaterials, sizeof(BunnyMaterials));

    PrepareMaterial("materials/models/props_easteregg/c_easteregg");
    AddFileToDownloadsTable("materials/models/props_easteregg/c_easteregg_gold.vmt");
#endif
}