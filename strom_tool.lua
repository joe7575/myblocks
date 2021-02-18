--
-- Techage Strom Tool
--

local Cable = techage.ElectricCable

local function chat(name, txt)
	minetest.chat_send_player(name, "[TA Power Tool] "..txt)
end

local function show_network_data(itemstack, placer, pointed_thing)
	local name = placer:get_player_name()
	if pointed_thing.type == "node" then
		local pos = pointed_thing.under or pointed_thing.above
		if pos then
			local has_power = techage.power.power_available(pos, Cable)
			chat(name, "node has power "..dump(has_power))
			local nvm = techage.get_nvm(pos)
			local netw = techage.networks.has_network("ele1", nvm.ele1 and nvm.ele1.netID)
			chat(name, "node has network "..dump(netw ~= nil))
			if netw then
				chat(name, string.format("available1 = %u, available2 = %u, needed1 = %u, needed2 = %u", 
						(netw.available1 or 0), (netw.available2 or 0), (netw.needed1 or 0), (netw.needed2 or 0)))
				chat(name, string.format("#gen1 = %u, #gen2 = %u, #con1 = %u, #con2 = %u", 
						#(netw.gen1 or {}), #(netw.gen2 or {}), #(netw.con1 or {}), #(netw.con2 or {})))
				chat(name, "Max con1 power needed: "..techage.power.get_con1_sum(netw, "ele1"))
			end
		end
	end
end

minetest.register_node("myblocks:power_tool", {
	description = "TA Power Tool",
	inventory_image = "myblocks_tool2.png",
	wield_image = "myblocks_tool2.png",
	use_texture_alpha = true,
	groups = {cracky=1, book=1},
	on_use = show_network_data,
	on_place = show_network_data,
	on_secondary_use = show_network_data,
	node_placement_prediction = "",
	stack_max = 1,
})
