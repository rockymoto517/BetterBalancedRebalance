BetterRebalanceTable:PostHook(NewRaycastWeaponBase, "_update_stats_values",
function(self)
    -- Make trigger happy give pistols shield piercing
    if managers.player:has_category_upgrade("pistol", "pierce_enemy_armor") then
        if self:weapon_tweak_data().categories[1] == "pistol" and not self._can_shoot_through_enemy 
            and self._armor_piercing_chance ~= 1
        then
            self._can_shoot_through_enemy = true
            self._armor_piercing_chance = 1
        end
    end
    -- Reimplement movement speed penalties
    self._movement_penalty = self:weapon_tweak_data().movement_speed
    -- Make iron man basic remove speed penalties
    if managers.player:has_category_upgrade("player", "armor_multiplier") then
        self._movement_penalty = 1
    end
end)
BetterRebalanceTable:PostHook(NewRaycastWeaponBase, "init",
function(self)
    -- initialize movement speed penalties
    self._movement_penalty = self:weapon_tweak_data().movement_speed
end)