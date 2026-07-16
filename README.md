<p align="center">
	<img src = "https://storage.modworkshop.net/mods/images/thumbnail_58050_1686064059_c43485e235a73a46508ecfd041769e14.webp" alt = "mod logo">
</p>

<p align="center">
	<a href="https://github.com/rockymoto517/BetterBalancedRebalance/actions">
		<img src = "https://img.shields.io/github/actions/workflow/status/rockymoto517/BetterBalancedRebalance/release.yml?branch=main"> </a>
	<img src = "https://img.shields.io/github/repo-size/rockymoto517/BetterBalancedRebalance">
	<a href="https://github.com/rockymoto517/BetterBalancedRebalance/releases">
		<img src = "https://img.shields.io/github/downloads/rockymoto517/BetterBalancedRebalance/total"> </a>
	<a href="https://raw.githubusercontent.com/rockymoto517/BetterBalancedRebalance/main/LICENSE">
		<img src = "https://img.shields.io/github/license/rockymoto517/BetterBalancedRebalance"> </a>
	<a href="https://github.com/rockymoto517/BetterBalancedRebalance/releases/latest">
		<img src = "https://img.shields.io/github/v/release/rockymoto517/BetterBalancedRebalance"> </a>
</p>

----
- [Perk Deck Changes](#perk-deck-changes)
- [Skill Changes](#skill-changes)
- [Weapon Changes](#weapon-changes)
----

Better Balanced (Vanilla) Rebalance is a lightweight rebalance mod that addresses the base game’s issues of player side balancing without going overboard. The mod's main point is to address the perk deck balancing. Weaponry changed very little, mostly to address a few specific problems that are a result of power-creep and misuse of Damage Range Multipliers.

-----

The mod does not make the game fully balanced on all levels, in a game like payday 2 that isn’t even necessary. The main reason for this mod's existence is to reduce the power creep and streamline perk decks without altering the vanilla game’s feel or player’s expectations. Kinda like *polishing a turd* if you will. What is strong in the vanilla game continues to be strong, what’s weak stays weak, although the power levels of pretty much everything is scaled back or scaled up to fit into the roles players have figured out from years of playing, especially when it comes to perk decks. Some nuances of some of the perk decks are lost as a result of this, such as yakuza and infiltrator but the end result is better consistency in what decks offer.

-----

There are principles for the mod’s are:
1. No matchmaking lock, people should be able to just hop into regular games and not positively or negatively affect other players. This eliminates the possibility of enemy side changes.
2. No changes are allowed that could potentially mess with savefiles; these include locking weapons behind skills, removing options such as ammo types or modifications, changing the placement of skills etc. Should you not like the mod, you should be able to get rid of it in a non-destructive manner.
3. Only the bare minimum needs to be done to address balance concerns, no new mechanics or unnecessary changes **unless** there are issues that can’t be solved with what the base vanilla game offers.
4. Think like an actual developer and assume you will get death threats if something goes wrong. This further eliminates the possibility of removing problematic content.

These principles are set to keep the changes inline with the vanilla game as best as it can be.

Below are the changes with reasonings given should you wish to read it. If not, you can just download the mod and check the changes yourself, perk deck changes are localized (English only) and weapon changes can be seen with mods like “More Weapon Stats”.


-----
# Perk Deck Changes


1. Streamlined perk deck categories

Starbreeze making a new menu to put perk decks into categories for playstyles was a neat idea, the problem is that the vanilla game categories are nonsense. No one really knows what aggressive, defensive or versatile means. Instead of that, the existing perk decks are put into gameplay bonus related categories. The new categories are “Health”, “Armor”, “Dodge”, “Support” and “Stealth”. The naming convention for the categories is pretty self-explanatory.


The perk deck at the start of each category is a strong and simple way to get into the said playstyle advertised by the category name and going down on the list makes effects more niche or more extreme. This is less of a major change but rather new packaging of existing content.


2. Rebalancing and Re-designs

Some decks are OP and some are useless. The issue here is that the varying power levels allows players to pick and choose the level of power they want out of a build which is common in DS and casual player circles. Total rebalance of all the decks to be as close to each other in terms of power level would rob players of this choice. So the way to address this issue at least for us was to reduce and remove feature creep of some of the decks and make less consistent options more consistent without hugely altering the power gap between the decks. Re-design of decks is done for only 3 decks in the game, because of factors such as redundancy in the perk deck sandbox, broken functionality or unbalanced mechanics.


-----

**Health Decks**


**Muscle**

Changes:

1. Removed 15% more targeting and replaced it with copycat's 2 second god mode.

Reason: Targeting isn’t a mechanic that is understood by players and doesn’t actually add or remove much of anything from any deck in practice. Getting a “safety net” feature for the start of the health category with a god-mode mechanic makes much more sense since any other health deck you choose will come at the cost of this ability. God-mode also allows aggressive plays with unsilenced weapons with better reliability for triggering panic, which is another reason this change is made because 15% targeting doesn’t matter if a loud gun is fired since that always has higher priority in the eyes of the AI. This is essentially replacing a blank card with something deck appropriate. Otherwise the deck is unchanged.

**Infiltrator**

Changes:

1. Removed the bulk of the damage reduction in favor of 60% health and 10% more armor.

Reason: Conditional benefits that rely on enemy behavior is a slippery slope. Technically speaking the vanilla Infiltrator is insanely tanky but sometimes it isn’t. This change was more of a streamlining choice for a more consistent performance for the best way to use infiltrator currently exists in the vanilla game, that being 2 shot armor and health hybrid setup. This change does take away some of the nuances of the deck such as the ability to tank 3 armor shots with specific setups or knowing how to get cops to target you to get the benefits, but it does reduce the frustrating moments you can have with the deck’s own functions down to zero. Melee related bonuses are unchanged.

**Grinder**

Unchanged: No broken functionality or balance problems.

**Biker**

Changes:

1. 3 second timers for the Prospect
2. 80% extra Health
3. Ability to regenerate throwables by picking up ammo boxes

Reason: Biker is a tough one to fit into a framework like this as it has bonuses for both health and armor(I have a hierarchy for which bonuses are important to get into a category so putting it in health wasn’t hard) and the initial idea I had for it is scrapped for reasons you will understand once we get to Gambler. 

The initial idea was to be a support deck that grants movement speed bonuses and reloads the unequipped weapons of the teammates when you reload if your teammates are close to you. There were issues with implementation for these ideas; they didn’t really work and the reload mechanic required networking stuff which are hard to do, prone to crashing and can cause issues for non-modded users as you are sending data their games don’t understand. Another idea was to give it a damage clamp/gate mechanic which was okay but the way I wanted to implement it would require HUD changes, considering that many modded users use custom HUDs that was a no-go. So I just gave up and gave it the Jules™ treatment with a health buff that matches in shots to take from the damage clamp/gate idea. Prospect alone wasn’t unique enough for the deck to stand out in its functionality so I just gave up and gave it throwable regeneration as that sounded the least amount of work for an interesting effect. This is bad design on my part but Biker took years of fucking around with different ideas and I just don’t care anymore.

**Kingpin**

Unchanged: No broken functionality or balance problems.

**Stoic**

Unchanged: No broken functionality or balance problems. The name doesn’t fit into the game’s perk deck naming convention of giving the decks criminal types of name but the deck is old enough that changing the name would cause riots.


-----

**Armor Decks**

**Armorer**

Unchanged: No broken functionality or balance problems.

**Hitman**

Changes: (Re-design)

1. Anarchist armor mechanics (135% more armor, no two second god mode)
2. 20 kills for 5 seconds infinite ammo, a sound que plays when this skill triggers
3. Armor refill on break with 15 second cooldown

Reason: Hitman and Yakuza are the game’s "challenge" decks, as they don’t provide meaningful bonuses for survivability. As Yakuza is more known for this status so this put Hitman in a state of redundancy and warranted a re-design. The idea was to make the deck follow the cadence of John Wick movies where the shootouts are interrupted by hand-to-hand combat scenes. This downtime can be forced via the game’s armor system, forcing players to slow down to not take damage to their health while the armor regenerates on a long timer. The issue was that this was really punishing, there needs to be some amount of armor given back to players every now and then and Anarchist works exactly like that. So we just reused Anarchist’s armor mechanics but instead of 2-second godmode, Hitman has a 15 second cooldown to completely refill its own armor pool upon an armor break. This refill doesn’t happen instantly so positioning still matters as well as keeping that armor up between refill cooldowns. The ability was strong but not strong enough to keep the deck usable without too much friction when it comes to user experience so armor amount given got buffed from “less than anarchist levels as i thought the refill ability would be pretty strong” to “more than what anarchist has”. Because armor refill is an independent ability from Anarchist’s regen timer, it opens up more armor variety for Hitman than what Anarchist can usually get away with.

The infinite ammo skill was an attempt at modernizing the akimbo bonuses the deck provides, the issue is that balancing infinite ammo is next to impossible, so the ability is pretty limited in uptime. A better solution would be to replace this with copycat’s unequipped weapon reload but that sounded much less interesting in my mind. Still, infinite ammo is infinite ammo, you just gonna have to time it to get value.

**Sociopath**

Unchanged: No broken functionality or balance problems.

**Yakuza**

Changes:

1. Same armor and movement speed bonus
2. 80% faster weapon swap speed
3. 9th card gets rid of the lower HP requirement for the decks effects, making it active all the time
4. Also put into the “Stealth” category in the perk deck menu

Reason:
The changes are made mainly for the stealth players, making that side of this deck’s gameplan a bit smoother. For loud, changes made to the deck doesn’t matter as much despite losing the ability to not have any effects active at all should you go for an health build. The changes were mostly streamlining decisions for stealth gameplay without negatively affecting the challenge deck status of the deck for loud players. Faster movement without the hp scaling allows stealth players to not bother with molotovs, which is a lost of nuance a bit, faster weapon swap speed is to allow stealth players to use the weapons for tiny optimizations some hardcore stealth players think about like pistols having a shorter cooldown for bag carry cooldown compared to other weapon types etc… 

**Anarchist**

Unchanged: No broken functionality or balance problems. Okay maybe a tad bit OP but whatever it is fine in the vanilla game’s gameplay.

-----
**Support Decks**

**Crew Chief**

Unchanged: No balance problems. Functionality wise it is broken but fixes don’t carry over to non-modded clients anyways.

I have issues with the design of the deck, that being rewarding the entire team for simply one player existing but the redesign I had in mind didn’t work. Technically the deck itself isn’t unbalanced despite issues I have with it with its design and with the exception of overly rewarding decks with extreme bonuses because it works with %. Not much can be done about it within the mod’s context so it was left alone.

**Gambler**
Changes: (Re-design)

1. Ammo pickup to health and ammo system is replaced by a pool system we call "pot"
2. Panic on kills similar to Sociopath

Reason: I have tested the vanilla Gambler extensively and I couldn’t find an indication of its last two cards working which suggested broken functionality. On top of that the deck’s gameplay of picking up ammo to get health and support felt counterintuative with its cooldown, punishing picking up stacks of boxes. This warranted a re-design in my mind to make the effects more coherent.

The pot system fills with kills and ammo pickups alike, once the pot hits 20, this heals the user and regenerates a % of the team’s ammo. Panic on kill is meant to give uncertain openings to maybe hopefully push people into dangerous situations to pick up ammo to fill the pot faster, kinda like gambling with your life. The health regen for teammates is removed from the deck, instead the deck exclusively supports the team in their ammo economy. The vanilla effect of picking up ammo to give ammo to teammates is still in effect and the pot system can regenerate ammo you normally can’t pick up like rockets, arrows and darts. The re-design is technically less powerful in terms of self-healing than the vanilla game, but the pot system is more interesting and convenient.

There are caveats for Gambler for its functionality that is the result of this being a mod. In order for the pot system to regenerate your team’s ammo, your teammates also need to run the mod. Similarly, non-modded clients that use gambler won’t make use of the pot system to regen your ammo since their version of gambler is using different “upgrades” compared to your modded game. The deck was a pain in the ass to make it as functional as possible within the constraints set for the mod, and the pot ability required networking stuff to make it functional for teammates, hence why Gambler is the only one of its kind in this mod. Biker was also going to be a support deck but issues such as networking support stuff made me hesitant on further pursuing things like that.


**Maniac**

Changes: 

1. Extra hysteria gain timer

Reason: Maniac is an underrated deck. We did this to let you get the same value out of the deck with less time spent. This doesn't address the common complaint about this deck, that being its inconsistent nature entirely, but off-sync timers adding the subtracting DA is a great bit of characterization for Jimmy, who happens to be a coke-head clone of a mad scientist.

Please note that the vanilla game now supports a slower decay on Maniac three years after this mod came out, which is a different way to solve its consistency issue without hindering the characterization aspect of the deck. Good to know that the current dev team is aware of the pain-points for players in niche decks like these.

**Tag Team**

Unchanged: No broken functionality or balance problems.

**Leech**

Changes: (Redesign)

1. Removed Self-Revive
2. Removed Health Bonus
3. Removed damage over 200 taking away 2 chunks. Now you will only lose 1 regardless of damage taken.
4. Taking damage during the ampule effect now heals teammates for 20% of their HP
5. 40% faster weapon speed
6. Renamed to “Triad”

Reason: Leech’s ability to self-revive is impossible to balance around, and Starbreeze gutted the fun aspects of the deck from its release state to justify this ability. The longer cooldowns, losing multiple chunks just to keep that self-revive greatly hindered the deck’s functionality and fun factor while still being one of the most OP decks in the game. Self revive had to go for this deck to have any chance at being balanced and fun.

We got to this redesign through iteration. First order of business was to revert leech to its release form but without the self-revive. It was still a bit too strong so the health bonus was removed on top. This was fine and made the ampule effect power more justifiable as well as forcing players to be more careful when the effect ended because you no longer have  a beefy HP bar to tank shots once the effect ends, so you have to get back to cover once all is done. An element of strategy of using the ampule basically, the issue was that the gameplay was “Kingpin lite” that didn’t feel as distinguishing as it can be in its gameplan. This gave me the idea for its team-mate healing ability of the deck so we doubled that. You will always heal your teammates more than the damage you took during the ampule, so it further introduces a tactical element for the deck. Aggressive plays and its insane support ability are tied to the same equipment and the same cooldown, it is up to the players to decide how to use it during the game. You can use the ampule to clear an area but that means your teammates aren’t getting as much healing, or you can stagger kills for self-healing to take damage to provide HP regen to the team, or a bit of both during the effect. Weapon swap speed bonus is to further facilitate aggressive plays with the deck as if you run out of ammo on a slow reloading gun, you can just swap and continue to deal damage during the ampule.

The name changed because “Leech” doesn’t follow the game’s own perk deck naming conventions of naming the decks after a type of criminal. Leech isn’t the only deck that strays away from this rule but most other decks are old enough that changing the name of it would cause more alienation than this one. This isn’t necessary for balancing obviously but Leech as a name bothered me ever since it come out.

The caveat is that, in order for your teammates to receive the buffed healing of this mod, they need to run the mod as well. Unlike Gambler, un-modded clients using Leech will heal you 20% of your HP because the functionality was already there in the vanilla game, the numbers is what got tweaked.


-----
**Dodge Decks**

**Rogue**

Unchanged: No broken functionality or balance problems.

**Crook**

Changes:

1. Extra +20 armor to ballistic vests with its 9th card

Reason: To increase the variety in its builds. Vanilla Crook has 2 distinct build possibilities for DS, that being using it with LBV as a worse Rogue or Using it with HBV with a specific skill combo for two shot armor. One is outclassed and the other one is expensive on the points. I wanted all the ballistic vest options to be usable with trade-offs and +20 armor does exactly that. Now there are several ways to build the deck, all of which comes with different opportunity costs. As an example; you can run the vanilla game style builds with it, but also you can opt out from frenzy and get quick fix aced for 2 shot armor and health with HBV, your armor’s effectiveness is now on a timer, or just get basic frenzy for 8 points less or ace it but use BV etc… More variety was all this deck needed and we did exactly that.

**Burglar**

Changes:

1. Extra 5 concealment to your armor

Reason: Burglar for loud is just worse than Rogue and for stealth it is outclassed. I wanted this deck to have something unique for itself that would work for both stealth and loud, conveniently the game has a concealment system that is useful for both styles of play. 5 extra concealment is just enough to get under 5 DR with a saw for stealth and for loud, you can do funky Low Blow builds with it if you want to.

Another way this could have been done was to introduce faster interactions as a perk but I felt like that would potentially introduce more issues than a concealment bonus.

**Ex-President**

Changes:

1. 5 extra dodge
2. Bigger ICTV HP

Reasons: +5 dodge was to facilitate its place in the dodge decks list, a bigger ICTV pool was asked but it doesn’t matter that much.

**Sicario**

Changes:

1. Cooldown of the smoke grenade starts as soon as you use it

Reason: To make the decks cooldown consistent with other decks with throwable abilities. This exact change has been added to the Vanilla game 3 years after the mod’s release.

**Hacker**

Changes:

1. Removed teammate healing
2. Removed extra health

Reason: Since we didn't want to touch the power scale of the perk decks, we decided to reduce this deck's feature creep. Hacker stays being OP thanks to the feedback effect and that can’t be changed with the mods without causing issues for clients or crashes. Kinda like leech having self-revive, Hacker needs to shed the feedback effect in order to get into a balanced and fun state.

I think the biggest issue with the feedback is that it is boring to have it be readily available, I think pocket ecm should not have a feedback effect, but rather work like Zapper Nade explosion skill in Payday 3. Activating the effect, getting a kill to get an electric explosion within a radius sounds more fun then “I pressed a button and enemy AI has to stop shooting me for a year and a half”. The specifics don’t matter since the mod actually doesn’t change this at all lol.


-----

**Copycat**

Changes:

1. Reduced the HP bonus of its first 4 cards to 15%
2. Reduced the Burglar card's dodge bonus to 15%
3. Changed the name to “Con Man”

Reason: Copycat is feature creeped and bloated. These two options alone outclass way too many unique decks. Once again the power level of it isn't changed considering all the other benefits you get with the thing, but that was our intention with the perk decks as a whole anyways. The name got changed to be more inline with the game’s perk deck naming conventions.

# Skill changes
The list is small for this one
1. Iron man basic can remove the movement speed penalty from Rocket Launchers
2. Trigger Happy aced gives run&gun and enemy penetration to pistols
3. Counter Strike aced now gives the Sociopath’s Overdog melee damage skill
4. Rifleman aced gives +16 accuracy to all weapons

# Weapon changes
Weapon changes are subtle, most of the changes are basic with only the shotguns getting a major re-design. The main reasons for most of the changes are;
1. Reducing friction points resulted from Damage Range Multipliers
2. Reducing power creep
3. Making targeted changes to problematic mods or weapon classes to give them uses or reducing their effectiveness

Weapon changes won’t have elaborate reasonings for them written down to the page as most of the changes can be explained by the principles listed above.


-----
**Misc Changes**

1. A better Flamethrower Raycast that allows for body and corpse penetration
2. Conditional reload speed skills not applying to single fed guns is now fixed
3. Shotgun raycast changes to make shock and awe aced more satisfying


-----

**Weapon Mods**

1. Weapon sights are given different stats that already exists within the vanilla game, just distributed;-1 concealment +4 stability, -1 concealment +4 accuracy, -4 stability
2. Medium suppressor's damage penalty is removed, +4 accuracy
3. Standart suppressor for pistols now match medved r4's stats
4. Military Laser Module now gives +4 accuracy
5. A car magazine is changed to be more in line with speed-pull magazine
6. A car grip now gives +2 concealment
7. A secondary sight now gives +1 concealment 
8. An ak grip is given +8 accuracy and stability at the cost of concealment


-----
**ARs**

1. Commando 553's weapons mods are changed to be more inline with the vanilla game's attachment balance (base game changed this recently in 2026, but what we done is more inline with the base game)
2. Lions Roar's base concealment is nerfed to 7
3. AK-17's base concealment is reduced to 6
4. Total ammo for Eagle Heavy is increased to 120
5. KS-12 got slightly better handling
6. Golden AK is now a KS-12 sidegrade
7. AK 762 now has extra 2 concealment
8. Radion 3b's volley no longer one tap heavy units, in exchange it now penetrates shields
9. Giving players a one tap option with zero downsides undervalues the other DMR options that this gun competes with
10. Little friend and Ketchnov are LMG's now (These are the only changes that i made cause i thought it would be funny, this goes against the mods principles but can’t compete with funni)
11. Bootleg's barrel now gives more accuracy at the cost of concealment
12. M308 abraham stock now gives 10 concealment at the cost of reduced handling
13. B-Team stock now matches abraham stock 1-to-1
14. Car-4 stealth barrel now matches short barrel+bigger the better suppressor combo


-----
**SMGs**

1. Akimbo SMGs total ammo values are dialed back
2. New Fall off presets for Akimbo SMGs that dials their power back
3. Removed Fall-Off from secondary SMGs that don't have access to speedpull magazines or otherwise have unique strengths.

**Specific SMG changes**
1. Damage buff of update 220 of compact 5 and signature has been reduced
2. Cobra has given +12 extra base accuracy
3. MP40 is adjusted to be a uzi sidegrade


-----
**Pistols**

1. Fall-off is removed from most pistols, exceptions are automatics and some of the AP pistols
2. Trigger happy aced now gives run & gun and enemy penetration to pistols. (No you can't penetrate shields, only enemies)

**Specific Pistol changes**

1. Crosskill, Parabellum and Peacemaker now has AP rounds
2. Applies to akimbos if available, stats adjusted slightly as a result
3. Rus-12 and Peacemaker can now one-tap heavy units, their total ammo and accuracy values are adjusted to hit into their roles
4. Crosskill chunky can now reach 34 concealment, stats are adjusted as a result
5. Matever now has 26 concealment and a faster reload
6. Frenchman now has Kahn ammo pickup
7. Castigo is changed to be more in line with frenchman
8. Welrod is given increased damage and full AP


-----
**LMGs**

1. Fall-off is removed from m60
2. Versteck total ammo is reduced to 120, its ads kick values now mimics its standing kick value
3. Campbell's handling and concealment is reduced, flamethrower attachment no longer reduces handling
4. KSP 58 is now closer in handling to KSP
5. Akron is changed to be a KSP/RPK hybrid with its own unique downsides
6. Exclusive set's ammo economy is now closer to bootleg
7. DMR kit no longer has damage fall-off
8. Heavy duty dmr option with better ammo economy, at the cost of not being able to benefit from single fire skills
9. Hailstorm got a better fall-off preset and better ammo economy


-----

**Snipers**

1. Removed extra damage at range from following guns;
* Contractor
* Grom
* Rattlesnake
* R700

2. Kick values for contractor and grom are increased
3. Lebensauger and kang arms swapped total ammo values
4. Rattlesnake's suppressor option no longer reduces damage
5. Desert Fox total ammo is reduced to 25


-----
**Launchers**

1. Grenade launcher ammo type changes
2. Viper now reduces ammo pickup by 0.9
3. Tazer and Fire grenades no longer has an ammo pickup penalty
4. Commando 101 is now a grenade launcher
5. Rocket launchers reduce movement speed; Iron man basic negates this downside

Note: Most of the launcher changes had to be axed because of new updates forcing sync and making things that were previously client authoritative, enforced by the host.


-----
**Shotguns**

Shotguns in vanilla payday 2 have infinite range. This causes way to many problems. Some shotgun setups are unironically sniper rifles that can't miss while killing everything with little effort while others feel terrible. I increased their close range effectiveness at the cost of cutting this infinite range issue. Shotguns aren't sniper rifles. Sniper rifles have one job, that being crowd dps while shotguns are a crowd dps/utility/combo hybrid. There are no reasons why shotguns should play at the ranges snipers do considering you can get different values with shotguns depending on what you want to achieve. The new Fall-off presets are closer in principle to the Pre-Damage Range Multiplier era where there is a hard cap on the range of the damage, but now that range varies depending on the shotgun type.

1. New shotgun raycast for shock and awe
2. New presets that cut the infinite range out of the equation while increasing close range effectiveness
Worse the shotgun is, better range it has. This means Akimbos and mag feds have lower range than something like a pump action. Fall-off is linear and starts after the max damage range and ends after max range. You can no longer deal damage after max range.
Akimbos 10m max damage range, 30m max range
Mag feds 15m max damage range, 40m max range
Tube feds 20m max damage range, 40m max range
Pump actions 25m max damage range, 50m max range
Double barrels 30m max damage range, 60m max range

**Shotgun ammo type changes**

1. Buckshot changes from recent updates has been reverted as buckshot has competition from other ammo types in this mod for most of the shotguns due to the way the new fall-off presets work
2. Flechette now increases close range effectiveness less, but will extend your max range
3. Starbreeze didn't actually put a far range multiplier since there is no point extending infinite range.
4. AP slugs now give +16 accuracy
5. Dragon's breath range is reworked entirely
6. More spammy the shotgun is, lower the dot ignite range; DB ignite ranges are 10m for mag feds, 15m for tube feds, 20m for pump actions and 25m for double barrels.

Note: Tombstone changes had to be axed because of new updates forcing sync and making things that were previously client authoritative, enforced by the host. It won't crash but just don't use it ig cause balance wise it is unaccounted for.

**Pellet count streamlining**

* 6 per each gun for akimbos
* 12 for primaries
* 10 for secondaries

**Specific shotgun changes**

1. Izhma total ammo is reduced to 66
2. Steakout total ammo is increased to 88
3. Concealment of VD-12 and Steakout is set to 1
4. Street Sweeper, Predator and M01014 now reloads slightly faster
5. Predator is now closer to damage output of VD-12
6. Reinfeld 880 and Mosconi Tactical swapped damage values
7. Argos 3 and Locomotive swapped damage values


-----
**Bows and Crossbows**
1. Enabled ammo pickup for DECA and English Longbow to be used with explosive arrows. These two are the only ones that get a change from this mod as other options have niche uses while these two don’t.


-----
**Melee Weapons**
1. Most Melee weapons now mimic the stats of Ice Pick or Katana


# Credits
* **Rockymoto** Doing the heavy lifting
* **Hoppip** For making a convenient hook system
* **Cpone** and **Kuziz** For making A better Flamethrower Raycast
* **Nikita** For shotgun shock and awe raycast
* **iuhggiuhhgbnr** and **Dr.Newbie** For letting me know that custom projectiles do work for clients
* **Killy** for conditional reload speed fixes not applying
* **5thTier** for “Only Meta Melees” mod as I just took that and added the missing stuff from new updates into it

**Speacial thanks to all of our beta testers**

* *NotYourAvgStalin*
* *0lafe*
* *Scrungofan3.0*
* *TARE104KA*
* *Pridumalsam*
* *Hitscanner*
* *Dorpenka*



