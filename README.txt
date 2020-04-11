
hode README
Release version: 0.2.8
-------------------------------------------------------------------------------

PSP port notes:
---------------

It seems that 32MiB of RAM isn't enough to run this game, judging by the following error:
51:19:057 Util/BlockAllocator.cpp:154 E[SCEKERNEL]: Clearly bogus size: 0426a86c - failing allocation
51:19:057 ELF/ElfReader.cpp:442 E[LOADER]: Failed to allocate memory for ELF!
51:19:057 HLE/sceKernelModule.cpp:1179 E[SCEMODULE]: LoadInto failed with error 800200d9
51:19:057 HLE/sceKernelModule.cpp:1652 E[LOADER]: Failed to load module umd0:/EBOOT.PBP

Same results on a real PSP-1000, so this isn't a PPSSPP issue.

Turns out that @cyxx got it working, by disabling SDL and xbr and instead using sceGU

Here is his/her diff: https://pastebin.com/wAsEvZ3L

About:
------

hode is a reimplementation of the engine used by the game 'Heart of Darkness'
developed by Amazing Studio.


Datafiles:
----------

The original datafiles from the Windows releases (Demo or CD) are required.

- hod.paf (hod_demo.paf, hod_demo2.paf)
- setup.dat
- *_hod.lvl
- *_hod.sss
- *_hod.mst

See also the 'RELEASES.yaml' file for a list of game versions this program
has been tested with.


Running:
--------

By default the engine will try to load the files from the current directory
and start the game from the first level.

These defaults can be changed using command line switches :

    Usage: hode [OPTIONS]...
    --datapath=PATH   Path to data files (default '.')
    --savepath=PATH   Path to save files (default '.')
    --level=NUM       Start at level NUM
    --checkpoint=NUM  Start at checkpoint NUM

Display and engine settings can be configured in the 'hode.ini' file.

Game progress is saved in 'setup.cfg', similar to the original engine.


Status:
-------

Settings submenu is not implemented.

PSX datafiles can be used, but menu and videos are missing.


Credits:
--------

All the team at Amazing Studio for possibly the best cinematic platformer ever
developed.


Contact:
--------

Gregory Montoir, cyx@users.sourceforge.net


URLs:
-----

[1] https://www.mobygames.com/game/heart-of-darkness
[2] http://heartofdarkness.ca/
