-- Use our custom defined rocket units
BetterRebalanceTable:PostHook(
	BlackMarketTweakData,
	"_init_projectiles",
	function(self)
		self.projectiles.rocket_ray_frag.local_unit =
			"wpn_third_ray_fired_rocket_local"
		self.projectiles.rocket_frag.local_unit =
			"wpn_third_rpg7_fired_rocket_local"
	end
)
