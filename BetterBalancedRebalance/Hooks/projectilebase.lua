local old_throw_projectile = ProjectileBase.throw_projectile
-- Redirect our custom defined projectiles to our own function
function ProjectileBase.throw_projectile(projectile_type, ...)
	if projectile_type == "rocket_frag" or projectile_type == "rocket_ray_frag" then
        return ProjectileBase.throw_projectile_rocket(projectile_type, ...)
    else
        return old_throw_projectile(projectile_type, ...)
    end
end
-- Almost the same as the original, just force grab the local unit entry
-- instead of the normal unit entry
function ProjectileBase.throw_projectile_rocket(projectile_type, pos, dir, owner_peer_id)
	if not ProjectileBase.check_time_cheat(projectile_type, owner_peer_id) then
		return
	end
	local tweak_entry = tweak_data.blackmarket.projectiles[projectile_type]
	local unit_name = Idstring(tweak_entry.local_unit)
	local unit = World:spawn_unit(unit_name, pos, Rotation(dir, math.UP))
	if owner_peer_id and managers.network:session() then
		local peer = managers.network:session():peer(owner_peer_id)
		local thrower_unit = peer and peer:unit()
		if alive(thrower_unit) then
			unit:base():set_thrower_unit(thrower_unit, true, false)
			if not tweak_entry.throwable and thrower_unit:movement() and thrower_unit:movement():current_state() then
				unit:base():set_weapon_unit(thrower_unit:movement():current_state()._equipped_unit)
			end
		end
	end
	unit:base():throw({
		dir = dir,
		projectile_entry = projectile_type
	})
	if unit:base().set_owner_peer_id then
		unit:base():set_owner_peer_id(owner_peer_id)
	end
	local projectile_type_index = tweak_data.blackmarket:get_index_from_projectile_id(projectile_type)
	managers.network:session():send_to_peers_synched("sync_throw_projectile", unit:id() ~= -1 and unit or nil, pos, dir, projectile_type_index, owner_peer_id or 0)
	if tweak_data.blackmarket.projectiles[projectile_type].impact_detonation then
		unit:damage():add_body_collision_callback(callback(unit:base(), unit:base(), "clbk_impact"))
		unit:base():create_sweep_data()
	end
	return unit
end