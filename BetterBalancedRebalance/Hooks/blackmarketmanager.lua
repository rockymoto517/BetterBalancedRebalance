-- Burglar concealment visual
local old_conceal_modifier = BlackMarketManager.concealment_modifier
function BlackMarketManager:concealment_modifier(type, upgrade_level)
    modifier = old_conceal_modifier(self, type, upgrade_level)
    if type == "armors" then
        modifier = modifier + managers.player:upgrade_value("player", "passive_burglar_concealment_addend", 0)
    end
    return modifier
end
-- Burglar concealment functional
local old_visibility_modifiers = BlackMarketManager.visibility_modifiers
function BlackMarketManager:visibility_modifiers()
    local skill_bonuses = old_visibility_modifiers(self)
    skill_bonuses = skill_bonuses - managers.player:upgrade_value("player", "passive_burglar_concealment_addend", 0)
    return skill_bonuses
end