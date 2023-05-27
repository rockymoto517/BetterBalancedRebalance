local init_original = RaycastWeaponBase.init
function RaycastWeaponBase:init(...)
	init_original(self, ...)
	-- Shock and Awe shotgun interaction restoration
	if table.contains(tweak_data.weapon[self._name_id].categories, "shotgun") then
		self.SHIELD_KNOCK_BACK_CHANCE = tweak_data.upgrades.values.player.shield_knock_bullet.chance / tweak_data.weapon[self._name_id].rays
	end
end
local old_run_and_shoot = RaycastWeaponBase.run_and_shoot_allowed
function RaycastWeaponBase:run_and_shoot_allowed()
    return old_run_and_shoot(self) or managers.player:has_category_upgrade("pistol", "hip_run_and_shoot") 
        and self:weapon_tweak_data().categories[1] == "pistol"
end
-- Use a hashmap to get range values quickly
function FlameBulletBase:get_range_map()
    local range_map = {
        rota = "1000",
        basset = "1000",
        striker = "1500",
        judge = "1500",
        spas12 = "1500",
        benelli = "1500",
        saiga = "1000",
        aa12 = "1000",
        sko12 = "1000",
        x_rota = "1000",
        x_basset = "1000",
        x_judge = "1500",
        x_sko12 = "1000",
        r870 = "2000",
        m590 = "2000",
        ksg = "2000",
        m1897 = "2000",
        supernova = "2000",
        serbu = "2000",
        ultima = "2000",
        m37 = "2500",
        coach = "2500",
        boot = "2500",
        huntsman = "2500",
        b682 = "2500"
    }
    return range_map
end
-- Variable range depending on the shotgun used
-- Have to override function L
function FlameBulletBase:give_fire_damage(col_ray, weapon_unit, user_unit, damage, armor_piercing, 
    shield_knock, knock_down, stagger, variant)
	local fire_dot_data = nil
	local weap_base = weapon_unit:base()
	local ammo_data = weap_base and weap_base.ammo_data and weap_base:ammo_data()
	if ammo_data and ammo_data.bullet_class == "FlameBulletBase" then
		fire_dot_data = ammo_data.fire_dot_data
	else
		local weapon_tweak_data = weap_base and weap_base.weapon_tweak_data and weap_base:weapon_tweak_data()
		fire_dot_data = weapon_tweak_data and weapon_tweak_data.fire_dot_data
	end
    -- Check if the proper entries exist, assign proper max distance
    if fire_dot_data and fire_dot_data.dot_trigger_max_distance and self:get_range_map()[weap_base:get_name_id()] then
        fire_dot_data.dot_trigger_max_distance = self:get_range_map()[weap_base:get_name_id()]
    end
    -- end modified code
	local action_data = {
		variant = variant or "fire",
		damage = damage,
		weapon_unit = weapon_unit,
		attacker_unit = user_unit,
		col_ray = col_ray,
		armor_piercing = armor_piercing,
		shield_knock = shield_knock,
		knock_down = knock_down,
		stagger = stagger,
		fire_dot_data = fire_dot_data
	}
	local defense_data = col_ray.unit:character_damage():damage_fire(action_data)
	return defense_data
end