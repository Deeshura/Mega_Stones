# Mega Stones
 Adds Mega Stones and Mega Evolution to PMDO. By using a Mega Stone, your team members can Mega Evolve, becoming stronger for a temporary period of time. However, each use of a Mega Stone drains your belly somewhat, so be careful!

## TODO
 * Whirlwind kb effect? Will study. Likely needs to be done with a battlescript.
 * Refine graphics, adding in the Mega Evolution insignia and changing the lightning to a purple color.
 * Implement Ryveriel's inventory icon through font modding. See: adding types tutorial.
 * Add Mega Stones for all Mega Evolutions. Mega Stones for Mega Evolutions without sprites on spritecollab will be marked as unreleased.
 * Find a way to adjust events for Charizardite X/Y and Mewtwonite X/Y to specifically transform into the corresponding form. Not an issue atm because Charizard Y / Mewtwo X are spriteless (and the code skips unreleased forms), but may be an issue down the line. Alternatively, instead of seperate Mega Stones, just have one combined stone and take advantage of the FormChoice menu.
 * Add the Red Orb and Blue Orb for Primal Groudon and Primal Kyogre(? *maybe* out of scope, will check)
 * Localization

## Credits
Inventory and item icons by Ryveriel.

Thanks to Trio- for translating FormChoiceEvent's C# script for calling CancelState into lua, and correcting my syntax.

This project is an addon mod for [PMDO](https://github.com/audinowho/PMDODump). PMDO is Copyright (c) Audino 2021.

Furthermore, special thanks to Audino for adding a boolean to FormChoiceEvent() for temporary forms, and PMDO wiki contributer "IDK"'s articles on [modding moves](https://wiki.pmdo.pmdcollab.org/Creating_Moves) thanks to the useful emitter documentation there.
