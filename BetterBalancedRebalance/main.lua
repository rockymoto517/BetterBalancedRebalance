-- Create global class-like object for convenience
if not BetterRebalanceTable then
    BetterRebalanceTable = {}
    -- Initialize fields
    function BetterRebalanceTable:init()
        BetterRebalanceTable.mod_path = ModPath 
        BetterRebalanceTable.save_path = SavePath 
        BetterRebalanceTable.loaded_scripts = {}
        dofile(self.mod_path.."Class/logs.lua")
        self:load_localization()
    end
    -- Too lazy to rename every posthook
    function BetterRebalanceTable:PostHook(_class, _method, _func)
        Hooks:PostHook(_class, _method,
            "BetterRebalanceTable_".._method, _func)
    end
    -- Same with prehooks
    function BetterRebalanceTable:PreHook(_class, _method, _func)
        Hooks:PreHook(_class, _method,
            "BetterRebalanceTable_".._method, _func)
    end
    -- Load localization file
    function BetterRebalanceTable:load_localization()
        Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_BetterRebalanceTable", -- Zamn that's a long id
        function(loc)
            loc:load_localization_file(BetterRebalanceTable.mod_path .. "Loc/en.json")
        end)
    end
    BetterRebalanceTable:init()
end
-- Regex magic to load lua scripts via Hoppip
-- TODO: ask him for permission xd
if RequiredScript and not BetterRebalanceTable.loaded_scripts[Requiredscript] then
    local script_name = BetterRebalanceTable.mod_path ..
                        RequiredScript:gsub(".+/(.+)", "Hooks/%1.lua")
    if io.file_is_readable(script_name) then 
        dofile(script_name)
    end
    BetterRebalanceTable.loaded_scripts[RequiredScript] = true
end
