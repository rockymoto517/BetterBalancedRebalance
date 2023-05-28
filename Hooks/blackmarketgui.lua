--[[ Sort weapon buy menu by damage, scrapped for compatability
function BlackMarketGui:open_weapon_buy_menu(data, check_allowed_item_func)
	local blackmarket_items = managers.blackmarket:get_weapon_category(data.category) or {}
	local new_node_data = {}
	local weapon_tweak = tweak_data.weapon
	local x_id, y_id, x_level, y_level, x_unlocked, y_unlocked, x_skill, y_skill, x_gv, y_gv, x_sn, y_sn, x_locked_sort, y_locked_sort = nil
	local item_categories = {}
	local sorted_categories = {}
	local gui_categories = tweak_data.gui.buy_weapon_categories[data.category]
	for i = 1, #gui_categories do
		table.insert(item_categories, {})
	end
	local function test_weapon_categories(weapon_categories, gui_weapon_categories)
		for i, weapon_category in ipairs(gui_weapon_categories) do
			if weapon_category ~= (tweak_data.gui.buy_weapon_category_aliases[weapon_categories[i] ] or weapon_categories[i]) then
				return false
			end
		end
		return true
	end
	local function test_weapon_available(weapon_data)
		if not weapon_data.unlocked then
			local def_data = tweak_data.upgrades.definitions[weapon_data.weapon_id]
			if def_data and def_data.dlc then
				local dlc_unlocked = managers.dlc:is_dlc_unlocked(def_data.dlc)
				local gv_tweak = tweak_data.lootdrop.global_values[def_data.dlc]
				if not dlc_unlocked and gv_tweak and gv_tweak.hide_unavailable then
					return false
				end
			end
		end
		return true
	end
	for _, item in ipairs(blackmarket_items) do
		local weapon_data = tweak_data.weapon[item.weapon_id]
		for i, gui_category in ipairs(gui_categories) do
			if test_weapon_categories(weapon_data.categories, gui_category) and test_weapon_available(item) then
				table.insert(item_categories[i], item)
			end
		end
	end
	for i, category in ipairs(item_categories) do
		local category_key = table.concat(gui_categories[i], "_")
		item_categories[category_key] = category
		item_categories[i] = nil
		sorted_categories[i] = category_key
    end
	for category, items in pairs(item_categories) do
		local sort_table = {}
		for _, item in ipairs(items) do
			local id = item.weapon_id
			local unlocked = managers.blackmarket:weapon_unlocked(id)
			local gv = weapon_tweak[id] and weapon_tweak[id].global_value
			local dlc = gv and managers.dlc:global_value_to_dlc(gv)
			local level = item.level or 0
			local sn = gv and tweak_data.lootdrop.global_values[gv].sort_number or 0
			local skill = item.skill_based or false
			local func = item.func_based or false
			sort_table[id] = {
				unlocked = unlocked,
				locked_sort = sn + tweak_data.gui:get_locked_sort_number(dlc, func, skill),
				level = level,
				sort_number = sn,
				skill = skill
			}
		end
		table.sort(items, function (x, y)
			if _G.IS_VR and x.vr_locked ~= y.vr_locked then
				return not x.vr_locked
			end
			x_id = x.weapon_id
			y_id = y.weapon_id
			x_unlocked = sort_table[x_id].unlocked
			y_unlocked = sort_table[y_id].unlocked
			if x_unlocked ~= y_unlocked then
				return x_unlocked
			end
			if not x_unlocked then
				x_locked_sort = sort_table[x_id].locked_sort
				y_locked_sort = sort_table[y_id].locked_sort
				if x_locked_sort ~= y_locked_sort then
					return x_locked_sort < y_locked_sort
				end
			end
            -- Sort by damage, not by level/etc...
            local x_damage = weapon_tweak[x_id].stats.damage
            local y_damage = weapon_tweak[y_id].stats.damage
            local x_mult = weapon_tweak[x_id].stats_modifiers and weapon_tweak[x_id].stats_modifiers.damage
            local y_mult = weapon_tweak[y_id].stats_modifiers and weapon_tweak[y_id].stats_modifiers.damage
            x_damage = x_mult and x_damage*x_mult or x_damage
            y_damage = y_mult and y_damage*y_mult or y_damage
			if x_damage ~= y_damage then
                return x_damage > y_damage
            end
            -- end
			return x_id < y_id
		end)
	end
	local item_data = nil
	local rows = tweak_data.gui.WEAPON_ROWS_PER_PAGE or 3
	local columns = tweak_data.gui.WEAPON_COLUMNS_PER_PAGE or 3
	for _, category in ipairs(sorted_categories) do
		local items = item_categories[category]
		item_data = {}
		for _, item in ipairs(items) do
			table.insert(item_data, item)
		end
		local name_id = managers.localization:to_upper_text("menu_" .. category)
		table.insert(new_node_data, {
			name = category,
			category = data.category,
			prev_node_data = data,
			name_localized = name_id,
			on_create_func = data.on_create_func,
			on_create_func_name = not data.on_create_func and (data.on_create_func_name or "populate_buy_weapon"),
			on_create_data = item_data,
			identifier = self.identifiers.weapon,
			override_slots = {
				columns,
				rows
			}
		})
	end
	new_node_data.buying_weapon = true
	new_node_data.topic_id = "bm_menu_buy_weapon_title"
	new_node_data.topic_params = {
		weapon_category = managers.localization:text("bm_menu_" .. data.category)
	}
	new_node_data.blur_fade = self._data.blur_fade
	managers.menu:open_node(self._inception_node_name, {
		new_node_data
	})
end
]]
