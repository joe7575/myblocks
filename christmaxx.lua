--christmaxx mod
--written 2018 by Maximilian Hipp

--Item list
local blocks = {
"default:goldblock",
"default:mese",
"wool:white",
"myblocks:christmaxe",
"myblocks:pick_christmas",
"myblocks:shovel_snow",
"myblocks:sword_sugar",
"unifieddyes:airbrush",
"unified_inventory:bag_large",
"techage:usmium_nuggets",
"techage:hammer_bronze",
"basic_materials:energy_crystal_simple",
"binoculars:binoculars",
"default:axe_diamond",
"homedecor:kitchen_cabinet_steel_locked",
"homedecor:table_mahogany",
"hyperloop:station_map",
"default:mese_post_light",
"hyperloop:station",
"ontime_clocks:green_digital",
"ta4_paraglider:paraglider",
"techage:chest_cart",
"techage:chest_ta4",
"techage:end_wrench",
"techage:hammer_diamond",
"techage:industriallamp1_off",
"techage:oilexplorer",
"techage:powerswitch",
"techage:streetlamp_off",
"techage:ta4_button_off",
"techage:ta4_icta_controller",
"techage:ta4_playerdetector_off",
"techage:ta4_signaltower",
"techage:ta4_solar_module",
"techage:tiny_generator",
"ts_skins:clothing_shirt_camo",
"ts_skins:clothing_jacket_closed",
"ts_skins:clothing_belt",
"ts_skins:clothing_safety_vest",
"ts_skins:clothing_sneakers",
"ts_skins:clothing_tie",
}

minetest.after(1, function()
	for _,item in ipairs(blocks) do
		if not minetest.registered_items[item] and
		   not minetest.registered_nodes[item] and
		   not minetest.registered_tools[item] then
			minetest.log("error", "Unregistered Item: "..item)   
		end
	end
end)

--Present color list
local presents = {
"myblocks:present_blue",
"myblocks:present_green",
"myblocks:present_red",
"myblocks:present_white"
}

local throwitems = function(pos, node)
	minetest.set_node(pos, {name = "air"})
		for i = 0, math.random(1,5), 1 do
			minetest.add_item(pos, {name = blocks[math.random(1, #blocks)]})
		end
end

-- function adds the sugar sword to the players inventory when he joins the game if there is no one
-- the sugar sword is needed to open the presents ;-)
--minetest.register_on_joinplayer(function(player)
--    local playerS = player:get_player_name()
--	if playerS == "unknown" or playerS == "singleplayer" then
--	end
--	local inv = player:get_inventory()
--	local stack = ItemStack({name="myblocks:sword_sugar", count=1} )
--	if not inv:contains_item("main", stack) then
--		inv:add_item("main",stack)
--	end
--end)


--Main present which is in creative inventory
minetest.register_node("myblocks:present", {
	description = "Present by maxx",
	tiles = {
		"present_up.png",
		"present_side.png",
		"present_side.png",
		"present_side.png",
		"present_side.png",
		"present_side.png"
	},
	groups = {cracky = 3, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.0625, 0.375}, -- NodeBox1
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.375, 0.4375}, -- NodeBox2
		}
	},
	stack_max = 999,
	inventory_image = "present_up.png",
--	on_construct = function(pos)
--  end,
	after_place_node = function(pos, placer)
		minetest.swap_node(pos, {name = presents[math.random(1, #presents)]})
		minetest.chat_send_player(placer:get_player_name(), "Open the present with the Sugar Sword / Öffne das Geschenk mit der Zuckerstange")
	end,
})

--Different present colors
--blue
minetest.register_node("myblocks:present_blue", {
	description = "Present blue by maxx",
	tiles = {
		"present_up_b.png",
		"present_side_b.png",
		"present_side_b.png",
		"present_side_b.png",
		"present_side_b.png",
		"present_side_b.png"
	},
	groups = {sugary = 1, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.0625, 0.375}, -- NodeBox1
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.375, 0.4375}, -- NodeBox2
		}
	},
	on_dig = function(pos, node, digger)
		if minetest.is_protected(pos, digger:get_player_name()) then return end
		throwitems(pos, node)
	end
})
--green
minetest.register_node("myblocks:present_green", {
	description = "Present green by maxx",
	tiles = {
		"present_up.png",
		"present_side.png",
		"present_side.png",
		"present_side.png",
		"present_side.png",
		"present_side.png"
	},
	groups = {sugary = 1, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.0625, 0.375}, -- NodeBox1
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.375, 0.4375}, -- NodeBox2
		}
	},
	on_dig = function(pos, node, digger)
		if minetest.is_protected(pos, digger:get_player_name()) then return end
		throwitems(pos, node)
	end
})
--red
minetest.register_node("myblocks:present_red", {
	description = "Present red by maxx",
	tiles = {
		"present_up_r.png",
		"present_side_r.png",
		"present_side_r.png",
		"present_side_r.png",
		"present_side_r.png",
		"present_side_r.png"
	},
	groups = {sugary = 1, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.0625, 0.375}, -- NodeBox1
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.375, 0.4375}, -- NodeBox2
		}
	},
	on_dig = function(pos, node, digger)
		if minetest.is_protected(pos, digger:get_player_name()) then return end
		throwitems(pos, node)
	end
})
--white
minetest.register_node("myblocks:present_white", {
	description = "Present white by maxx",
	tiles = {
		"present_up_w.png",
		"present_side_w.png",
		"present_side_w.png",
		"present_side_w.png",
		"present_side_w.png",
		"present_side_w.png"
	},
	groups = {sugary = 1, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.0625, 0.375}, -- NodeBox1
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.375, 0.4375}, -- NodeBox2
		}
	},
	on_dig = function(pos, node, digger)
		if minetest.is_protected(pos, digger:get_player_name()) then return end
		throwitems(pos, node)
	end
})
