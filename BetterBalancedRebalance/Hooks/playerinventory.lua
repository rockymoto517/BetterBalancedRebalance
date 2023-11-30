-- Add our own network event ID
BetterRebalanceTable:PostHook(PlayerInventory, "init", function()
	PlayerInventory._NET_EVENTS.BBR_share_ammo = 10
end)

-- Add a handler for our own network event
local old_sync_net_event = PlayerInventory.sync_net_event
function PlayerInventory:sync_net_event(event, peer)
	if self._unit:base().is_local_player then
		return
	end
	if event == PlayerInventory._NET_EVENTS.BBR_share_ammo then
		local _player = managers.player:local_player()
		if
			alive(_player)
			and _player:character_damage()
			and not _player:character_damage():is_downed()
			and not _player:character_damage():dead()
		then
			managers.player:add_ammo_to_pool(0.05)
		end
	else
		old_sync_net_event(self, event, peer)
	end
end
