function BetterRebalanceTable:log(level, msg)
    msg = "[RebalMod] "..msg
    if level == 1 then
        self:log_debug(msg)
    elseif level == 2 then
        self:log_warn(msg)
    elseif level == 3 then
        self:log_error(msg)
    end
end
function BetterRebalanceTable:log_debug(msg)
    log("[DEBUG] "..msg)
end
function BetterRebalanceTable:log_warn(msg)
    log("[WARN] "..msg)
end
function BetterRebalanceTable:log_error(msg)
    log("[ERROR] "..msg)
end
function BetterRebalanceTable:log_chat(msg)
    managers.chat:_receive_message(managers.chat.GAME, "DEBUG", msg, Color.red)
end
