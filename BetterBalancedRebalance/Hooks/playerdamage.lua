-- Implement Hitman armor regen
BetterRebalanceTable:PostHook(PlayerDamage, "_calc_armor_damage", function(self)
	if self:get_real_armor() <= 0 then
		if
			managers.player:has_inactivate_temporary_upgrade(
				"temporary",
				"regen_all_armor"
			)
		then
			managers.player:activate_temporary_upgrade(
				"temporary",
				"regen_all_armor"
			)
			self:_start_regen_on_the_side(
				managers.player:temporary_upgrade_value(
					"temporary",
					"regen_all_armor",
					0
				)
			)
		end
	end
end)

-- Yakuza Frenzy HP stuffs
BetterRebalanceTable:PostHook(PlayerDamage, "init", function(self)
	local yakuza_reduction =
		managers.player:upgrade_value_nil("player", "passive_frenzy_health")
	if
		managers.player:has_category_upgrade("player", "passive_frenzy_health")
		and yakuza_reduction
	then
		self._max_health_reduction = yakuza_reduction --[[ Leaves approx 1 hp with/without a convert, maybe not with CC upgrades
                                                           But it's the best option without remaking large functions tbh ]]
	end
end)

BetterRebalanceTable:PostHook(
	PlayerDamage,
	"copr_update_attack_data",
	function(self, attack_data)
		if
			managers.player:has_activate_temporary_upgrade(
				"temporary",
				"copr_ability"
			)
		then
			local static_damage_ratio = managers.player:upgrade_value_nil(
				"player",
				"copr_static_damage_ratio"
			)
			if static_damage_ratio and attack_data.damage > 0 then
				attack_data.damage = self:_max_health() * static_damage_ratio
			end
		end
	end
)
