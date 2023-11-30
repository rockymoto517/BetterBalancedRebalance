-- Force client-sidedness on our own projectiles
BetterRebalanceTable:PostHook(ProjectileWeaponBase, "init", function(self)
	if
		self._projectile_type == "rocket_ray_frag"
		or self._projectile_type == "rocket_frag"
	then
		self._client_authoritative = true
	end
end)
