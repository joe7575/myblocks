--[[

	MyBlocks

	Copyright (C) 2018-2020 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

]]--

minetest.register_craftitem("myblocks:circular_saw", {
	description = "Circular Saw",
	inventory_image = "myblocks_saw.png",
})

minetest.register_craft({
	output = "myblocks:circular_saw",
	recipe = {
		{"basic_materials:plastic_strip", "basic_materials:plastic_strip", "basic_materials:plastic_strip"},
		{"basic_materials:steel_strip", "basic_materials:motor", "basic_materials:steel_strip"},
		{"", "basic_materials:gear_steel", ""},
	},
})

function myblocks.register_rooftop1(node_name)
	local new_name = node_name.."_rooftop1"
	local ndef = table.copy(minetest.registered_nodes[node_name])
	ndef.description = ndef.description.." Rooftop 1"
	ndef.drawtype = "mesh"
	ndef.mesh="myblocks_rooftop1.obj"
	ndef.paramtype2 = "facedir"
	ndef.node_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, 8/16,  -4/16,  8/16},
			{-8/16, -4/16, -4/16,  8/16,  0/16,  4/16},
		},
	}
	ndef.selection_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, 8/16,  -4/16,  8/16},
			{-8/16, -4/16, -4/16,  8/16,  0/16,  4/16},
		},
	}

	minetest.register_node(":"..new_name, ndef)
	
	minetest.register_craft({
		output = new_name.." 6",
		recipe = {
			{"myblocks:circular_saw", node_name, ""},
			{node_name, "", node_name},
			{"", "", ""},
		},
		replacements = {
			{"myblocks:circular_saw", "myblocks:circular_saw"}
		},
	})
end

function myblocks.register_rooftop2(node_name)
	local new_name = node_name.."_rooftop2"
	local ndef = table.copy(minetest.registered_nodes[node_name])
	ndef.description = ndef.description.." Rooftop 2"
	ndef.drawtype = "mesh"
	ndef.mesh="myblocks_rooftop2.obj"
	ndef.paramtype2 = "facedir"
	ndef.node_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, 8/16,  -4/16,  8/16},
			{-8/16, -4/16, -4/16,  8/16,  0/16,  4/16},
		},
	}
	ndef.selection_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, 8/16,  -4/16,  8/16},
			{-8/16, -4/16, -4/16,  8/16,  0/16,  4/16},
		},
	}

	minetest.register_node(":"..new_name, ndef)
	
	minetest.register_craft({
		output = new_name.." 6",
		recipe = {
			{"myblocks:circular_saw", "", node_name},
			{node_name, "", node_name},
			{"", "", ""},
		},
		replacements = {
			{"myblocks:circular_saw", "myblocks:circular_saw"}
		},
	})
end

myblocks.register_rooftop1("myblocks:reet")
myblocks.register_rooftop1("myblocks:bukki")
myblocks.register_rooftop1("farming:straw")
if minetest.global_exists("fachwerk") then
	myblocks.register_rooftop1("fachwerk:F")
	myblocks.register_rooftop1("fachwerk:S")	
	myblocks.register_rooftop1("fachwerk:W")	
	myblocks.register_rooftop1("fachwerk:Z")	
	myblocks.register_rooftop1("fachwerk:pflaster")	
end	

myblocks.register_rooftop2("myblocks:reet")
myblocks.register_rooftop2("myblocks:bukki")
myblocks.register_rooftop2("farming:straw")
if minetest.global_exists("fachwerk") then
	myblocks.register_rooftop2("fachwerk:F")
	myblocks.register_rooftop2("fachwerk:S")	
	myblocks.register_rooftop2("fachwerk:W")	
	myblocks.register_rooftop2("fachwerk:Z")	
	myblocks.register_rooftop2("fachwerk:pflaster")	
end	
