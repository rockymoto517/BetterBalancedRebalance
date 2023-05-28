-- new presets are at the bottom, not editing the existing ones for the sake of custom weapons and vanilla weapons i don't want to touch
WeaponFalloffTemplate = WeaponFalloffTemplate or class()
function WeaponFalloffTemplate.setup_weapon_falloff_templates()
	local weapon_falloff_templates = { ASSAULT_FALL_LOW = {} }
	weapon_falloff_templates.ASSAULT_FALL_LOW.optimal_distance = 0
	weapon_falloff_templates.ASSAULT_FALL_LOW.optimal_range = 3000
	weapon_falloff_templates.ASSAULT_FALL_LOW.near_falloff = 0
	weapon_falloff_templates.ASSAULT_FALL_LOW.far_falloff = 1000
	weapon_falloff_templates.ASSAULT_FALL_LOW.near_multiplier = 1
	weapon_falloff_templates.ASSAULT_FALL_LOW.far_multiplier = 1
	weapon_falloff_templates.ASSAULT_FALL_MEDIUM = {
		optimal_distance = 0,
		optimal_range = 3200,
		near_falloff = 0,
		far_falloff = 1000,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.ASSAULT_FALL_HIGH = {
		optimal_distance = 0,
		optimal_range = 4000,
		near_falloff = 0,
		far_falloff = 1000,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.SHOTGUN_FALL_PRIMARY_LOW = {
		optimal_distance = 200,
		optimal_range = 600,
		near_falloff = 0,
		far_falloff = 400,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.SHOTGUN_FALL_PRIMARY_MEDIUM = {
		optimal_distance = 700,
		optimal_range = 500,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.SHOTGUN_FALL_PRIMARY_HIGH = {
		optimal_distance = 700,
		optimal_range = 800,
		near_falloff = 0,
		far_falloff = 400,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.SNIPER_FALL_LOW = {
		optimal_distance = 400,
		optimal_range = 1600,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 1.1
	}
	weapon_falloff_templates.SNIPER_FALL_MEDIUM = {
		optimal_distance = 400,
		optimal_range = 1500,
		near_falloff = 200,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 1.5
	}
	weapon_falloff_templates.SNIPER_FALL_HIGH = {
		optimal_distance = 500,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 1000,
		near_multiplier = 1,
		far_multiplier = 1.8
	}
	weapon_falloff_templates.SNIPER_FALL_VERYHIGH = {
		optimal_distance = 600,
		optimal_range = 2000,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 1.3
	}
	weapon_falloff_templates.LMG_FALL_MEDIUM = {
		optimal_distance = 0,
		optimal_range = 1700,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.LMG_FALL_HIGH = {
		optimal_distance = 0,
		optimal_range = 1800,
		near_falloff = 0,
		far_falloff = 700,
		near_multiplier = 1,
		far_multiplier = 0.8
	}
	weapon_falloff_templates.AKI_PISTOL_FALL_AUTO = {
		optimal_distance = 300,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.AKI_PISTOL_FALL_LOW = {
		optimal_distance = 300,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.AKI_PISTOL_FALL_MEDIUM = {
		optimal_distance = 300,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 400,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.AKI_PISTOL_FALL_HIGH = {
		optimal_distance = 300,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.AKI_PISTOL_FALL_VERYHIGH = {
		optimal_distance = 300,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 600,
		near_multiplier = 1,
		far_multiplier = 0.8
	}
	weapon_falloff_templates.AKI_SMG_FALL_LOW = {
		optimal_distance = 500,
		optimal_range = 900,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1.3,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.AKI_SMG_FALL_MEDIUM = {
		optimal_distance = 400,
		optimal_range = 1200,
		near_falloff = 100,
		far_falloff = 400,
		near_multiplier = 1.3,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.AKI_SMG_FALL_HIGH = {
		optimal_distance = 300,
		optimal_range = 1700,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1.2,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.AKI_SHOTGUN_FALL_LOW = {
		optimal_distance = 500,
		optimal_range = 500,
		near_falloff = 0,
		far_falloff = 200,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.AKI_SHOTGUN_FALL_MEDIUM = {
		optimal_distance = 500,
		optimal_range = 500,
		near_falloff = 0,
		far_falloff = 600,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.AKI_SHOTGUN_FALL_HIGH = {
		optimal_distance = 500,
		optimal_range = 600,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.PISTOL_FALL_AUTO = {
		optimal_distance = 300,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.PISTOL_FALL_LOW = {
		optimal_distance = 500,
		optimal_range = 700,
		near_falloff = 0,
		far_falloff = 100,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.PISTOL_FALL_MEDIUM = {
		optimal_distance = 700,
		optimal_range = 1000,
		near_falloff = 200,
		far_falloff = 100,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.PISTOL_FALL_HIGH = {
		optimal_distance = 1000,
		optimal_range = 1000,
		near_falloff = 500,
		far_falloff = 100,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.PISTOL_FALL_VERYHIGH = {
		optimal_distance = 1000,
		optimal_range = 1000,
		near_falloff = 500,
		far_falloff = 100,
		near_multiplier = 1,
		far_multiplier = 0.8
	}
	weapon_falloff_templates.PISTOL_FALL_SUPER = {
		optimal_distance = 0,
		optimal_range = 3000,
		near_falloff = 0,
		far_falloff = 1000,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.SMG_FALL_LOW = {
		optimal_distance = 0,
		optimal_range = 1200,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.SMG_FALL_MEDIUM = {
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.SMG_FALL_HIGH = {
		optimal_distance = 0,
		optimal_range = 2000,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.SHOTGUN_FALL_SECONDARY_LOW = {
		optimal_distance = 500,
		optimal_range = 400,
		near_falloff = 0,
		far_falloff = 400,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.SHOTGUN_FALL_SECONDARY_MEDIUM = {
		optimal_distance = 500,
		optimal_range = 500,
		near_falloff = 0,
		far_falloff = 400,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.SHOTGUN_FALL_SECONDARY_HIGH = {
		optimal_distance = 500,
		optimal_range = 500,
		near_falloff = 400,
		far_falloff = 0,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.SHOTGUN_FALL_SECONDARY_VERYHIGH = {
		optimal_distance = 400,
		optimal_range = 600,
		near_falloff = 0,
		far_falloff = 200,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.SPECIAL_LOW = {
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.SNIPER_BBR_LOW = {	-- contractor grom rattle r700
		optimal_distance = 0,
		optimal_range = 3000,
		near_falloff = 0,
		far_falloff = 0,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.AKI_SMG_BBR_LOW	= {	-- akimbo SMGs with speedpull
		optimal_distance = 0,
		optimal_range = 1100,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	weapon_falloff_templates.AKI_SMG_BBR_HIGH = {	-- goes to akimbo SMGs without speedpull
		optimal_distance = 0,
		optimal_range = 1600,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.SMG_BBR_LOW	= {	-- tatonka uzi mp40 akgen SMGs with speedpull
		optimal_distance = 0,
		optimal_range = 1800,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.6
	}
	weapon_falloff_templates.SMG_BBR_HIGH = {	--no speedpull SMGs
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 0,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.PISTOL_BBR_HIGH = {	-- every pistol besides ap
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 0,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.AKI_PISTOL_BBR_HIGH = {	-- every akimbo pistol besides autos and ap
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 0,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.LMG_BBR_HIGH = {	-- M60 and akron
		optimal_distance = 0,
		optimal_range = 2000,
		near_falloff = 0,
		far_falloff = 0,
		near_multiplier = 1,
		far_multiplier = 1
	}
	weapon_falloff_templates.SPECIAL_BBR_LOW = {	-- hailstorm
		optimal_distance = 0,
		optimal_range = 1800,
		near_falloff = 0,
		far_falloff = 300,
		near_multiplier = 1,
		far_multiplier = 0.7
	}
	weapon_falloff_templates.SHOTGUN_BBR_LOW = {	-- izhma steakout vd12 grimm goliath
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 2500,
		near_multiplier = 1,
		far_multiplier = 0
	}
	weapon_falloff_templates.SHOTGUN_BBR_MEDIUM = {	-- m1014 predator streetsweeper judge
		optimal_distance = 0,
		optimal_range = 2000,
		near_falloff = 0,
		far_falloff = 2000,
		near_multiplier = 1,
		far_multiplier = 0
	}
	weapon_falloff_templates.SHOTGUN_BBR_HIGH = {	-- both reinfelds raven mosconi tac deimos argos loco gsps
		optimal_distance = 0,
		optimal_range = 2500,
		near_falloff = 0,
		far_falloff = 2500,
		near_multiplier = 1,
		far_multiplier = 0
	}
	weapon_falloff_templates.SHOTGUN_BBR_VERYHIGH = {	-- double barrels breaker
		optimal_distance = 0,
		optimal_range = 3000,
		near_falloff = 0,
		far_falloff = 3000,
		near_multiplier = 1,
		far_multiplier = 0
	}
	weapon_falloff_templates.AKI_SHOTGUN_BBR_LOW = {	-- akimbo shotguns
		optimal_distance = 0,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 2000,
		near_multiplier = 1,
		far_multiplier = 0
	}
 	return weapon_falloff_templates
end