BetterRebalanceTable:PostHook(SkillTreeTweakData, "init",
function(self)
    -- Set the new categories
    self.specializations[1].category = "support"                -- Crew Chief
    self.specializations[2].category = "health"                 -- Muscle
    self.specializations[3].category = "armor"                  -- Armorer
    self.specializations[4].category = "dodge"                  -- Rogue
    self.specializations[5].category = "armor"                  -- Hitman
    self.specializations[6].category = "dodge"                  -- Crook
    self.specializations[7].category = { "dodge", "stealth" }   -- Burglar
    self.specializations[8].category = "health"                 -- Infiltrator
    self.specializations[9].category = "armor"                  -- Sociopath
    self.specializations[10].category = "support"               -- Gambler
    self.specializations[11].category = "health"                -- Grinder
    self.specializations[12].category = { "armor", "stealth" }  -- Yakuza
    self.specializations[13].category = "dodge"                 -- Ex-president
    self.specializations[14].category = "support"               -- Maniac
    self.specializations[15].category = "armor"                 -- Anarchist
    self.specializations[16].category = "support"               -- Biker 
    self.specializations[17].category = "health"                -- Kingpin
    self.specializations[18].category = "dodge"                 -- Sicario
    self.specializations[19].category = "health"                -- Stoic
    self.specializations[20].category = "support"               -- Tag Team
    self.specializations[21].category = { "dodge", "stealth" }  -- Hacker
    self.specializations[22].category = "support"               -- Leech
    self.specializations[23].category = "copycat"               -- Copycat
    -- Add the new categories
    local new_categories = {
        {
            name_id = "bbr_st_all",
            category = "all"
        },
        {
            name_id = "bbr_st_health",
            category = "health"
        },
        {
            name_id = "bbr_st_armor",
            category = "armor"
        },
        {
            name_id = "bbr_st_support",
            category = "support"
        },
        {
            name_id = "bbr_st_dodge",
            category = "dodge"
        },
        {
            name_id = "bbr_st_stealth",
            category = "stealth"
        },
        {
            name_id = "bbr_st_copycat",
            category = "copycat"
        },
        {
            name_id = "menu_st_category_favorites",
            category = "favorites"
        }
    }
    self.specialization_category = new_categories
    -- Deck changes
    -- Hitman
    self.specializations[5][1].upgrades = {
        "player_armor_grinding_1",
        "player_hitman_armor_increase_1",
        "player_health_decrease_1"
    }
    self.specializations[5][3].upgrades = { "player_hitman_kill_bulletstorm_1" }
    self.specializations[5][5].upgrades = { "player_hitman_armor_increase_2" }
    self.specializations[5][7].upgrades = { "player_hitman_armor_increase_3" }
    self.specializations[5][9].upgrades = {
        "player_passive_loot_drop_multiplier",
        "temporary_regen_all_armor_1",
        "player_damage_to_armor_1",
        "player_perk_armor_regen_timer_multiplier_5"
    }
    -- Yakuza
    self.specializations[12][1].upgrades = {
        "player_armor_regen_damage_health_ratio_multiplier_1",
        "player_armor_regen_damage_health_ratio_threshold_multiplier",
        "player_movement_speed_damage_health_ratio_threshold_multiplier"
    }
    self.specializations[12][7].upgrades = {
        "weapon_passive_swap_speed_multiplier_1"
    }
    self.specializations[12][9].upgrades = {
        "player_passive_loot_drop_multiplier",
        "player_passive_frenzy_health_1"
    }
    -- Muscle
    self.specializations[2][3].upgrades = {
        "player_passive_health_multiplier_2",
        "temporary_mrwi_health_invulnerable_1"
    }
    -- Infiltrator
    self.specializations[8][3].upgrades = { "player_passive_infiltrator_health_multiplier_1" }
    self.specializations[8][5].upgrades = {
        "player_passive_infiltrator_health_multiplier_2",
        "player_passive_armor_multiplier_1",
        "melee_stacking_hit_expire_t"
    }
    self.specializations[8][7].upgrades = {
        "player_passive_infiltrator_health_multiplier_3"
    }
    -- Crook
    self.specializations[6][9].upgrades = {
        "player_passive_loot_drop_multiplier",
        "player_armor_regen_timer_multiplier_tier",
        "player_level_2_crook_armor_addend",
        "player_level_3_crook_armor_addend",
        "player_level_4_crook_armor_addend"
    }
    -- Ex-president
    self.specializations[13][9].upgrades = {
        "player_passive_loot_drop_multiplier",
        "player_killshot_close_panic_chance",
        "player_expres_dodge_chance"
    }
    -- Hacker
    self.specializations[21][3].upgrades = { "player_passive_dodge_chance_1" }
    self.specializations[21][5].upgrades = { "player_pocket_ecm_heal_on_kill_1" }
    self.specializations[21][9].upgrades = {
        "player_passive_loot_drop_multiplier",
        "player_passive_dodge_chance_2"
    }
    -- Burglar
    self.specializations[7][3].upgrades = {
        "player_stand_still_crouch_camouflage_bonus_1",
        "player_corpse_dispose_speed_multiplier",
        "player_passive_burglar_concealment_addend"
    }
    -- Gambler
    self.specializations[10][1].upgrades = { "player_gambler_kill_to_health_buffer" }
    self.specializations[10][3].upgrades = { "player_gambler_kill_to_ammo_team" }
    self.specializations[10][5].upgrades = { "player_gambler_passive_health_multiplier_1" }
    self.specializations[10][7].upgrades = { "player_gambler_passive_health_multiplier_2" }
    self.specializations[10][9].upgrades = {
        "player_passive_loot_drop_multiplier",
        "player_killshot_close_panic_chance"
    }
    -- Leech
    self.specializations[22][3].upgrades = { "player_copr_out_of_health_move_slow_1" }
    self.specializations[22][7].upgrades = { "player_copr_passive_swap_speed" }
    self.specializations[22][9].upgrades = {
        "player_copr_static_damage_ratio_2",
        "player_passive_loot_drop_multiplier",
        "player_copr_kill_life_leech_2"
    }
    -- Biker
    self.specializations[16][3].upgrades = { 
        "player_less_health_wild_armor_1",
        "player_morale_boost"
    }
    self.specializations[16][5].upgrades = {
        "player_less_health_wild_cooldown_1",
        "player_biker_passive_health_multiplier"
    }
    self.specializations[16][7].upgrades = {
        "player_less_armor_wild_health_1",
        "player_biker_passive_armor_multiplier"
    }
    self.specializations[16][9].upgrades = {
        "player_passive_loot_drop_multiplier",
		"player_less_armor_wild_cooldown_1",
        "player_passive_wild_cooldown"
    }
    -- Skills
    self.skills.rifleman[2].upgrades = {
        "assault_rifle_zoom_increase",
		"snp_zoom_increase",
		"smg_zoom_increase",
		"lmg_zoom_increase",
		"pistol_zoom_increase",
		"assault_rifle_move_spread_index_addend",
		"snp_move_spread_index_addend",
		"smg_move_spread_index_addend",
        "lmg_move_spread_index_addend",
		"pistol_move_spread_index_addend"
    }
    self.skills.trigger_happy[2].upgrades = {
        "pistol_stacking_hit_damage_multiplier_2",
        "pistol_pierce_enemy_armor",
        "pistol_hip_run_and_shoot"
    }
end)