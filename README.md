Versus Saxton Hale
==================

The precursor to [FF2](https://github.com/50DKP/FF2-Official).

[Visit the forum thread!](https://forums.alliedmods.net/showthread.php?t=244209)

[![Build Status](https://travis-ci.org/WildCard65/Versus-Saxton-Hale.svg?branch=master)](https://travis-ci.org/WildCard65/Versus-Saxton-Hale)

###For first/fresh installs
Copy the `addons` folder to the server's `tf/` folder.  
The `scripting` folder within is entirely unnecessary unless you are a modder or want to disable the easter boss.  

###For people updating to 1.52
Make sure you are updated to Sourcemod 1.6.3 or greater. v1.50+ is now incompatible with older versions.  
Generally, with Team Fortress 2, Valve updates say you almost always have to use the latest SM snapshots anyway.  

Also be sure to install [TF2Attributes](https://forums.alliedmods.net/showthread.php?t=210221).

TF2Attributes is used for Hale's anchor ability and for giving mantreads their increased jump height.  
If you don't want to use TF2Attributes, simply recompile saxtonhale.sp  
It will only include those features if it's being compiled with the tf2attribute's include.  

Look through the folders inside the `addons/sourcemod/` folder.

The folders necessary to be updated or checked are:
* `plugins/`
* `translations/`
* `configs/saxton_hale/saxton_spawn_teleport.cfg`

configs/, scripting/, don't require updating.

You should never really update configs or scripting if you've changed them, as you'd be reverting them to defaults anyway.

The following files are no longer needed and can be deleted:
* `gamedata/equipwearable.txt`
* `gamedata/saxtonhale.txt`

###To disable the Easter Bunny
Find the line `#define EASTER_BUNNY_ON` in `saxtonhale.sp`, put a ```//``` infront of the ```#define```, and recompile the plugin using include files from a recent snapshot of [SourceMod](http://www.sourcemod.net).

Remember: TF2Items, Sourcemod 1.6.3 or higher, and morecolors.inc are required to be able to compile it, as well as the Steamtools and TF2Attributes includes if you use them.
