local init_original = RaycastWeaponBase.init
function RaycastWeaponBase:init(...)
	init_original(self, ...)
	-- Shock and Awe shotgun interaction restoration
	if
		table.contains(tweak_data.weapon[self._name_id].categories, "shotgun")
	then
		self.SHIELD_KNOCK_BACK_CHANCE = tweak_data.upgrades.values.player.shield_knock_bullet.chance
			/ tweak_data.weapon[self._name_id].rays
	end
end

local old_run_and_shoot = RaycastWeaponBase.run_and_shoot_allowed
function RaycastWeaponBase:run_and_shoot_allowed()
	return old_run_and_shoot(self)
		or managers.player:has_category_upgrade(
				"pistol",
				"hip_run_and_shoot"
			)
			and self:weapon_tweak_data().categories[1] == "pistol"
end

-- Variable range depending on the shotgun used
local range_map = {
	rota = 1000,
	basset = 1000,
	striker = 1500,
	judge = 1500,
	spas12 = 1500,
	benelli = 1500,
	saiga = 1000,
	aa12 = 1000,
	sko12 = 1000,
	x_rota = 1000,
	x_basset = 1000,
	x_judge = 1500,
	x_sko12 = 1000,
	r870 = 2000,
	m590 = 2000,
	ksg = 2000,
	m1897 = 2000,
	supernova = 2000,
	serbu = 2000,
	ultima = 2000,
	m37 = 2500,
	coach = 2500,
	boot = 2500,
	huntsman = 2500,
	b682 = 2500,
}

local old_dot_data = DOTBulletBase._dot_data_by_weapon
function DOTBulletBase:_dot_data_by_weapon(weapon_unit)
	local data = old_dot_data(self, weapon_unit)
	if data ~= nil then
		if data.dot_trigger_max_distance then
			data.dot_trigger_max_distance =
				range_map[weapon_unit:base():get_name_id()]
		end
	end

	return data
end
