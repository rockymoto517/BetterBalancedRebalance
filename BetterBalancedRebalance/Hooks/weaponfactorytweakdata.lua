BetterRebalanceTable:PostHook(WeaponFactoryTweakData, "init", function(self)
	-- gadgets and some vanilla/DLC attachments
	self.parts.wpn_fps_upg_ns_pis_meatgrinder.stats.recoil = 3
	self.parts.wpn_fps_upg_ns_pis_meatgrinder.stats.concealment = 0
	self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.spread = 1
	self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.damage = 0
	self.parts.wpn_fps_upg_ns_pis_medium.stats.spread = 1
	self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.stats.concealment = 0
	self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.stats.recoil = -1
	self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.stats.spread = 1
	self.parts.wpn_fps_upg_fl_ass_peq15.stats.recoil = 0
	self.parts.wpn_fps_upg_fl_ass_peq15.stats.spread = 1
	self.parts.wpn_fps_upg_o_45rds_v2.stats.recoil = 0
	self.parts.wpn_fps_upg_o_45rds_v2.stats.concealment = 1
	self.parts.wpn_fps_upg_m4_m_pmag.stats.reload = 10
	self.parts.wpn_fps_upg_m4_m_pmag.stats.extra_ammo = 0
	self.parts.wpn_fps_upg_m4_m_pmag.stats.spread = -1
	self.parts.wpn_fps_upg_m4_m_pmag.stats.recoil = -2
	self.parts.wpn_fps_upg_m4_m_pmag.stats.concealment = -1
	self.parts.wpn_fps_upg_m4_g_ergo.stats.concealment = 2
	self.parts.wpn_fps_upg_m4_g_ergo.stats.spread = 0
	self.parts.wpn_fps_m4_uupg_fg_lr300.stats.spread = 1
	self.parts.wpn_fps_m4_uupg_fg_lr300.stats.damage = 1
	self.parts.wpn_fps_m4_uupg_fg_lr300.stats.concealment = 2
	self.parts.wpn_fps_m4_uupg_fg_lr300.stats.recoil = 2
	self.parts.wpn_fps_smg_mp5_m_straight.stats.damage = 7
	self.parts.wpn_fps_snp_msr_ns_suppressor.stats.damage = 0
	self.parts.wpn_fps_upg_a_slug.stats.spread = 4
	self.parts.wpn_fps_lmg_kacchainsaw_flamethrower.stats.spread = 0
	self.parts.wpn_fps_lmg_kacchainsaw_flamethrower.stats.recoil = 0
	self.parts.wpn_fps_pis_m1911_sl_match.stats.spread = -2
	self.parts.wpn_fps_pis_m1911_sl_match.stats.concealment = 2
	self.parts.wpn_fps_ass_groza_m_speed.stats.reload = 2
	self.parts.wpn_fps_upg_ak_g_pgrip.stats.spread = 2
	self.parts.wpn_fps_upg_ak_g_pgrip.stats.recoil = 2
	self.parts.wpn_fps_upg_ak_g_pgrip.stats.concealment = -1
	self.parts.wpn_fps_upg_a_rip.stats.damage = 0
	self.parts.wpn_fps_upg_a_rip.stats.total_ammo_mod = 0
	--[[
	self.parts.wpn_fps_upg_a_rip.custom_stats = {
        armor_piercing_add = 1,
        muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_rip",
        damage_far_mul = 1,
        damage_near_mul = 1,
        bullet_class = "PoisonBulletBase",
        dot_data = {
            type = "poison",
            custom_data = {
                hurt_animation_chance = 1,
                dot_damage = 1,
                dot_length = 2,
                use_weapon_damage_falloff = true,
                dot_tick_period = 0.8
                }
            }
        }
    ]]
	self.parts.wpn_fps_upg_a_piercing.custom_stats = {
		damage_near_mul = 1.2,
		armor_piercing_add = 1,
		damage_far_mul = 1.2,
	}
	-- sights
	self.parts.wpn_fps_upg_o_eotech.stats.concealment = -1
	self.parts.wpn_fps_upg_o_t1micro.stats.recoil = 0
	self.parts.wpn_fps_upg_o_t1micro.stats.spread = 1
	self.parts.wpn_fps_upg_o_docter.stats.recoil = -1
	self.parts.wpn_fps_upg_o_docter.stats.concealment = 0
	self.parts.wpn_fps_upg_o_acog.stats.concealment = -1
	self.parts.wpn_fps_upg_o_aimpoint.stats.concealment = -1
	self.parts.wpn_fps_upg_o_aimpoint.stats.recoil = 0
	self.parts.wpn_fps_upg_o_aimpoint.stats.spread = 1
	self.parts.wpn_fps_upg_o_specter.stats.concealment = 0
	self.parts.wpn_fps_upg_o_specter.stats.recoil = -1
	self.parts.wpn_fps_upg_o_cmore.stats.recoil = 0
	self.parts.wpn_fps_upg_o_cmore.stats.spread = 1
	self.parts.wpn_fps_upg_o_eotech_xps.stats.concealment = -1
	self.parts.wpn_fps_upg_o_eotech_xps.stats.recoil = 0
	self.parts.wpn_fps_upg_o_eotech_xps.stats.spread = 1
	self.parts.wpn_fps_upg_o_rx01.stats.concealment = -1
	self.parts.wpn_fps_upg_o_rx30.stats.concealment = 0
	self.parts.wpn_fps_upg_o_rx30.stats.recoil = -1
	-- akron stuff
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.stats.total_ammo_mod = 0
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.stats.damage = -60
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.stats.spread = 7
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.stats.recoil = 5
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.stats.concealment = 8
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.custom_stats.ammo_pickup_max_mul =
		1.2
	self.parts.wpn_fps_lmg_hcar_body_conversionkit.custom_stats.ammo_pickup_min_mul =
		1.3
	-- akron dmr stuff
	self.parts.wpn_fps_lmg_hcar_barrel_dmr = {
		texture_bundle_folder = "pxp3",
		dlc = "pxp3",
		type = "barrel",
		name_id = "bm_wp_hcar_barrel_dmr",
		unit = "units/pd2_dlc_pxp3/weapons/wpn_fps_lmg_hcar_pts/wpn_fps_lmg_hcar_brl_dmr",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40,
		},
		stats = {
			extra_ammo = -5,
			total_ammo_mod = -10,
			damage = 40,
			value = 3,
		},
		custom_stats = {
			ammo_pickup_max_mul = 0.3,
			ammo_pickup_min_mul = 0.3,
			damage_near_mul = 10,
			damage_far_mul = 1,
		},
	}
	-- bootleg
	self.parts.wpn_fps_ass_tecci_b_long.stats.concealment = -7
	self.parts.wpn_fps_ass_tecci_b_long.stats.spread = 4
	self.parts.wpn_fps_ass_tecci_b_long.stats.damage = 5
	--553
	self.parts.wpn_fps_ass_s552_s_standard_green.stats.concealment = 0
	self.parts.wpn_fps_ass_s552_s_standard_green.stats.spread = 1
	self.parts.wpn_fps_ass_s552_fg_standard_green.stats.concealment = 0
	self.parts.wpn_fps_ass_s552_fg_standard_green.stats.spread = 1
	self.parts.wpn_fps_ass_s552_b_long.stats.concealment = 0
	self.parts.wpn_fps_ass_s552_b_long.stats.spread = 2
	-- m308 stuffs
	self.parts.wpn_fps_ass_m14_body_ruger.stats.stats = {
		spread_moving = 2,
		spread = -1,
		value = 12,
		recoil = -3,
	}
	self.parts.wpn_fps_ass_m14_body_ruger.stats.concealment = 10
	self.parts.wpn_fps_ass_m14_body_ruger.stats.total_ammo_mod = 0
	self.parts.wpn_fps_ass_m14_body_ebr.stats =
		deep_clone(self.parts.wpn_fps_ass_m14_body_ruger.stats)
	-- Grenade ammo stuffs
	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary.custom_stats.ammo_pickup_min_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary.custom_stats.ammo_pickup_max_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary_arbiter.custom_stats.ammo_pickup_min_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary_arbiter.custom_stats.ammo_pickup_max_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary_ms3gl.custom_stats.ammo_pickup_min_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary_ms3gl.custom_stats.ammo_pickup_max_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_electric.custom_stats.ammo_pickup_min_mul =
		1
	self.parts.wpn_fps_upg_a_grenade_launcher_electric.custom_stats.ammo_pickup_max_mul =
		1
	self.parts.wpn_fps_upg_a_grenade_launcher_electric_arbiter.custom_stats.ammo_pickup_min_mul =
		1
	self.parts.wpn_fps_upg_a_grenade_launcher_electric_arbiter.custom_stats.ammo_pickup_max_mul =
		1
	self.parts.wpn_fps_upg_a_grenade_launcher_electric_ms3gl.custom_stats.ammo_pickup_min_mul =
		1
	self.parts.wpn_fps_upg_a_grenade_launcher_electric_ms3gl.custom_stats.ammo_pickup_max_mul =
		1
	self.parts.wpn_fps_upg_a_grenade_launcher_poison.custom_stats.ammo_pickup_min_mul =
		0.1
	self.parts.wpn_fps_upg_a_grenade_launcher_poison.custom_stats.ammo_pickup_max_mul =
		0.1
	self.parts.wpn_fps_upg_a_grenade_launcher_poison_arbiter.custom_stats.ammo_pickup_min_mul =
		0.1
	self.parts.wpn_fps_upg_a_grenade_launcher_poison_arbiter.custom_stats.ammo_pickup_max_mul =
		0.1
	self.parts.wpn_fps_upg_a_grenade_launcher_poison_ms3gl.custom_stats.ammo_pickup_min_mul =
		0.1
	self.parts.wpn_fps_upg_a_grenade_launcher_poison_ms3gl.custom_stats.ammo_pickup_max_mul =
		0.1
	self.parts.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.ammo_pickup_min_mul =
		1.5
	self.parts.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.ammo_pickup_max_mul =
		1.5
	-- Sting grenade changes
	--[[
    self.wpn_fps_gre_arbiter.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_gre_arbiter.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_gre_china.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_gre_china.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_gre_m32.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_gre_m32.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_gre_m79.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_gre_m79.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_gre_ms3gl.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_gre_ms3gl.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_gre_slap.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_gre_slap.override.wpn_fps_upg_a_grenade_launcher_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_ass_groza.override.wpn_fps_upg_a_underbarrel_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_ass_groza.override.wpn_fps_upg_a_underbarrel_hornet.custom_stats.armor_piercing_add = 1
    self.wpn_fps_ass_contraband.override.wpn_fps_upg_a_underbarrel_hornet.custom_stats.can_shoot_through_enemy = true
    self.wpn_fps_ass_contraband.override.wpn_fps_upg_a_underbarrel_hornet.custom_stats.armor_piercing_add = 1
    ]]
end)
