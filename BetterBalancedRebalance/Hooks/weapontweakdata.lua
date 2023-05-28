require("lib/tweak_data/WeaponFactoryTweakData")
require("lib/tweak_data/WeaponFalloffTweakData")
BetterRebalanceTable:PostHook( WeaponTweakData, "init", 
function(self)
    -- load falloff template stuff hopefully
    local FALLOFF_TEMPLATE = WeaponFalloffTemplate.setup_weapon_falloff_templates()
    -- sniper stuff
	self.tti.damage_falloff = FALLOFF_TEMPLATE.SNIPER_BBR_LOW
	self.siltstone.damage_falloff = FALLOFF_TEMPLATE.SNIPER_BBR_LOW
	self.msr.damage_falloff = FALLOFF_TEMPLATE.SNIPER_BBR_LOW
	self.r700.damage_falloff = FALLOFF_TEMPLATE.SNIPER_BBR_LOW
    -- sniper recoil for two
	self.tti.kick.standing = {
		5,
		3,
		-0.6,
		0.6
	}
	self.siltstone.kick.standing = {
		4.5,
		2.5,
		-0.6,
		0.6
	}
    -- leben dfox and kang ammo concealment
	self.wa2000.AMMO_MAX = 45
	self.wa2000.stats.concealment = 1
	self.qbu88.AMMO_MAX = 60
	self.qbu88.stats.concealment = 1
	self.desertfox.AMMO_MAX = 25
    -- rifle stuff
	self.shak12.stats.damage = 125
	self.shak12.stats.recoil = 10
	self.shak12.stats.spread = 14
	self.akm_gold.stats.concealment = 5
	self.akm_gold.stats.damage = 125
	self.akm_gold.stats.recoil = 4
	self.akm_gold.stats.spread = 12
	self.akm.stats.concealment = 15
    -- concealment penalty for two of the best rifles, still concealable with a 29 dr smg so i don't think it should be a big deal
	self.flint.stats.concealment  = 6
	self.vhs.stats.concealment = 7	
	self.scar.AMMO_MAX = 120
	self.tkb.stats.damage = 53
	self.tkb.fire_mode_data.volley = {
		spread_mul = 1.25,
		damage_mul = 0.85,
		ammo_usage = 3,
		rays = 3,
		can_shoot_through_wall = false,
		can_shoot_through_shield = true,
		can_shoot_through_enemy = true,
		muzzleflash = "effects/payday2/particles/weapons/tkb_muzzle",
		muzzleflash_silenced = "effects/payday2/particles/weapons/tkb_suppressed"
	}	
    -- akimbo smg nerfs
	self.x_mp5.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_mp5.AMMO_MAX = 180
	self.x_sr2.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_sr2.AMMO_MAX = 160
	self.x_akmsu.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_akmsu.AMMO_MAX = 100
	self.x_tec9.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_tec9.AMMO_MAX = 210
	self.x_m1928.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_m1928.AMMO_MAX = 160
	self.x_mp9.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_mp9.AMMO_MAX = 210
	self.x_scorpion.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_scorpion.AMMO_MAX = 210
	self.x_hajk.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_hajk.AMMO_MAX = 100
	self.x_schakal.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_schakal.AMMO_MAX = 100
	self.x_cobray.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_cobray.AMMO_MAX = 160
	self.x_p90.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_p90.AMMO_MAX = 160
	self.x_polymer.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_polymer.AMMO_MAX = 160
	self.x_mac10.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_mac10.AMMO_MAX = 160
	self.x_baka.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_baka.AMMO_MAX = 210
	self.x_erma.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_erma.AMMO_MAX = 100
	self.x_olympic.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_olympic.AMMO_MAX = 160
	self.x_sterling.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_sterling.AMMO_MAX = 100
	self.x_shepheard.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_shepheard.AMMO_MAX = 160
	self.x_mp7.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_mp7.AMMO_MAX = 160
	self.x_m45.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_m45.AMMO_MAX = 100
	self.x_coal.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_coal.AMMO_MAX = 100
	self.x_uzi.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_uzi.AMMO_MAX = 100
	self.x_vityaz.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_HIGH
	self.x_vityaz.AMMO_MAX = 160
	self.x_pm9.damage_falloff = FALLOFF_TEMPLATE.AKI_SMG_BBR_LOW
	self.x_pm9.AMMO_MAX = 160
    -- smg stuff
	self.tec9.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.m1928.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.mp9.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.scorpion.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.scorpion.stats.spread = 13
	self.new_mp5.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.hajk.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.sr2.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.schakal.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.cobray.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.p90.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.akmsu.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.polymer.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.mac10.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.baka.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.erma.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.erma.stats.damage = 90
	self.erma.stats.concealment = 28
	self.erma.AMMO_MAX = 120
	self.erma.AMMO_PICKUP = { 3, 7 }
	self.olympic.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.sterling.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW  -- i forgot this gun had dummy thicc pickup
	self.mp7.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.m45.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.coal.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.uzi.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW -- without fall-off it ends up being ak17 we don't need more ak17 in this game and i am certainly not putting one in with my very own hands
	self.shepheard.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_HIGH
	self.shepheard.stats.damage = 50
	self.vityaz.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.pm9.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
	self.fmg9.damage_falloff = FALLOFF_TEMPLATE.SMG_BBR_LOW
    -- secondary pistols
	self.sparrow.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.b92fs.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.new_raging_bull.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.c96.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.chinchilla.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.chinchilla.stats.damage = 130
	self.chinchilla.AMMO_PICKUP = { 2, 3.5 }
	self.glock_17.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.g26.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.g22c.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.packrat.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.colt_1911.AMMO_MAX = 72
	self.colt_1911.AMMO_PICKUP = { 1.2, 2.5 }
	self.colt_1911.stats.spread = 14
	self.colt_1911.stats.recoil = 9
	self.colt_1911.can_shoot_through_enemy = true
	self.colt_1911.can_shoot_through_shield = true
	self.colt_1911.can_shoot_through_wall = true
    self.colt_1911.has_description = true
	self.colt_1911.armor_piercing_chance = 1 
	self.shrew.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.deagle.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.ppk.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.usp.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.hs2000.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.mateba.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.mateba.stats.concealment = 26
	self.mateba.stats.reload = 17
	self.breech.AMMO_MAX = 40
	self.breech.can_shoot_through_enemy = true
	self.breech.can_shoot_through_shield = true
	self.breech.can_shoot_through_wall = true
    self.breech.has_description = true
	self.breech.armor_piercing_chance = 1 
	self.breech.stats.damage = 120
	self.peacemaker.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.peacemaker.stats.damage = 130
	self.peacemaker.AMMO_MAX = 48
	self.peacemaker.can_shoot_through_enemy = true
	self.peacemaker.can_shoot_through_shield = true
	self.peacemaker.can_shoot_through_wall = true
    self.peacemaker.has_description = true
	self.peacemaker.armor_piercing_chance = 1 
	self.p226.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.pl14.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.legacy.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.holt.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.model3.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.model3.AMMO_PICKUP = { 2, 3.5 }
	self.m1911.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.m1911.stats.concealment = 32
	self.m1911.stats.damage = 95
	self.type54.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.rsh12.AMMO_MAX = 30
	self.rsh12.stats.damage = 130
	self.rsh12.stats.spread = 17
	self.maxim9.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
	self.korth.damage_falloff = FALLOFF_TEMPLATE.PISTOL_BBR_HIGH
    -- akimbo pistols
	self.x_b92fs.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_chinchilla.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_chinchilla.stats.damage = 130
	self.x_chinchilla.AMMO_PICKUP = { 2, 3.5 }
	self.x_g17.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.jowi.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_g22c.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_packrat.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_1911.AMMO_MAX = 70
	self.x_1911.AMMO_PICKUP = { 1.2, 2.5 }
	self.x_1911.stats.spread = 16
	self.x_1911.can_shoot_through_enemy = true
	self.x_1911.can_shoot_through_shield = true
	self.x_1911.can_shoot_through_wall = true
    self.x_1911.has_description = true
	self.x_1911.armor_piercing_chance = 1 
	self.x_shrew.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_deagle.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_usp.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_sparrow.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_rage.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_ppk.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_hs2000.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_2006m.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_p226.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_pl14.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_legacy.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_holt.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_model3.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_model3.AMMO_PICKUP = { 2, 3.5 }
	self.x_m1911.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_type54.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_maxim9.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_korth.damage_falloff = FALLOFF_TEMPLATE.AKI_PISTOL_BBR_HIGH
	self.x_breech.AMMO_MAX = 48
	self.x_breech.stats.damage = 120
	self.x_breech.can_shoot_through_enemy = true
	self.x_breech.can_shoot_through_shield = true
	self.x_breech.can_shoot_through_wall = true
    self.x_breech.has_description = true
	self.x_breech.armor_piercing_chance = 1 
    -- lmg stuff
	self.m60.damage_falloff = FALLOFF_TEMPLATE.LMG_BBR_HIGH
	self.hk51b.AMMO_MAX = 120
	self.hk51b.kick.steelsight = self.hk51b.kick.standing
	self.kacchainsaw.stats.concealment = 1
	self.kacchainsaw.stats.spread = 8
	self.kacchainsaw.stats.recoil = 5
	self.hcar.damage_falloff = FALLOFF_TEMPLATE.LMG_FALL_MEDIUM
	self.hcar.stats.spread = 13
	self.hcar.stats.recoil = 9
	self.hcar.stats.concealment = 5
	self.hcar.AMMO_MAX = 200
	self.hcar.AMMO_PICKUP = { 5, 8.4 }
	self.hailstorm.damage_falloff = FALLOFF_TEMPLATE.SPECIAL_BBR_LOW
	self.hailstorm.AMMO_MAX = 600
	self.hailstorm.AMMO_PICKUP = { 7, 20 }
    -- shotgun stuff
	self.boot.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_VERYHIGH
	self.saiga.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_LOW
	self.saiga.AMMO_MAX = 66
	self.b682.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_VERYHIGH
	self.benelli.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_MEDIUM
	self.benelli.stats.reload = 13
	self.huntsman.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_VERYHIGH
	self.spas12.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_MEDIUM
	self.spas12.stats.reload = 14
	self.ksg.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.r870.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.r870.stats.damage = 110
	self.r870.CLIP_AMMO_MAX = 8
	self.aa12.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_LOW
	self.aa12.AMMO_MAX = 88
	self.aa12.stats.concealment = 1
	self.m1897.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.m590.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.m590.stats.damage = 90
	self.sko12.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_LOW
	self.sko12.stats.concealment = 1
	self.supernova.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_LOW
	self.basset.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_LOW
	self.m37.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.rota.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_LOW
	self.serbu.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.serbu.stats.damage = 110
	self.striker.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_MEDIUM
	self.striker.stats.reload = 15
	self.judge.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_MEDIUM
	self.coach.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_VERYHIGH
	self.ultima.damage_falloff = FALLOFF_TEMPLATE.SHOTGUN_BBR_HIGH
	self.ultima.stats.damage = 90
	self.x_rota.damage_falloff = FALLOFF_TEMPLATE.AKI_SHOTGUN_BBR_LOW
	self.x_basset.damage_falloff = FALLOFF_TEMPLATE.AKI_SHOTGUN_BBR_LOW
	self.x_sko12.damage_falloff = FALLOFF_TEMPLATE.AKI_SHOTGUN_BBR_LOW
	self.x_judge.damage_falloff = FALLOFF_TEMPLATE.AKI_SHOTGUN_BBR_LOW
	self.saiga.rays = 12
    self.aa12.rays = 12
    self.benelli.rays = 12
    self.sko12.rays = 12
	self.x_sko12.ray = 6
    self.spas12.rays = 12
    self.ksg.rays = 12
    self.r870.rays = 12
    self.m1897.rays = 12
    self.m590.rays = 12
    self.huntsman.rays = 12
    self.b682.rays = 12
    self.boot.rays = 12
    self.basset.rays = 10
    self.x_basset.rays = 6
    self.rota.rays = 10
    self.x_rota.rays = 6
    self.judge.rays = 10
    self.coach.rays = 10
    self.m37.rays = 10
    self.serbu.rays = 10
    self.striker.rays = 10
    self.ultima.rays = 10
	self.supernova.ray = 12
    -- little friend
	self.contraband.stats.damage = 120
	self.contraband.stats.recoil = 5
	self.contraband.stats.spread = 9
	self.contraband.damage_falloff = FALLOFF_TEMPLATE.LMG_FALL_MEDIUM
	self.contraband.AMMO_MAX = 150
	self.contraband.CLIP_AMMO_MAX = 50
	self.contraband.AMMO_PICKUP = { 6, 10 }
	self.contraband.stats.concealment = 1
	self.contraband_m203.AMMO_MAX = 3
	self.contraband_m203.AMMO_PICKUP = { 0.15, 0.25 }
    -- keknov
	self.groza.stats.damage = 80
	self.groza.stats.recoil = 5
	self.groza.stats.spread = 13
	self.groza.damage_falloff = FALLOFF_TEMPLATE.LMG_FALL_MEDIUM
	self.groza.AMMO_MAX = 200
	self.groza.CLIP_AMMO_MAX = 40
	self.groza.AMMO_PICKUP = { 8, 11 }
	self.groza.stats.concealment = 1
	self.groza_underbarrel.AMMO_MAX = 3
	self.groza_underbarrel.AMMO_PICKUP = { 0.15, 0.25 }
	self.groza.stats.reload = 8
    -- Movement speed changes
    self.sko12.movement_speed = 0.8
    self.aa12.movement_speed = 0.8
    self.m249.movement_speed = 0.8
    self.wa2000.movement_speed = 0.8
    self.qbu88.movement_speed = 0.8
    self.ray.movement_speed = 0.8
    self.rpg7.movement_speed = 0.8
    self.sko12.has_description = true
    self.aa12.has_description = true
    self.m249.has_description = true
    self.wa2000.has_description = true
    self.qbu88.has_description = true
    self.ray.has_description = true
    self.rpg7.has_description = true
    -- Rocket Launchers
    self.rpg7.stats.damage = 120
    self.rpg7.stats_modifiers = { damage = 100 }
	self.ray.stats.damage = 130
	self.ray.stats.alert_size = 7
	self.ray.stats.spread = 22
	self.ray.stats.spread_moving = 6
	self.ray.stats.recoil = 22
	self.ray.stats.value = 1
	self.ray.stats.reload = 11
	self.ray.stats.suppression = 2
	self.ray.stats_modifiers = { damage = 10 }
    self.ray.upgrade_blocks = nil
    self.ray.AMMO_PICKUP = { 0.15, 0.2 }
end)