local old_incendiary_fire = EnvEffectTweakData.incendiary_fire
function EnvEffectTweakData:incendiary_fire()
    local params = old_incendiary_fire(self)
    params.damage = 25
    params.fire_dot_data.dot_damage = 1
    params.fire_dot_data.dot_trigger_chance = 25
    return params
end
local old_incendiary_fire_arbiter = EnvEffectTweakData.incendiary_fire_arbiter
function EnvEffectTweakData:incendiary_fire_arbiter()
    local params = old_incendiary_fire_arbiter(self)
    params.damage = 25
    params.fire_dot_data.dot_damage = 1
    params.fire_dot_data.dot_trigger_chance = 25
    return params
end