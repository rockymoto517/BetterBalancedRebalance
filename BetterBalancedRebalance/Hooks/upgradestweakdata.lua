BetterRebalanceTable:PostHook(UpgradesTweakData, "_player_definitions",
function(self)
    -- Create hitman bulletstorm upgrade using the pd2 system
    self.definitions.player_hitman_kill_bulletstorm_1 = {
        name_id = "menu_player_hitman_kill_bulletstorm",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "hitman_kill_bulletstorm",
            category = "player"
        }
    }
    -- Yakuza frenzy hp upgrade
    self.definitions.player_passive_frenzy_health_1 = {
        name_id = "menu_player_passive_frenzy_health",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "passive_frenzy_health",
            category = "player"
        }
    }
    -- Hitman armor steps
    self.definitions.player_hitman_armor_increase_1 = {
        name_id = "menu_player_hitman_health_to_armor_conversion",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "hitman_armor_increase",
            category = "player"
        }
    }
    self.definitions.player_hitman_armor_increase_2 = {
        name_id = "menu_player_hitman_health_to_armor_conversion",
        category = "feature",
        upgrade = {
            value = 2,
            upgrade = "hitman_armor_increase",
            category = "player"
        }
    }
    self.definitions.player_hitman_armor_increase_3 = {
        name_id = "menu_player_hitman_health_to_armor_conversion",
        category = "feature",
        upgrade = {
            value = 3,
            upgrade = "hitman_armor_increase",
            category = "player"
        }
    }
    -- Infiltrator HP upgrades
    self.definitions.player_passive_infiltrator_health_multiplier_1 = {
        name_id = "menu_player_passive_infiltrator_health_multiplier",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "passive_infiltrator_health_multiplier",
            category = "player"
        }
    }
    self.definitions.player_passive_infiltrator_health_multiplier_2 = {
        name_id = "menu_player_passive_infiltrator_health_multiplier",
        category = "feature",
        upgrade = {
            value = 2,
            upgrade = "passive_infiltrator_health_multiplier",
            category = "player"
        }
    }
    self.definitions.player_passive_infiltrator_health_multiplier_3 = {
        name_id = "menu_player_passive_infiltrator_health_multiplier",
        category = "feature",
        upgrade = {
            value = 3,
            upgrade = "passive_infiltrator_health_multiplier",
            category = "player"
        }
    }
    -- Crook BV Upgrades
    -- p.s. why did overkill do it like this bruh
    self.definitions.player_level_2_crook_armor_addend = {
        name_id = "menu_player_level_2_crook_armor_addend",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "level_2_crook_armor_addend",
            category = "player"
        }
    }
    self.definitions.player_level_3_crook_armor_addend = {
        name_id = "menu_player_level_3_crook_armor_addend",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "level_3_crook_armor_addend",
            category = "player"
        }
    }
    self.definitions.player_level_4_crook_armor_addend = {
        name_id = "menu_player_level_4_crook_armor_addend",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "level_4_crook_armor_addend",
            category = "player"
        }
    }
    -- Ex-president dodge chance
    self.definitions.player_expres_dodge_chance = {
        name_id = "menu_player_expres_dodge_chance",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "expres_dodge_chance",
            category = "player"
        }
    }
    -- Burglar concealment upgrade
    self.definitions.player_passive_burglar_concealment_addend = {
        name_id = "menu_player_passive_burglar_concealment_addend",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "passive_burglar_concealment_addend",
            category = "player"
        }
    }
    -- Gambler health pool
    self.definitions.player_gambler_kill_to_health_buffer = {
        name_id = "menu_player_gambler_kill_to_health_buffer",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "gambler_kill_to_health_buffer",
            category = "player"
        }
    }
    -- Gambler health pool ammo upgrades
    self.definitions.player_gambler_kill_to_ammo_team = {
        name_id = "menu_player_gambler_kill_to_ammo_team",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "gambler_kill_to_ammo_team",
            category = "player"
        }
    }
    -- Gambler HP upgrades
    self.definitions.player_gambler_passive_health_multiplier_1 = {
        name_id = "menu_player_gambler_passive_health_multiplier",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "gambler_passive_health_multiplier",
            category = "player"
        }
    }
    self.definitions.player_gambler_passive_health_multiplier_2 = {
        name_id = "menu_player_gambler_passive_health_multiplier",
        category = "feature",
        upgrade = {
            value = 2,
            upgrade = "gambler_passive_health_multiplier",
            category = "player"
        }
    }
    -- Leech swap speed upgrade
    self.definitions.player_copr_passive_swap_speed = {
        name_id = "menu_player_copr_passive_swap_speed",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "copr_passive_swap_speed",
            category = "weapon"
        }
    }
    -- Biker HP multiplier
    self.definitions.player_biker_passive_health_multiplier = {
        name_id = "menu_player_biker_passive_health_multiplier",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "biker_passive_health_multiplier",
            category = "player"
        }
    }
    -- Biker armor multiplier
    self.definitions.player_biker_passive_armor_multiplier = {
        name_id = "menu_player_biker_passive_armor_multiplier",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "biker_passive_armor_multiplier",
            category = "player"
        }
    }
    -- Biker cooldown upgrade
    self.definitions.player_passive_wild_cooldown = {
        name_id = "menu_player_passive_wild_cooldown",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "passive_wild_cooldown",
            category = "player"
        }
    }
    -- Copycat dodge nerf
    self.definitions.player_mrwi_burglar_dodge_chance = {
        name_id = "menu_player_mrwi_burglar_dodge_chance",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "mrwi_burglar_dodge_chance",
            category = "player"
        }
    }
    -- Trigger happy run and gun
    self.definitions.pistol_hip_run_and_shoot = {
        name_id = "menu_pistol_hip_run_and_shoot",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "hip_run_and_shoot",
            category = "pistol"
        }
    }
    -- Trigger happy pierece armor
    self.definitions.pistol_pierce_enemy_armor = {
        name_id = "menu_pistol_pierce_enemy_armor",
        category = "feature",
        upgrade = {
            value = 1,
            upgrade = "pierce_enemy_armor",
            category = "pistol"
        }
    }
end)
BetterRebalanceTable:PostHook(UpgradesTweakData, "_temporary_definitions",
function(self)
    -- Hitman full armor regen upgrade
    self.definitions.temporary_regen_all_armor_1 = {
        name_id = "menu_temporary_regen_all_armor_1",
        category = "temporary",
        upgrade = {
            value = 1,
            upgrade = "regen_all_armor",
            category = "temporary"
        }
    }
end)
BetterRebalanceTable:PostHook(UpgradesTweakData, "_init_pd2_values",
function(self)
    -- Add amount of time bulletstorm should last
    self.values.player.hitman_kill_bulletstorm = { 5 }
    -- Set values to hitman armor regen
    self.values.temporary.regen_all_armor = {{ 1.5, 15 }}
    -- Yakuza hp amount
    self.values.player.passive_frenzy_health = { 0.005 }
    -- Hitman armor steps
    self.values.player.hitman_armor_increase = { 1, 1.1, 1.35 }
    -- Infiltrator HP upgrades
    self.values.player.passive_infiltrator_health_multiplier = { 1.2, 1.4, 1.6 }
    -- Crook BV upgrades
    self.values.player.level_2_crook_armor_addend = { 1.5 }
    self.values.player.level_3_crook_armor_addend = { 1.5 }
    self.values.player.level_4_crook_armor_addend = { 1.5 }
    -- Ex-president dodge chance
    self.values.player.expres_dodge_chance = { 0.05 }
    -- Burglar concealment upgrade
    self.values.player.passive_burglar_concealment_addend = { 2.5 }
    -- Buff ex-pres ICTV health storage
    self.values.player.body_armor.skill_max_health_store = { 14, 13.5, 12.5, 12, 10.5, 9.5, 8 }
    -- Gambler health pool values
    self.values.player.gambler_kill_to_health_buffer = { 0.2 }
    -- Gambler ammo pool upgrades
    self.values.player.gambler_kill_to_ammo_team = { 0.1 }
    -- Gambler hp upgrade values
    self.values.player.gambler_passive_health_multiplier = { 1.2, 1.4 }
    -- Leech swap speed value
    self.values.weapon.copr_passive_swap_speed = { 1.4 }
    -- Leech cooldown buff
    self.copr_ability_cooldown = 30
    -- Leech teammate heal
    self.values.player.copr_teammate_heal = { 0.05,	0.2 }
    -- Biker HP
    self.values.player.biker_passive_health_multiplier = { 1.1 }
    -- Biker armor
    self.values.player.biker_passive_armor_multiplier = { 1.1 }
    -- Biker cooldown upgrade
    self.values.player.passive_wild_cooldown = { 1 }
    -- Copycat burglar dodge value
    self.values.player.mrwi_burglar_dodge_chance = { 0.15 }
    -- Copycat health nerf to 15% per card
    local health_boost = 0.15
    self.values.player.mrwi_health_multiplier = { 1.15, 1.3, 1.45, 1.6 }
    -- Trigger happy run and gun
    self.values.pistol.hip_run_and_shoot = { true }
    -- Trigger happy pierce armor
    self.values.pistol.pierce_enemy_armor = { true }
end)
-- Modify some copycat stuff
local old_mrwi_options = UpgradesTweakData.mrwi_deck9_options
function UpgradesTweakData.mrwi_deck9_options()
    local options = old_mrwi_options()
    options[7].upgrades = {
        "player_mrwi_burglar_dodge_chance",
        "player_stand_still_crouch_camouflage_bonus_1",
		"player_stand_still_crouch_camouflage_bonus_2",
		"player_stand_still_crouch_camouflage_bonus_3",
		"player_alarm_pager_speed_multiplier"
    }
    return options
end
-- Perkdeck description numbers
BetterRebalanceTable:PostHook(UpgradesTweakData, "init",
function(self)
    -- Muscle
    self.specialization_descs[2][3].multiperk = "10%"
    self.specialization_descs[2][3].multiperk2 = "50%"
    self.specialization_descs[2][3].multiperk3 = "2"
    self.specialization_descs[2][3].multiperk4 = "15"
    -- Hitman
    self.specialization_descs[5][1].multiperk = "50%"
    self.specialization_descs[5][1].multiperk2 = "100%"
    self.specialization_descs[5][3].multiperk = "20"
    self.specialization_descs[5][3].multiperk2 = "5"
    self.specialization_descs[5][5].multiperk = "50%"
    self.specialization_descs[5][5].multiperk2 = "110%"
    self.specialization_descs[5][7].multiperk = "50%"
    self.specialization_descs[5][7].multiperk2 = "135%"
    self.specialization_descs[5][9].multiperk = "1.5"
    self.specialization_descs[5][9].multiperk2 = "15"
    self.specialization_descs[5][9].multiperk3 = "30"
    self.specialization_descs[5][9].multiperk4 = "1.5"
    -- Crook
    self.specialization_descs[6][9].multiperk = "10%"
    self.specialization_descs[6][9].multiperk2 = "+20"
    -- Burglar
    self.specialization_descs[7][3].multiperk = "10%"
    self.specialization_descs[7][3].multiperk2 = "20%"
    self.specialization_descs[7][3].multiperk3 = "+5"
    -- Infiltrator
    self.specialization_descs[8][3].multiperk = "20%"
    self.specialization_descs[8][5].multiperk = "20%"
    self.specialization_descs[8][5].multiperk2 = "10%"
    self.specialization_descs[8][7].multiperk = "20%"
    self.specialization_descs[8][7].multiperk2 = "6"
    -- Gambler
    self.specialization_descs[10][1].multiperk = "20"
    self.specialization_descs[10][1].multiperk2 = "20%"
    self.specialization_descs[10][3].multiperk = "10%"
    self.specialization_descs[10][3].multiperk2 = "5%"
    self.specialization_descs[10][5].multiperk = "20%"
    self.specialization_descs[10][7].multiperk = "20%"
    self.specialization_descs[10][9].multiperk = "75%"
    self.specialization_descs[10][9].multiperk2 = "1"
    -- Yakuza
    self.specialization_descs[12][1].multiperk = "25%"
    self.specialization_descs[12][1].multiperk2 = "20%"
    self.specialization_descs[12][1].multiperk3 = "50%"
    self.specialization_descs[12][1].multiperk4 = "25%"
    self.specialization_descs[12][7].multiperk = "25%"
    self.specialization_descs[12][7].multiperk2 = "20%"
    self.specialization_descs[12][7].multiperk3 = "80%"
    self.specialization_descs[12][9].multiperk = "0"
    -- Ex-President
    self.specialization_descs[13][9].multiperk = "5%"
    -- Biker
    self.specialization_descs[16][3].multiperk = "20%"
    self.specialization_descs[16][3].multiperk2 = "10"
    self.specialization_descs[16][5].multiperk = "10%"
    self.specialization_descs[16][7].multiperk = "10%"
    self.specialization_descs[16][9].multiperk = "1"
    -- Hacker
    self.specialization_descs[21][3].multiperk = "15%"
    self.specialization_descs[21][9].multiperk = "15%"
    -- Leech
    self.specialization_descs[22][3].multiperk = "80%"
    self.specialization_descs[22][5].multiperk = "10"
    self.specialization_descs[22][5].multiperk2 = "1"
    self.specialization_descs[22][5].multiperk3 = "20%"
    self.specialization_descs[22][7].multiperk = "40%"
    self.specialization_descs[22][9].multiperk = "10%"
end)