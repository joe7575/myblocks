
--
-- Admin Tool
--
local function clear_objects(itemstack, placer, pointed_thing)
	local pos = placer:get_pos()
	local pos1x, pos1y, pos1z = pos.x - 1.5, pos.y - 0.5, pos.z - 1.5
	local pos2x, pos2y, pos2z = pos.x + 1.5, pos.y + 2.5, pos.z + 1.5

	for _, obj in pairs(minetest.get_objects_inside_radius(pos, 3)) do
		local entity = obj:get_luaentity()
		print("entity")
		-- Avoid players
		if not obj:is_player() then
			local pos = obj:getpos()
			print(dump(pos))
			if pos.x >= pos1x and pos.x <= pos2x and
					pos.y >= pos1y and pos.y <= pos2y and
					pos.z >= pos1z and pos.z <= pos2z then
				-- Inside region
				obj:remove()
			end
		end
	end
	
	minetest.forceload_free_block(pos, true)
	minetest.forceload_free_block(pos, false)
end

local function remove_node(itemstack, placer, pointed_thing)
	if minetest.check_player_privs(placer:get_player_name(), "creative") then
		if pointed_thing.type == "node" then
			local pos = pointed_thing.under
			minetest.remove_node(pos)
			tubelib2.del_mem(pos)
			techage.del_mem(pos)
			minetest.get_meta(pos):from_table(nil)
		end
	else
		minetest.chat_send_player(placer:get_player_name(), "You don't have 'creative' privs!")
	end
end

minetest.register_node("myblocks:mytool1", {
	description = "Admin Tool1",
	inventory_image = "myblocks_tool.png",
	wield_image = "myblocks_tool.png",
	use_texture_alpha = myblocks.CLIP,
	liquids_pointable = true,
	groups = {cracky=1, book=1},
	on_use = remove_node,
	on_place = clear_objects,
	on_secondary_use = clear_objects,
	node_placement_prediction = "",
	stack_max = 1,
})


local function read_data(itemstack, placer, pointed_thing)
	if minetest.check_player_privs(placer:get_player_name(), "superminer") then
		if pointed_thing.type == "node" then
			local pos = pointed_thing.under
			local mem = techage.get_mem(pos)
			local tl2 = tubelib2.get_mem(pos)
			local nvm = techage.get_nvm(pos)
			local meta = minetest.get_meta(pos)
			local node = minetest.get_node(pos)
			if node.name == "protector:protect"	or node.name == "protector:protect2" then
				local owner = meta:get_string("owner")
				local members = meta:get_string("members")
				if members ~= "" then
					local names = {}
					for _,s in ipairs(string.split(members, " ")) do
						names[s] = true
					end
					sections.protect_area(pos, placer:get_player_name(), owner, names)
				else
					sections.protect_area(pos, placer:get_player_name(), owner)
				end
				minetest.remove_node(pos)
				return
			end
			--minetest.swap_node(pos, node) was soll das hier?
			local ndef = minetest.registered_nodes[node.name] or minetest.registered_items[node.name] or minetest.registered_craftitems[node.name]
			local number = techage and techage.get_node_number(pos)
			local tdata
			if number then
				tdata = techage.get_node_info(number) or {}
				print(number, dump(tdata))
				tdata.number = number
				--tdata = "nope"
			else
				tdata = "nope"
			end
			minetest.chat_send_player(placer:get_player_name(), "#############################################")
			minetest.chat_send_player(placer:get_player_name(), "mem: "..dump(mem))
			minetest.chat_send_player(placer:get_player_name(), "nvm: "..dump(nvm))
			minetest.chat_send_player(placer:get_player_name(), "node: "..dump(node))
			minetest.chat_send_player(placer:get_player_name(), "meta: "..dump(meta:to_table()))
			minetest.chat_send_player(placer:get_player_name(), "techage: "..dump(tdata))
			minetest.chat_send_player(placer:get_player_name(), "###### [F10] ######")
			
			print("#############################################")
			print("mem: "..dump(mem))
			print("tlib2: "..dump(tl2))
			print("nvm: "..dump(nvm))
			print("node: "..dump(node))
			print("meta: "..dump(meta:to_table()))
			print("techage: "..dump(tdata))
			if ndef and ndef.networks then
				print("networks: "..dump(ndef.networks))
			end
		elseif pointed_thing.type == "object" then
			local object = pointed_thing.ref
			local pos = object:get_pos()
			local properties = object:get_properties()

			if object:is_player() then
				local name = object:get_player_name()
				local meta = object:get_meta()
				local physics_override = object:get_physics_override()
				local eye_offset = object:get_eye_offset()
				local info = minetest.get_player_information(name) or {}
				info.address = nil -- Don't show the IP address to respect the GDPR

				minetest.chat_send_player(placer:get_player_name(), "#############################################")
				minetest.chat_send_player(placer:get_player_name(), "pos: "..dump(pos))
				minetest.chat_send_player(placer:get_player_name(), "player name: "..name)
				minetest.chat_send_player(placer:get_player_name(), "properties: "..dump(properties))
				minetest.chat_send_player(placer:get_player_name(), "meta: "..dump(meta:to_table()))
				minetest.chat_send_player(placer:get_player_name(), "physics override: "..dump(physics_override))
				minetest.chat_send_player(placer:get_player_name(), "eye offset: "..dump(eye_offset))
				minetest.chat_send_player(placer:get_player_name(), "player information: "..dump(info))
				minetest.chat_send_player(placer:get_player_name(), "###### [F10] ######")

				print("#############################################")
				print("pos: "..dump(pos))
				print("player name: "..name)
				print("properties: "..dump(properties))
				print("meta: "..dump(meta:to_table()))
				print("physics override: "..dump(physics_override))
				print("eye offset: "..dump(eye_offset))
				print("player information: "..dump(info))
				print("###### [F10] ######")
			elseif object.get_luaentity then
				local entity = object:get_luaentity()

				minetest.chat_send_player(placer:get_player_name(), "#############################################")
				minetest.chat_send_player(placer:get_player_name(), "pos: "..dump(pos))
				minetest.chat_send_player(placer:get_player_name(), "entity: "..dump(entity))
				minetest.chat_send_player(placer:get_player_name(), "properties: "..dump(properties))
				minetest.chat_send_player(placer:get_player_name(), "###### [F10] ######")

				print("#############################################")
				print("pos: "..dump(pos))
				print("entity: "..dump(entity))
				print("properties: "..dump(properties))
				print("###### [F10] ######")
			end
		end
	else
		minetest.chat_send_player(placer:get_player_name(), "You don't have 'superminer' privs!")
	end
end

local function show_protection_blocks(itemstack, placer, pointed_thing)
	local pos = placer:get_pos()
	local pos1 = {x = pos.x - 20, y = pos.y - 20, z = pos.z - 20}
	local pos2 = {x = pos.x + 20, y = pos.y + 20, z = pos.z + 20}
	local blocks = {"protector:protect", "protector:protect2", "protector:protect3"}
	local cnt = 0
	local name = placer:get_player_name()
	for _, pos3 in ipairs(minetest.find_nodes_in_area(pos1, pos2, blocks)) do
		techage.mark_position(name, pos3, "protect", "#FFFFFF", 10)
		cnt = cnt + 1
	end
	minetest.chat_send_player(name, cnt.." blocks found")
end

minetest.register_node("myblocks:mytool2", {
	description = "Admin Tool2",
	inventory_image = "myblocks_mytool2.png",
	wield_image = "myblocks_mytool2.png",
	liquids_pointable = true,
	use_texture_alpha = myblocks.CLIP,
	groups = {cracky=1, book=1},
	on_use = read_data,
	on_place = read_data,
	on_secondary_use = show_protection_blocks,
	node_placement_prediction = "",
	stack_max = 1,
})


minetest.register_chatcommand("sort", {
	description = "Sort the player inventory in alphabetical order",
	func = function(name, param)
		local inv = minetest.get_inventory({type="player", name=name})
		local list = inv:get_list("main")
		table.sort(list, function (a, b)
				local name_a = a:get_name()
				local name_b = b:get_name()
				if name_a == "" and name_b ~= "" then return false end
				if name_a ~= "" and name_b == "" then return true end
				return string.lower(name_a) < string.lower(name_b)
			end)
		inv:set_list("main", list)
	end
})

