<p align="center">
	<img src = "https://cdn.discordapp.com/attachments/879810632336179291/1107990954369101904/modlogo.png" alt = "mod logo">
</p>

<p align="center">
	<a href="https://github.com/rockymoto517/BetterBalancedRebalance/actions">
		<img src = "https://img.shields.io/github/actions/workflow/status/rockymoto517/BetterBalancedRebalance/release.yml?branch=main"> </a>
	<img src = "https://img.shields.io/github/repo-size/rockymoto517/BetterBalancedRebalance">
	<a href="https://github.com/rockymoto517/BetterBalancedRebalance/releases/tag/Release">
		<img src = "https://img.shields.io/github/downloads/rockymoto517/BetterBalancedRebalance/total"> </a>
	<a href="https://raw.githubusercontent.com/rockymoto517/BetterBalancedRebalance/main/LICENSE">
		<img src = "https://img.shields.io/github/license/rockymoto517/BetterBalancedRebalance"> </a>
	<a href="https://github.com/rockymoto517/BetterBalancedRebalance/releases/tag/Release">
		<img src = "https://img.shields.io/github/v/release/rockymoto517/BetterBalancedRebalance"> </a>
</p>

# An honest to God attempt at fixing player-side balance and design issues

There are no lightweight single folder mods that attacks the base game issues while keeping the game true to vanilla. It doesn't help that most people don't even understand what the issues are. The way we attacked the issues are simple; we excluded enemy side and kept that one element as is. There are more reasons for behind this decision. The short answer is; we are just two people and making meaninful changes would take years, changes made to enemy side would require a matchmaking key since everything about the enemy side design and balance needs to be change, it is redundant when resmod, strealined heisting and eclipse exists, and lastly enemy side is 80% of the vanilla game's feel, change that and the game will change alongside it.

-----

All we ever did is to just try to polish up and fix issues caused by years of incompetence. We did this by working on things Starbreeze neglegted the most. The focus of this rebalance was perk decks, weapon changes are made mostly to fix some of teh design and balance issues the guns face in todays enviroment. What the issues are listed in different sections that are relevant to the thing that changed.

-----

Most of the features works on client side, there is no seperate savefile or matchmaking key. We wanted the mod to be as uninvasive as possible while solving some of the major issues.

----

- [Perk Deck Changes](#perk-deck-changes)
- [Weapon Changes](#weapon-changes)
- [Plans/FAQ](#ongoing-plans-and-disclosed-changes-section)

-----
# Perk Deck Changes
Perk decks suffer from neglect and poor balancing. Aside from buffing muscle and introducing two new perk decks that have their own issues, Starbreeze did nothing with their sandbox. Here is a list of issues we were able to spot when it comes to perk deck sandbox:
* Perk deck categories don't make any sense and vague
* Most of them are redundant and don't add much to the game
* Power gap between good ones and the bad ones are comical
* Some have issues with broken skills and functionality

We wanted to adress these issues while keeping the power level of the perk decks same. As unbalanced as Payday 2 perk deck sandbox is, it still offers players a choice; Do you want to have a piss easy time or do you want the dark souls of heisting games? Making perk decks' power as close to each other would take away this form of player expression. As a result, we tried to close the gap between perk decks without changing their powers. We did this by trying to reduce their feature creep, nerfing some of the overpowered ones slightly and buffing  the weaker ones slightly with different abilities.

# Here are the perk deck changes

Better perk deck categories:

![](https://cdn.discordapp.com/attachments/967843418208366672/1115697746582712360/image.png)

**Health Decks**

Muscle
* Removed 15% more targeting
* Replaced by copycats 2 second god mode

Targeting buffs and debuffs only work when player is not actively shooting, aka not playing the game. Besides muscle panic requires loud guns, which has higher priority anyways. It was a filler skill that did nothing hence why it is replaced. ~~Besides i am not racist so black guy isn't the first one to get shot first.~~ Another thing we changed to allow more variety when building handling for weapons is rifleman aced. Now Rifleman aced give +16 accuracy when moving to every gun.

Infiltrator
* Removed the bulk of the damage reduction in favor of 60% health and 10% more armor

Infiltrator is actually an ok deck. The problem is that the targeting bonuses work differently between host and clients. Husk AI can target the same client multiple times, which means infiltrators bonuses will be full time all the time. This changes when the deck is used by the host, causing a jarring inconsistency. Since we are not touching enemy AI, this is the only solution. With the health bonuses, infiltrator fits into the health decks snuggly too. The small armor bonus work for higher and lower armors alike.

-----

**Armor Decks**

Yakuza
* 80% swap speed
* 9th card is moved to the first one
* 9th card now reduces your health when paired with frenzy

Yakuza is the go-to option for people that just wants to have a hard time from time to time, I respect that hence why it isn't entirely redesigned. Yakuza is just a relic, unchanged ever since its been put into the game. What we did is just QoL improvements to make the deck less pain in the ass. Swap speed bonus is meant to go hand in hand with the speedy but fragile enforcer playstyle this deck promotes while lower hp bonus is meant to let you get the deck's middling benefits with less work.

Hitman
* Anarchist armor mechanics (135% more armor, no two second god mode)
* 20 kills for 5 seconds infinite ammo, a sound que plays when this skill triggers
* Armor refill on break with 15 second cooldown

Hitman is just another yakuza. The initial idea was to not let it regenerate armor unless it is broken with a huge armor bonus. The problem with that was it was incredibly broken and abusible, hence why we went back to anarchist armor mechanics. I was already using the anarchist armor mechanics with longer timers to pull that off anyways so it wasn't a big issue (this was before production so to speak). The infinite ammo skill is meant to modernize the akimbo bonus that is entirely redundant in today's enviroment. Armor refill on cooldown and extra armor does open up different armor choices besides suit, which gives it some insane build diversity. Since the deck doesn't have godmode, your positional mistakes gets punished hard on DS. Infinite ammo tends to be hit or miss but when it rains, it pours.

-----

**Support Decks**

Leech
* Removed Self-Revive
* Removed Health Bonus
* Removed damage over 200 taking away 2 chunks. Now you will only lose 1 regardless of damage taken.
* Better teammate healing
* 40% faster weapon speed

I actually typed 1200 word essay about this for the mod page but I am removing it cause of the clutter.

Biker
* Removed the bulk of the timer related effects
* 10% extra health and armor
* You can grant a speed boost that stacks with inspire basic to your teammates that also has the mod

Biker's cards are mostly flavour text. First one is the only one that matters. It is a blank canvas that we can do whatever we want with it so we decided to turn it into a objective oriented support deck. If you need to move bags, assist the ~~chicken~~ ICTV players cross the road or prepare your hacker player for the biggest ecm push they has ever done, this will be the go-to option. Sadly the speed boost only works on people that have the mod, hence why it has extra cooldown, health and armor bonuses to aid the deck. For players without the mod, biker is a deck that just exists in this game anyways.

Maniac
* Extra hysteria gain timer

Maniac is an underrated deck. We did this to let you get the same value out of the deck with less time spent. This doesn't adress the common complaint about this deck, that being its inconsistent nature, but off-sync timers adding the subtracting DA is a great bit of characterization for Jimmy, who happens to be a coke-head clone of a mad scientist.

Gambler
* Ammo pickup to health and support system is replaced by a pool system we call "pot";
	* Pot fills with kills and ammo pickups alike, hitting 20 will heal 20% of your health, replanish 10% of your ammo and 5% of your teammates ammo. If your teammates don't have the mod, vanilla ammo pickup to share ammo is used instead. When the pot is filled, a sound que plays.
* Panic on kills
* Same health bonus of 40%

Gambler has too many problems. First of all, last two unique cards don't even function. Secondly, running out in the open without high dodge, godmode or some other ability to pick-up ammo just to get the deck to function has always been a bad idea even when it was introduced. Thirdly, cooldowns means picking up ammo is also limited so what's the point? Why run out in the open to get a middling benefit? So you don't and end up using a different support deck. As a result of all of that, gambler is entirely redesigned to give better in-game agency to the user. Even its card names are changed to be more in line with deck's name. This "pot" system solves all of that. Sure you will get 20 kills eventually, but ammo pickups speeds the process **alllottt**, adding a risk vs reward situation to the players hand, which means more player agency, which means making engaging choices based on the game-state, which means more fun. Panic is meant to give you more openings for that risky plays you may or may not wanna take, while letting you take off some heat from your and your team's back.

-----

**Dodge Decks**

Ex-President
* 5 extra dodge to facilitate its place in the dodge decks list
* Bigger ICTV HP pool cause its been asked, i didn't plan for it but i am not gonna object to a request that makes little difference.

Burglar
* Extra 5 concealment to your armor

This bonus works in stealth and loud and it is meant to differentiate burglar from the crowd. Burglar has nothing going for it but this gives more options to variety players when it comes to making the most ridiculous low blow based build.

Sicario
* Cooldown starts as soon as you throw the smoke grenade

This change is made cause sicario is the only perk deck with this quirk that never made sense. I tried other changes but all of them made the deck less intresting so I will keep the rest as is.

Crook
* Slightly more armor

This is done to give more options to crook when it comes to armor choices. Crook badly suffers from not having enough build variety so we aim to fix that. Two shot armor builds are available with all of the crooks armor choices tho some will be less consistent than others while keeping the point cost more or less the same as the vanilla game.

Hacker
* Removed teammate healing
* Removed extra health

Since we didn't wanted to touch the power scale of the perk decks, we decided to reduce this decks feature creep. I wanted to change the pocket ecm to trigger the feedback once, but that has a potential to cause horrible desync issues or not work at all so this is gonna have to suffice.

Copycat
* Reduced the HP bonus of its first 4 cards to 15%
* Reduced the Burglar card's dodge bonus to 15%

Copycat is feature creeped and bloated. These two options alone outclass way too many unique decks. Once again power level of it isn't changed considering all the other benefits you get with the thing, but that was our intention with the perk decks as a whole anyways.

-----

# Weapon changes

Entirely new fall-off presets to fit into the categories a bit better. I also did my best to reduce the power creep between options that is a result of balance changes and newer DLCs.


-----
**Misc Changes**
* A better Flamethrower Raycast that allows for body and corpse penetration
* Conditional reload speed skills not applying to single fed guns is now fixed
* Weapon sights are given different stats that already exists within the vanilla game, just distributed
	* -1 concealment +4 stability, -1 concealment +4 accuracy, -4 stability
* Medium suppressor's damage penalty is removed, +4 accuracy
* Standart suppressor for pistols now match medved r4's stats
* Military Laser Module now gives +4 accuracy
* A car magazine is changed to be more in line with speed-pull magazine to add more visual variety
* A car grip now gives +2 concealment to give more visual variety
* A secondary sight now gives +1 concealment to give more visual variety
* An ak grip is given +8 accuracy and stablity at the cost of concealment


-----


**Rifles**

Rifles don't have a design issue and some of the overpowered ones are adjusted to be less dominant.

* Commando 553's weapons mods are changed to be more inline with the vanilla game's attachment balance
* Lions Roar's base concealment is nerfed to 7
* AK-17's base concealment is reduced to 6
* Total ammo for Eagle Heavy is increased to 120
* KS-12 got slightly better handling
* Golden AK is now a KS-12 sidegrade (feedback needed)
* AK 762 now has extra 2 concealment
* Radion 3b's volley no longer one tap heavy units, in exchange it now penetrates shields
	* Giving players a one tap option with zero downsides undervalues the other DMR options that this gun competes with
* Little friend and Ketchnov are LMG's now (These are the only changes that i made cause i thought it would be funny)
* Bootleg's barrel now gives more accuracy at the cost of concealment
* M308 abraham stock now gives 10 concealment at the cost of reduced handling
	* B-Team stock now matches abraham stock 1-to-1


-----


**SMGs**

* Akimbo SMGs total ammo values are dialed back
	* New fall-off presets are given to akimbo SMGs. If the SMG you are using have access to speedpull, you get less range and harsher fall-off. 11m 0.5 for speedpulls and 16m 0.6 for non-speedpulls.

* Secondary SMGs are also given new presets based on their power, the weaker ones no longer suffer fall-off while the powerful ones that have been dominating the game for years, still has fall-off. The criteria this time was if it has speedpull, akgen, tatonka, uzi, patched, mp40, give it a standard fall-off preset. 18m range 0.6 fall-off for the ones that effected by it.

* Specific SMG changes
	* Damage buff of update 220 of compact 5 and signature has been reduced
	* Cobra has given +12 extra base accuracy
	* MP40 is adjusted to be a uzi sidegrade


-----


**Pistols**
* Fall-off is removed from most pistols, exceptions are automatics and some of the AP pistols
	* They are single target weapons, what's the point of reducing the damage of a class that is meant to kill one thing very fast and do nothing else? Automatics and some AP options still has fall-off since automatics gets their value from convenience while AP options are always valuable.
	* Applies to both singles and akimbos.

* Trigger happy aced now gives run & gun and enemy penetration to pistols
	* No you can't penetrate shields, only enemies
		* It was going to be just body armor penetration like surefire, but we thought this would be more unique and fun.

* Specific Pistol changes
	* Crosskill, Parabellum and Peacemaker now has AP rounds
		* Applies to akimbos if available, stats adjusted slightly as a result

	* Rus-12 and Peacemaker can now one-tap heavy units, their total ammo and accuracy values are adjusted to hit into their roles
	* Crosskill chunky can now reach 34 concealment, stats are adjusted as a result
	* Matever now has 26 concealment and a faster reload
	* Frenchman now has Kahn ammo pickup
	* Castigo is changed to be more in line with frenchman


-----
**LMGs**
* Fall-off is removed from m60
* Versteck total ammo is reduced to 120, its ads kick values now mimics its standing kick value
* Campbell's handling and concealment is reduced, flamethrower attachment no longer reduces handling
* KSP now reduces movement speed by 20%
	* Iron man basic removes this penalty

* Akron is changed to be a KSP/RPK hybrid with its own unique downsides
	* Exclusive set's ammo economy is now closer to bootleg
	* DMR kit is cut(for now I will return to this attachment later)

* Hailstorm got a better fall-off preset and better ammo economy

Some LMGs are notorious for having assault rifle handling, all of them are given stat reductions to give people reasons to at least give other LMGs a spin. They are more of a "wink wink nudge nudge" changes. LMGs are fine class, you don't have to default to KSP every time. As for versteck and akron, they are just assault rifles that they put into the LMG class. While akron is turned into a proper LMG, versteck changes are meant to make the gun closer to other battle rifles. Campbell is just an AR with LMG ammo economy so it had to be put down the earth slightly as well. M60 no longer has fall-off to give its own niche, considering it is the worst lmg by far.



-----

**Snipers**

* Removed extra damage at range from following guns
	* Contractor
	* Grom
	* Rattlesnake
	* R700

* Kick values for contractor and grom are increased
* Lebensauger ad kang arms swapped total ammo values
	* Both reduce movement speed
		* Iron man basic removes this penalty

* Rattlesnake's suppressor option no longer reduces damage
* Desert Fox total ammo is reduced to 25

Snipers have one job, that being crowd dps and I intend to keep them good in their job. These stat adjustments are meant to just slightly nerf the most broken ones. They are still really good at their job though.



-----


**Launchers**
* Grenade launcher ammo type changes
	* Viper now reduces ammo pickup by 0.9
		* It is still overpowered but my hands are tied here since projectiles are controlled by the host. Since these have to show cloud particles to other players, I can't give it a custom projectile.
	* Tazer and Fire grenades no longer has an ammo pickup penalty
	* Fire grenades fire ignite chance is increased to fill their role more consistently
	* Sting got enemy penetration and 1.5 times the pickup
		* Single target/Crowd DPS hybrid

* HRL-7 now deals 24k damage with a harsher fall-off
* Commando 101 is now a grenade launcher
* Both rocket launchers reduce movement speed
	* Iron man basic negates this downside


-----


**Shotguns**

Shotguns in vanilla payday 2 have infinite range. This causes wayyyyyyyyyyyy toooooo many problems. Some shotgun setups are unironically sniper rifles that can't miss while killing everything with little effort while others feel terrible. I increased their close range effectiveness at the cost of cutting this infinite range issue. Shotguns aren't sniper rifles. Sniper rifles have one job, that being crowd dps while shotguns are a crowd dps/utility/combo hybrid. There are no reasons why shotguns should play at the ranges snipers do considering you can get different values with shotguns depending on what you want to achieve. Ammo type balance is miserable as well, you don't have any choice but tombstone.

* New shotgun raycast for shock and awe

* New presets that cut the infinite range out of the equation while increasing close range effectiveness
	* Worse the shotgun is, better range it has. This means Akimbos and mag feds have lower range than something like a pump action. Fall-off is linear and starts after the max damage range and ends after max range. You can no longer deal damage after max range.
		* Akimbos 10m max damage range, 30m max range
		* Mag feds 15m max damage range, 40m max range
		* Tube feds 20m max damage range, 40m max range
		* Pump actions 25m max damage range, 50m max range
		* Double barrels 30m max damage range, 60m max range
		
* Shotgun ammo type changes
	* Flechette now increases close range effectiveness less, but will extend your max range
		* Starbreeze didn't actually put a far range multiplier since there is no point extending infinite range.
	* AP slugs now give +16 accuracy
	* Dragon's breath range is reworked entirely
		* More spammy the shotgun is, lower the dot ignite range
			* DB ignite ranges are 10m for mag feds, 15m for tube feds, 20m for pump actions and 25m for double barrels.
	* Tombstone no longer deals 1k dot damage per shot, it is now just a minor 2 second stun
		* Damage and ammo penalties are removed to turn it into a combot/utility hybrid
			* It is actually ton of fun, spammy shotguns becomes a short lived flashbang during team pushes while hard hitting ones can catch their breath, finish stunned enemies or have some time to reload. Besides, giving players a zero downside one tap weapon undermines the value of other options.

* Pellet count streamlining
	* 6 per each gun for akimbos
	* 12 for primaries
	* 10 for secondaries

* Specific shotgun changes
	* Izhma total ammo is reduced to 66
	* Steakout total ammo is increased to 88
	* Both Steakout and single VD-12 reduces movement speed by 20%
		* Iron man basic negates this downside

	* Street Sweeper, Predator and M01014 now reloads slightly faster
	* Reinfeld 880 and Mosconi Tactical swapped damage values
	* Argos 3 and Locomotive swapped damage values



-----

# Ongoing plans and disclosed changes section

> Akron DMR KIT?
> > It will return when i get the chance

>Kang arms underbarrel?
> > Not sure what to do with it yet

> (X) perk deck/weapon changes aren't good
> > Tell me why, feedback is appreciated

> Enemy side changes?
> > Play ResMod, Streamlined Heisting or Eclipse. I don't see the value in making the overhaul number 1239074217

> Why movement speed nerfs on some guns?
> > To give more of a heavy weapon feel and discourage people from religiously using certain weapons all the goddam time. Balance wasn't the key concern here it was put there as a flavour and as a stick

> Bows and crossbows?
> > Too invasive to the base game, due to how projectiles are handled and both of the weapon classes have different mechanics that prevets them from benefitting the same skills. My ideas for them are also a bit too out there and i rather not fiddle with them.

> Leech is now useless
> > It's not, no one forces you to use the mod anyways

> Weapon locks?
> > Considered it but it has a potential to mess with players inventories so no

> Make changes to the weapon (X)
> > You should give me a reason why it should change and what's wrong with

> Input buffer
> > Considered it but not adding it cause there are already two mods that does it. Get those instead they are not hard to find

> Is mods name a joke?
> > I am the funniest person i know



-----

# Credits
> **Rockymoto** Doing the heavy lifting
**Hoppip** For making a convenient hook system
**Cpone and Kuziz** For making A better Flamethrower Raycast
**smfr/mrcreepy** For shotgun shock and awe raycast
**iuhggiuhhgbnr and Dr.Newbie** For letting me know that custom projectiles do work for clients
**Killy** Fix for conditional reload speed fixes not applying

**Speacial thanks to all of our beta testers**
> * NotYourAvgStalin
* 0lafe
* Scrungofan3.0
* TARE104KA
* Pridumalsam
* Hitscanner
* Dorpenka
