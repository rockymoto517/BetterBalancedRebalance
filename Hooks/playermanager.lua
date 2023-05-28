-- Initialize fields
BetterRebalanceTable:PostHook(PlayerManager, "init",
function(self)
    self._hitman_bulletstorm_kills = 0
    self._hitman_bulletstorm_time = self:upgrade_value("player", "hitman_kill_bulletstorm", 0)
    self._gambler_pool = 0
    self._gambler_pool_heal_amount = self:upgrade_value("player", "gambler_kill_to_health_buffer", 0)
end)
-- Hitman bulletstorm implementation
BetterRebalanceTable:PostHook(PlayerManager, "on_killshot",
function(self)
    if self:has_category_upgrade("player", "hitman_kill_bulletstorm") then
        self._hitman_bulletstorm_kills = self._hitman_bulletstorm_kills + 1
        if self._hitman_bulletstorm_kills >= 20 then
            self:player_unit():sound():play("perkdeck_cooldown_over")
            self:add_to_temporary_property("bullet_storm", self._hitman_bulletstorm_time or 0, 1)
            self._hitman_bulletstorm_kills = 0
        end
    end
    if self:has_category_upgrade("player", "gambler_kill_to_health_buffer") then
        self:increment_gambler_pool()
    end
end)
-- Hitman armor steps implementation
-- Crook BV upgrades
local old_body_armor = PlayerManager.body_armor_skill_addend
function PlayerManager:body_armor_skill_addend(override_armor)
    local addend = old_body_armor(self, override_armor)
    if self:has_category_upgrade("player", "hitman_armor_increase") then
        local health_multiplier = self:health_skill_multiplier()
        local max_health = (PlayerDamage._HEALTH_INIT + self:health_skill_addend()) * health_multiplier
        addend = addend + max_health * self:upgrade_value("player", "hitman_armor_increase", 0.65)
    end
    addend = addend + self:upgrade_value("player", 
        tostring(override_armor or managers.blackmarket:equipped_armor(true, true)) .. "_crook_armor_addend", 0)
    return addend
end
-- Ex-president dodge chance
local old_dodge_chance = PlayerManager.skill_dodge_chance
function PlayerManager:skill_dodge_chance(running, crouching, on_zipline, override_armor, detection_risk)
    local chance = old_dodge_chance(self, running, crouching, on_zipline, override_armor, detection_risk)
    chance = chance + self:upgrade_value("player", "expres_dodge_chance", 0)
    -- Copycat dodge chance
    chance = chance + self:upgrade_value("player", "mrwi_burglar_dodge_chance", 0)
    return chance
end
function PlayerManager:exclude_player_upgrades(peer)
    self._exclude_from_upgrades[peer] = not self._exclude_from_upgrades[peer]
end
local old_health_multiplier = PlayerManager.health_skill_multiplier
function PlayerManager:health_skill_multiplier()
    local multiplier = old_health_multiplier(self)
    -- Infiltrator HP upgrades
    multiplier = multiplier + self:upgrade_value("player", "passive_infiltrator_health_multiplier", 1) - 1
    -- Gambler HP upgrades
    multiplier = multiplier + self:upgrade_value("player", "gambler_passive_health_multiplier", 1) - 1
    -- Biker HP upgrades
    multiplier = multiplier + self:upgrade_value("player", "biker_passive_health_multiplier", 1) - 1
    return multiplier
end
local old_armor_multiplier = PlayerManager.body_armor_skill_multiplier
function PlayerManager:body_armor_skill_multiplier(override_armor)
	local multiplier = old_armor_multiplier(self, override_armor)
    -- Biker armor multiplier
    multiplier = multiplier + self:upgrade_value("player", "biker_passive_armor_multiplier", 1) - 1
	return multiplier
end
-- Gambler function thingy
function PlayerManager:increment_gambler_pool()
    self._gambler_pool = self._gambler_pool + 1
    if self._gambler_pool >= 20 then
        local unit = self:player_unit()
        if alive(unit) and not unit:character_damage():is_downed() then
            local max_health = unit:character_damage():_max_health()
            unit:character_damage():restore_health(self._gambler_pool_heal_amount * max_health, true)
            self._gambler_pool = 0
        end
        if self:has_category_upgrade("player", "gambler_kill_to_ammo_team") then
            managers.network:session():send_to_peers_synched("sync_unit_event_id_16", 
                self:local_player(), "inventory", 10)
            self:add_ammo_to_pool(self:upgrade_value("player", "gambler_kill_to_ammo_team", 0))
            self:player_unit():sound():play("perkdeck_cooldown_over")
        end
    end
end
-- Helper function for gambler
function PlayerManager:add_ammo_to_pool(percent)
	local player = self:local_player()
	if not player then
		return
	end
    for id,weapon in pairs(player:inventory():available_selections()) do
        if alive(weapon.unit) then
            local ammo_add = weapon.unit:base():get_ammo_max()
            ammo_add = ammo_add * percent
            -- Give at least 1 bullet + only use integral values
            ammo_add = math.round(ammo_add)
            ammo_add = math.max(1, ammo_add)
            weapon.unit:base():add_ammo_to_pool(ammo_add, weapon.unit:base():selection_index())
        end
    end
end
-- Maniac multi-stack implementation
-- Have to override function :/
function PlayerManager:_update_damage_dealt(t, dt)
	local local_peer_id = managers.network:session() and managers.network:session():local_peer():id()
	if not local_peer_id or not self:has_category_upgrade("player", "cocaine_stacking") then
		return
	end
	self._damage_dealt_to_cops_t1 = self._damage_dealt_to_cops_t1 or t + (tweak_data.upgrades.cocaine_stacks_tick_t or 1)
    self._damage_dealt_to_cops_t2 = self._damage_dealt_to_cops_t2 or t + (tweak_data.upgrades.cocaine_stacks_tick_t or 1)
	self._damage_dealt_to_cops_decay_t1 = self._damage_dealt_to_cops_decay_t1 or t + (tweak_data.upgrades.cocaine_stacks_decay_t or 5)
    self._damage_dealt_to_cops_decay_t2 = self._damage_dealt_to_cops_decay_t2 or t + (tweak_data.upgrades.cocaine_stacks_decay_t or 5)
	local cocaine_stack = self:get_synced_cocaine_stacks(local_peer_id)
	local amount = cocaine_stack and cocaine_stack.amount or 0
	local new_amount = amount
	if self._damage_dealt_to_cops_t1 <= t then
		self._damage_dealt_to_cops_t1 = t + (tweak_data.upgrades.cocaine_stacks_tick_t or 1)
		local new_stacks = (self._damage_dealt_to_cops or 0) * (tweak_data.gui.stats_present_multiplier or 10) * self:upgrade_value("player", "cocaine_stacking", 0)
		self._damage_dealt_to_cops = 0
		new_amount = new_amount + math.min(new_stacks, tweak_data.upgrades.max_cocaine_stacks_per_tick or 20)
    elseif self._damage_dealt_to_cops_t2 then
        self._damage_dealt_to_cops_t2 = t + (tweak_data.upgrades.cocaine_stacks_tick_t or 1)
		local new_stacks = (self._damage_dealt_to_cops or 0) * (tweak_data.gui.stats_present_multiplier or 10) * self:upgrade_value("player", "cocaine_stacking", 0)
		self._damage_dealt_to_cops = 0
		new_amount = new_amount + math.min(new_stacks, tweak_data.upgrades.max_cocaine_stacks_per_tick or 20)
    end
	if self._damage_dealt_to_cops_decay_t1 <= t then
		self._damage_dealt_to_cops_decay_t1 = t + (tweak_data.upgrades.cocaine_stacks_decay_t or 5)
		local decay = amount * (tweak_data.upgrades.cocaine_stacks_decay_percentage_per_tick or 0)
		decay = decay + (tweak_data.upgrades.cocaine_stacks_decay_amount_per_tick or 20) * self:upgrade_value("player", "cocaine_stacks_decay_multiplier", 1)
		new_amount = new_amount - decay
	end
	new_amount = math.clamp(math.floor(new_amount), 0, tweak_data.upgrades.max_total_cocaine_stacks or 2047)
	if new_amount ~= amount then
		self:update_synced_cocaine_stacks_to_peers(new_amount, self:upgrade_value("player", "sync_cocaine_upgrade_level", 1), self:upgrade_level("player", "cocaine_stack_absorption_multiplier", 0))
	end
end
-- Biker reduced cooldown near player implementation
-- Another function override :/
function PlayerManager:chk_wild_kill_counter(killed_unit, variant)
	local player_unit = self:player_unit()
	if not player_unit then
		return
	end
	if CopDamage.is_civilian(killed_unit:base()._tweak_table) then
		return
	end
	local damage_ext = player_unit:character_damage()
	if damage_ext and (managers.player:has_category_upgrade("player", "wild_health_amount") or managers.player:has_category_upgrade("player", "wild_armor_amount")) then
		self._wild_kill_triggers = self._wild_kill_triggers or {}
		local t = Application:time()
		while self._wild_kill_triggers[1] and self._wild_kill_triggers[1] <= t do
			table.remove(self._wild_kill_triggers, 1)
		end
		if tweak_data.upgrades.wild_max_triggers_per_time <= #self._wild_kill_triggers then
			return
		end
		local trigger_cooldown = tweak_data.upgrades.wild_trigger_time or 30
		local wild_health_amount = managers.player:upgrade_value("player", "wild_health_amount", 0)
		local wild_armor_amount = managers.player:upgrade_value("player", "wild_armor_amount", 0)
		local less_health_wild_armor = managers.player:upgrade_value("player", "less_health_wild_armor", 0)
		local less_armor_wild_health = managers.player:upgrade_value("player", "less_armor_wild_health", 0)
		local less_health_wild_cooldown = managers.player:upgrade_value("player", "less_health_wild_cooldown", 0)
		local less_armor_wild_cooldown = managers.player:upgrade_value("player", "less_armor_wild_cooldown", 0)
		local missing_health_ratio = math.clamp(1 - damage_ext:health_ratio(), 0, 1)
		local missing_armor_ratio = math.clamp(1 - damage_ext:armor_ratio(), 0, 1)
		if less_health_wild_armor ~= 0 and less_health_wild_armor[1] ~= 0 then
			local missing_health_stacks = math.floor(missing_health_ratio / less_health_wild_armor[1])
			wild_armor_amount = wild_armor_amount + less_health_wild_armor[2] * missing_health_stacks
		end
		if less_armor_wild_health ~= 0 and less_armor_wild_health[1] ~= 0 then
			local missing_armor_stacks = math.floor(missing_armor_ratio / less_armor_wild_health[1])
			wild_health_amount = wild_health_amount + less_armor_wild_health[2] * missing_armor_stacks
		end
		damage_ext:restore_health(wild_health_amount, true, false)
		damage_ext:restore_armor(wild_armor_amount)
		if less_health_wild_cooldown ~= 0 and less_health_wild_cooldown[1] ~= 0 then
			local missing_health_stacks = math.floor(missing_health_ratio / less_health_wild_cooldown[1])
			trigger_cooldown = trigger_cooldown - less_health_wild_cooldown[2] * missing_health_stacks
		end
		if less_armor_wild_cooldown ~= 0 and less_armor_wild_cooldown[1] ~= 0 then
			local missing_armor_stacks = math.floor(missing_armor_ratio / less_armor_wild_cooldown[1])
			trigger_cooldown = trigger_cooldown - less_armor_wild_cooldown[2] * missing_armor_stacks
		end
        -- reduce biker cooldown by 1s always
        trigger_cooldown = trigger_cooldown - managers.player:upgrade_value("player", "passive_wild_cooldown", 0)
        -- end
		local trigger_time = t + math.max(trigger_cooldown, 0)
		local insert_index = #self._wild_kill_triggers
		while insert_index > 0 and trigger_time < self._wild_kill_triggers[insert_index] do
			insert_index = insert_index - 1
		end
		table.insert(self._wild_kill_triggers, insert_index + 1, trigger_time)
	end
end