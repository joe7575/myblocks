-- for lazy programmers
local S = function(pos) if pos then return minetest.pos_to_string(pos) end end
local P = minetest.string_to_pos
local M = minetest.get_meta

local Side2Facedir = {F=0, R=1, B=2, L=3, D=4, U=5}
local DirToVector = {[0]=
	{x=0,  y=0,  z=1},
	{x=1,  y=0,  z=0},
	{x=0,  y=0, z=-1},
	{x=-1, y=0,  z=0},
	{x=0,  y=-1, z=0},
	{x=0,  y=1,  z=0},
}

local function calc_pos(pos, param2, path)
	for idx= 1,#path do
		local dir = Side2Facedir[string.sub(path, idx, idx)]
		if dir < 4 then
			dir = (dir + param2) % 4
		end
		pos = vector.add(pos, DirToVector[dir])
	end
	return pos
end	

local function no_cart_available(pos)
	for _,obj in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
		local lua_entity = obj:get_luaentity()
		if lua_entity and lua_entity.name == "carts:cart" then
			return false
		end
	end
	return true
end

local function place_cart(pos)
	minetest.add_entity(pos, "carts:cart")
	minetest.sound_play({
		name="carts_cart_new"},{
		pos = pos,
		gain=1,
		max_hear_distance=5,
		loop=false})
end

minetest.register_node(":carts:cart_dispenser", {
	description = "Karren Spender",
	drawtype = "node",
	tiles = {
		"carts_cart_top.png",
		"carts_cart_top.png",
		"carts_cart_front.png",
		"carts_cart_front.png",
		"carts_cart_front.png",
		"carts_cart_side.png^carts_button.png",
		},
	
	-- despense a cart if not already available
	on_rightclick = function (pos, node, clicker)
		local _pos = calc_pos(pos, node.param2, "BD")
		if no_cart_available(_pos) then
			place_cart(_pos)
		end
	end,

	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_craft({
    output = "carts:cart_dispenser",
    recipe = {
        {"default:junglewood","default:junglewood", "default:junglewood"},
        {"default:junglewood","default:mese_crystal", "default:junglewood"},
        {"default:junglewood","default:junglewood", "default:junglewood"}
    }
})

