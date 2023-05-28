local __perkdeck_exclusion_upgrades = {
    health = "passive_multiplier" -- Crew Chief
}
-- Reload bug fix
local reload_fix_start_action_reload_enter = PlayerStandard._start_action_reload_enter
function PlayerStandard:_start_action_reload_enter(t, ...)
	local weapon = self._equipped_unit:base()
	if weapon and weapon._current_reload_speed_multiplier and weapon:can_reload() then
		weapon._current_reload_speed_multiplier = nil
	end
	reload_fix_start_action_reload_enter(self, t, ...)
end
-- Increase gambler pool on ammo pickup
-- Unfortunately have to override the function :/
function PlayerStandard:_find_pickups(t)
	local pickups = World:find_units_quick("sphere", self._unit:movement():m_pos(), self._pickup_area, self._slotmask_pickups)
	local grenade_tweak = tweak_data.blackmarket.projectiles[managers.blackmarket:equipped_grenade()]
	local may_find_grenade = not grenade_tweak.base_cooldown and managers.player:has_category_upgrade("player", "regain_throwable_from_ammo")
	for _, pickup in ipairs(pickups) do
		if pickup:pickup() and pickup:pickup():pickup(self._unit) then
			if may_find_grenade then
				local data = managers.player:upgrade_value("player", "regain_throwable_from_ammo", nil)
				if data and not managers.player:got_max_grenades() then
					managers.player:add_coroutine("regain_throwable_from_ammo", PlayerAction.FullyLoaded, managers.player, data.chance, data.chance_inc)
				end
			end
            -- Increment gambler on ammo pickup
            if managers.player:has_category_upgrade("player", "gambler_kill_to_health_buffer") then
                managers.player:increment_gambler_pool()
            end
			for id, weapon in pairs(self._unit:inventory():available_selections()) do
				managers.hud:set_ammo_amount(id, weapon.unit:base():ammo_info())
			end
		end
	end
end
-- Leech swap speed multiplier
local old_get_swap_multi = PlayerStandard._get_swap_speed_multiplier
function PlayerStandard:_get_swap_speed_multiplier()
    local multiplier = old_get_swap_multi(self)
    multiplier = multiplier * managers.player:upgrade_value("weapon", "copr_passive_swap_speed", 1)
    return multiplier
end