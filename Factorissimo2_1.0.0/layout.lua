local north = defines.direction.north
local east = defines.direction.east
local south = defines.direction.south
local west = defines.direction.west

local opposite = {[north] = south, [east] = west, [south] = north, [west] = east}
local DX = {[north] = 0, [east] = 1, [south] = 0, [west] = -1}
local DY = {[north] = -1, [east] = 0, [south] = 1, [west] = 0}

local make_connection = function(id, outside_x, outside_y, inside_x, inside_y, direction_out)
	return {
		id = id,
		outside_x = outside_x,
		outside_y = outside_y,
		inside_x = inside_x,
		inside_y = inside_y,
		indicator_dx = DX[direction_out],
		indicator_dy = DY[direction_out],
		direction_in = opposite[direction_out],
		direction_out = direction_out,
	}
end

local layout_generators = {
	["factory-1"] = function() 
		return {
			name = "factory-1",
			tier = 1,
			inside_size = 30,
			outside_size = 8,
			default_power_transfer_rate = 10,
			inside_door_x = 0,
			inside_door_y = 16,
			outside_door_x = 0,
			outside_door_y = 4,
			outside_energy_receiver_type = "factory-power-input-8",
			outside_energy_sender_type = "factory-power-output-8",
			inside_energy_x = -4,
			inside_energy_y = 17,
			energy_indicator_x = -3.5,
			energy_indicator_y = 18.5,
			overlay_name = "factory-1-overlay",
			overlay_x = 0,
			overlay_y = 3,
			rectangles = {
				{
					x1 = -18, x2 = 18, y1 = -18, y2 = 18, tile = "out-of-factory"
				},
				{
					x1 = -16, x2 = 16, y1 = -16, y2 = 16, tile = "factory-wall-1"
				},
				{
					x1 = -15, x2 = 15, y1 = -15, y2 = 15, tile = "factory-floor-1"
				},
				{
					x1 = -3, x2 = 3, y1 = 15, y2 = 18, tile = "factory-wall-1"
				},
				{
					x1 = -2, x2 = 2, y1 = 15, y2 = 18, tile = "factory-entrance-1"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-1",
					pattern = {
						" ++++    ++ ",
						"++  ++  +++ ",
						"++  ++ + ++ ",
						"++ +++   ++ ",
						"+++ ++   ++ ",
						"++  ++   ++ ",
						"++  ++   ++ ",
						" ++++  +++++",
					}
				},
			},
			lights = {
				{x = -7.5, y = -7.5},
				{x = -7.5, y = 7.5},
				{x = 7.5, y = -7.5},
				{x = 7.5, y = 7.5},
			},
			connection_tile = "factory-floor-1",
			connections = {
				w1 = make_connection("w1", -4.5,-2.5, -15.5,-9.5, west),
				w2 = make_connection("w2", -4.5,-1.5, -15.5,-5.5, west),
				w3 = make_connection("w3", -4.5,1.5, -15.5,5.5, west),
				w4 = make_connection("w4", -4.5,2.5, -15.5,9.5, west),
				
				e1 = make_connection("e1", 4.5,-2.5, 15.5,-9.5, east),
				e2 = make_connection("e2", 4.5,-1.5, 15.5,-5.5, east),
				e3 = make_connection("e3", 4.5,1.5, 15.5,5.5, east),
				e4 = make_connection("e4", 4.5,2.5, 15.5,9.5, east),
				
				n1 = make_connection("n1", -2.5,-4.5, -9.5,-15.5, north),
				n2 = make_connection("n2", -1.5,-4.5, -5.5,-15.5, north),
				n3 = make_connection("n3", 1.5,-4.5, 5.5,-15.5, north),
				n4 = make_connection("n4", 2.5,-4.5, 9.5,-15.5, north),
				
				s1 = make_connection("s1", -2.5,4.5, -9.5,15.5, south),
				s2 = make_connection("s2", -1.5,4.5, -5.5,15.5, south),
				s3 = make_connection("s3", 1.5,4.5, 5.5,15.5, south),
				s4 = make_connection("s4", 2.5,4.5, 9.5,15.5, south),
				
			},
			overlays = {
				nw = {
					outside_x = -2,
					outside_y = -1,
					inside_x = 3.5,
					inside_y = 16.5,
				},
				ne = {
					outside_x = 2,
					outside_y = -1,
					inside_x = 4.5,
					inside_y = 16.5,
				},
			},
		}
	end,
	["factory-2"] = function()
		return {
			name = "factory-2",
			tier = 2,
			inside_size = 46,
			outside_size = 12,
			default_power_transfer_rate = 20,
			inside_door_x = 0,
			inside_door_y = 24,
			outside_door_x = 0,
			outside_door_y = 6,
			outside_energy_receiver_type = "factory-power-input-12",
			outside_energy_sender_type = "factory-power-output-12",
			inside_energy_x = -4,
			inside_energy_y = 25,
			energy_indicator_x = -3.5,
			energy_indicator_y = 26.5,
			overlay_name = "factory-2-overlay",
			overlay_x = 0,
			overlay_y = 5,
			rectangles = {
				{
					x1 = -26, x2 = 26, y1 = -26, y2 = 26, tile = "out-of-factory"
				},
				{
					x1 = -24, x2 = 24, y1 = -24, y2 = 24, tile = "factory-wall-2"
				},
				{
					x1 = -23, x2 = 23, y1 = -23, y2 = 23, tile = "factory-floor-2"
				},
				{
					x1 = -3, x2 = 3, y1 = 23, y2 = 26, tile = "factory-wall-2"
				},
				{
					x1 = -2, x2 = 2, y1 = 23, y2 = 26, tile = "factory-entrance-2"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-2",
					pattern = {
						" ++++   +++ ",
						"++  ++ ++ ++",
						"++  ++    ++",
						"++ +++   ++ ",
						"+++ ++  ++  ",
						"++  ++ ++   ",
						"++  ++ ++ ++",
						" ++++  +++++",
					}
				},
			},
			lights = {
				{x = -5.5, y = -5.5},
				{x = -5.5, y = 5.5},
				{x = 5.5, y = -5.5},
				{x = 5.5, y = 5.5},
				{x = -17.5, y = -5.5},
				{x = -17.5, y = 5.5},
				{x = 17.5, y = -5.5},
				{x = 17.5, y = 5.5},
				{x = -5.5, y = -17.5},
				{x = -5.5, y = 17.5},
				{x = 5.5, y = -17.5},
				{x = 5.5, y = 17.5},
				{x = -17.5, y = -17.5},
				{x = -17.5, y = 17.5},
				{x = 17.5, y = -17.5},
				{x = 17.5, y = 17.5},
			},
			connection_tile = "factory-floor-2",
			connections = {
				w1 = make_connection("w1", -6.5,-4.5, -23.5,-18.5, west),
				w2 = make_connection("w2", -6.5,-3.5, -23.5,-13.5, west),
				w3 = make_connection("w3", -6.5,-2.5, -23.5,-8.5, west),
				w4 = make_connection("w4", -6.5,2.5, -23.5,8.5, west),
				w5 = make_connection("w5", -6.5,3.5, -23.5,13.5, west),
				w6 = make_connection("w6", -6.5,4.5, -23.5,18.5, west),
				
				e1 = make_connection("e1", 6.5,-4.5, 23.5,-18.5, east),
				e2 = make_connection("e2", 6.5,-3.5, 23.5,-13.5, east),
				e3 = make_connection("e3", 6.5,-2.5, 23.5,-8.5, east),
				e4 = make_connection("e4", 6.5,2.5, 23.5,8.5, east),
				e5 = make_connection("e5", 6.5,3.5, 23.5,13.5, east),
				e6 = make_connection("e6", 6.5,4.5, 23.5,18.5, east),
				
				n1 = make_connection("n1", -4.5,-6.5, -18.5,-23.5, north),
				n2 = make_connection("n2", -3.5,-6.5, -13.5,-23.5, north),
				n3 = make_connection("n3", -2.5,-6.5, -8.5,-23.5, north),
				n4 = make_connection("n4", 2.5,-6.5, 8.5,-23.5, north),
				n5 = make_connection("n5", 3.5,-6.5, 13.5,-23.5, north),
				n6 = make_connection("n6", 4.5,-6.5, 18.5,-23.5, north),
				
				s1 = make_connection("s1", -4.5,6.5, -18.5,23.5, south),
				s2 = make_connection("s2", -3.5,6.5, -13.5,23.5, south),
				s3 = make_connection("s3", -2.5,6.5, -8.5,23.5, south),
				s4 = make_connection("s4", 2.5,6.5, 8.5,23.5, south),
				s5 = make_connection("s5", 3.5,6.5, 13.5,23.5, south),
				s6 = make_connection("s6", 4.5,6.5, 18.5,23.5, south),
			},
			overlays = {
				nw = {
					outside_x = -3,
					outside_y = -3,
					inside_x = 3.5,
					inside_y = 24.5,
				},
				ne = {
					outside_x = 3,
					outside_y = -3,
					inside_x = 4.5,
					inside_y = 24.5,
				},
				
				sw = {
					outside_x = -3,
					outside_y = 1,
					inside_x = 3.5,
					inside_y = 25.5,
				},
				se = {
					outside_x = 3,
					outside_y = 1,
					inside_x = 4.5,
					inside_y = 25.5,
				},
			},
		}
	end,
	["factory-3"] = function()
		return {
			name = "factory-3",
			tier = 3,
			inside_size = 60,
			outside_size = 16,
			default_power_transfer_rate = 50,
			inside_door_x = 0,
			inside_door_y = 31,
			outside_door_x = 0,
			outside_door_y = 8,
			outside_energy_receiver_type = "factory-power-input-16",
			outside_energy_sender_type = "factory-power-output-16",
			inside_energy_x = -4,
			inside_energy_y = 32,
			energy_indicator_x = -3.5,
			energy_indicator_y = 33.5,
			overlay_name = "factory-3-overlay",
			overlay_x = 0,
			overlay_y = 7,
			rectangles = {
				{
					x1 = -33, x2 = 33, y1 = -33, y2 = 33, tile = "out-of-factory"
				},
				{
					x1 = -31, x2 = 31, y1 = -31, y2 = 31, tile = "factory-wall-3"
				},
				{
					x1 = -30, x2 = 30, y1 = -30, y2 = 30, tile = "factory-floor-3"
				},
				{
					x1 = -3, x2 = 3, y1 = 30, y2 = 33, tile = "factory-wall-3"
				},
				{
					x1 = -2, x2 = 2, y1 = 30, y2 = 33, tile = "factory-entrance-3"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-3",
					pattern = {
						" ++++   +++ ",
						"++  ++ ++ ++",
						"++  ++    ++",
						"++ +++   ++ ",
						"+++ ++    ++",
						"++  ++    ++",
						"++  ++ ++ ++",
						" ++++   +++ ",
					}
				},
			},
			lights = {
				{x = -7.5, y = -7.5},
				{x = -7.5, y = 7.5},
				{x = 7.5, y = -7.5},
				{x = 7.5, y = 7.5},
				{x = -22.5, y = -7.5},
				{x = -22.5, y = 7.5},
				{x = 22.5, y = -7.5},
				{x = 22.5, y = 7.5},
				{x = -7.5, y = -22.5},
				{x = -7.5, y = 22.5},
				{x = 7.5, y = -22.5},
				{x = 7.5, y = 22.5},
				{x = -22.5, y = -22.5},
				{x = -22.5, y = 22.5},
				{x = 22.5, y = -22.5},
				{x = 22.5, y = 22.5},
			},
			connection_tile = "factory-floor-3",
			connections = {
				w1 = make_connection("w1", -8.5,-5.5, -30.5,-24.5, west),
				w2 = make_connection("w2", -8.5,-4.5, -30.5,-20.5, west),
				w3 = make_connection("w3", -8.5,-3.5, -30.5,-9.5, west),
				w4 = make_connection("w4", -8.5,-2.5, -30.5,-5.5, west),
				w5 = make_connection("w5", -8.5,2.5, -30.5,5.5, west),
				w6 = make_connection("w6", -8.5,3.5, -30.5,9.5, west),
				w7 = make_connection("w7", -8.5,4.5, -30.5,20.5, west),
				w8 = make_connection("w8", -8.5,5.5, -30.5,24.5, west),
				
				e1 = make_connection("e1", 8.5,-5.5, 30.5,-24.5, east),
				e2 = make_connection("e2", 8.5,-4.5, 30.5,-20.5, east),
				e3 = make_connection("e3", 8.5,-3.5, 30.5,-9.5, east),
				e4 = make_connection("e4", 8.5,-2.5, 30.5,-5.5, east),
				e5 = make_connection("e5", 8.5,2.5, 30.5,5.5, east),
				e6 = make_connection("e6", 8.5,3.5, 30.5,9.5, east),
				e7 = make_connection("e7", 8.5,4.5, 30.5,20.5, east),
				e8 = make_connection("e8", 8.5,5.5, 30.5,24.5, east),
				
				n1 = make_connection("n1", -5.5,-8.5, -24.5,-30.5, north),
				n2 = make_connection("n2", -4.5,-8.5, -20.5,-30.5, north),
				n3 = make_connection("n3", -3.5,-8.5, -9.5,-30.5, north),
				n4 = make_connection("n4", -2.5,-8.5, -5.5,-30.5, north),
				n5 = make_connection("n5", 2.5,-8.5, 5.5,-30.5, north),
				n6 = make_connection("n6", 3.5,-8.5, 9.5,-30.5, north),
				n7 = make_connection("n7", 4.5,-8.5, 20.5,-30.5, north),
				n8 = make_connection("n8", 5.5,-8.5, 24.5,-30.5, north),
				
				s1 = make_connection("s1", -5.5,8.5, -24.5,30.5, south),
				s2 = make_connection("s2", -4.5,8.5, -20.5,30.5, south),
				s3 = make_connection("s3", -3.5,8.5, -9.5,30.5, south),
				s4 = make_connection("s4", -2.5,8.5, -5.5,30.5, south),
				s5 = make_connection("s5", 2.5,8.5, 5.5,30.5, south),
				s6 = make_connection("s6", 3.5,8.5, 9.5,30.5, south),
				s7 = make_connection("s7", 4.5,8.5, 20.5,30.5, south),
				s8 = make_connection("s8", 5.5,8.5, 24.5,30.5, south),
			},
			overlays = {
				nw = {
					outside_x = -4,
					outside_y = -4,
					inside_x = 3.5,
					inside_y = 31.5,
				},
				ne = {
					outside_x = 4,
					outside_y = -4,
					inside_x = 4.5,
					inside_y = 31.5,
				},
				
				sw = {
					outside_x = -4,
					outside_y = 2,
					inside_x = 3.5,
					inside_y = 32.5,
				},
				se = {
					outside_x = 4,
					outside_y = 2,
					inside_x = 4.5,
					inside_y = 32.5,
				},
			},
		}
	end,
		["factory-4"] = function()
		return {
			name = "factory-4",
			tier = 4,
			inside_size = 90,
			outside_size = 16,
			default_power_transfer_rate = 50,
			inside_door_x = 0,
			inside_door_y = 41,
			outside_door_x = 0,
			outside_door_y = 8,
			outside_energy_receiver_type = "factory-power-input-16",
			outside_energy_sender_type = "factory-power-output-16",
			inside_energy_x = -4,
			inside_energy_y = 42,
			energy_indicator_x = -3.5,
			energy_indicator_y = 43.5,
			overlay_name = "factory-4-overlay",
			overlay_x = 0,
			overlay_y = 7,
			rectangles = {
				{
					x1 = -43, x2 = 43, y1 = -43, y2 = 43, tile = "out-of-factory"
				},
				{
					x1 = -41, x2 = 41, y1 = -41, y2 = 41, tile = "factory-wall-4"
				},
				{
					x1 = -40, x2 = 40, y1 = -40, y2 = 40, tile = "factory-floor-4"
				},
				{
					x1 = -3, x2 = 3, y1 = 40, y2 = 43, tile = "factory-wall-4"
				},
				{
					x1 = -2, x2 = 2, y1 = 40, y2 = 43, tile = "factory-entrance-4"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-4",
					pattern = {
						" ++++  ++ **",
						"++  ++ ++ ++",
						"++  ++ ++ ++",
						"++ +++ +++++",
						"+++ ++ +++++",
						"++  ++    ++",
						"++  ++    ++",
						" ++++     ++",
					}
				},
			},
			lights = {
				{x = -7.5, y = -7.5},
				{x = -7.5, y = 7.5},
				{x = 7.5, y = -7.5},
				{x = 7.5, y = 7.5},
				{x = -22.5, y = -7.5},
				{x = -22.5, y = 7.5},
				{x = 22.5, y = -7.5},
				{x = 22.5, y = 7.5},
				{x = -7.5, y = -22.5},
				{x = -7.5, y = 22.5},
				{x = 7.5, y = -22.5},
				{x = 7.5, y = 22.5},
				{x = -22.5, y = -22.5},
				{x = -22.5, y = 22.5},
				{x = 22.5, y = -22.5},
				{x = 22.5, y = 22.5},
			},
			connection_tile = "factory-floor-4",
			connections = {
				w1 = make_connection("w1", -8.5,-7.5, -40.5,-34.5, west),
				w2 = make_connection("w2", -8.5,-6.5, -40.5,-30.5, west),
				w3 = make_connection("w3", -8.5,-5.5, -40.5,-26.5, west),
				w4 = make_connection("w4", -8.5,-4.5, -40.5,-22.5, west),
				w5 = make_connection("w5", -8.5,-3.5, -40.5,-18.5, west),
				w6 = make_connection("w6", -8.5,-2.5, -40.5,-14.5, west),
				w7 = make_connection("w7", -8.5,-1.5, -40.5,-9.5, west),
				w8 = make_connection("w8", -8.5,-0.5, -40.5,-5.5, west),
				w9 = make_connection("w9", -8.5,0.5, -40.5,5.5, west),
				w10 = make_connection("w10", -8.5,1.5, -40.5,9.5, west),
				w11 = make_connection("w11", -8.5,2.5, -40.5,14.5, west),
				w12 = make_connection("w12", -8.5,3.5, -40.5,18.5, west),
				w13 = make_connection("w13", -8.5,4.5, -40.5,22.5, west),
				w14 = make_connection("w14", -8.5,5.5, -40.5,26.5, west),
				w15 = make_connection("w15", -8.5,6.5, -40.5,30.5, west),
				w16 = make_connection("w16", -8.5,7.5, -40.5,34.5, west),
				
				e1 = make_connection("e1", 8.5,-7.5, 40.5,-34.5, east),
				e2 = make_connection("e2", 8.5,-6.5, 40.5,-30.5, east),
				e3 = make_connection("e3", 8.5,-5.5, 40.5,-26.5, east),
				e4 = make_connection("e4", 8.5,-4.5, 40.5,-22.5, east),
				e5 = make_connection("e5", 8.5,-3.5, 40.5,-18.5, east),
				e6 = make_connection("e6", 8.5,-2.5, 40.5,-14.5, east),
				e7 = make_connection("e7", 8.5,-1.5, 40.5,-9.5, east),
				e8 = make_connection("e8", 8.5,-0.5, 40.5,-5.5, east),
				e9 = make_connection("e9", 8.5,0.5, 40.5,5.5, east),
				e10 = make_connection("e10", 8.5,1.5, 40.5,9.5, east),
				e11 = make_connection("e11", 8.5,2.5, 40.5,14.5, east),
				e12 = make_connection("e12", 8.5,3.5, 40.5,18.5, east),
				e13 = make_connection("e13", 8.5,4.5, 40.5,22.5, east),
				e14 = make_connection("e14", 8.5,5.5, 40.5,26.5, east),
				e15 = make_connection("e15", 8.5,6.5, 40.5,30.5, east),
				e16 = make_connection("e16", 8.5,7.5, 40.5,34.5, east),
				
								
				n1 = make_connection("n1", -7.5,-8.5, -34.5,-40.5, north),
				n2 = make_connection("n2", -6.5,-8.5, -30.5,-40.5, north),
				n3 = make_connection("n2", -5.5,-8.5, -26.5,-40.5, north),
				n4 = make_connection("n2", -4.5,-8.5, -22.5,-40.5, north),
				n5 = make_connection("n3", -3.5,-8.5, -18.5,-40.5, north),
				n6 = make_connection("n3", -2.5,-8.5, -14.5,-40.5, north),
				n7 = make_connection("n3", -1.5,-8.5, -9.5,-40.5, north),
				n8 = make_connection("n4", -0.5,-8.5, -5.5,-40.5, north),
				n9 = make_connection("n5", 0.5,-8.5, 5.5,-40.5, north),
				n10 = make_connection("n6", 1.5,-8.5, 9.5,-40.5, north),
				n11 = make_connection("n6", 2.5,-8.5, 14.5,-40.5, north),
				n12 = make_connection("n6", 3.5,-8.5, 18.5,-40.5, north),
				n13 = make_connection("n6", 4.5,-8.5, 22.5,-40.5, north),
				n14 = make_connection("n7", 5.5,-8.5, 26.5,-40.5, north),
				n15 = make_connection("n7", 6.5,-8.5, 30.5,-40.5, north),
				n16 = make_connection("n7", 7.5,-8.5, 34.5,-40.5, north),
				
				
				s1 = make_connection("s1", -7.5,8.5, -34.5,40.5, south),
				s2 = make_connection("s2", -6.5,8.5, -30.5,40.5, south),
				s3 = make_connection("s3", -5.5,8.5, -26.5,40.5, south),
				s4 = make_connection("s4", -4.5,8.5, -22.5,40.5, south),
				s5 = make_connection("s5", -3.5,8.5, -18.5,40.5, south),
				s6 = make_connection("s6", -2.5,8.5, -14.5,40.5, south),
				s7 = make_connection("s7", -1.5,8.5, -9.5,40.5, south),
				s8 = make_connection("s8", 1.5,8.5, 9.5,40.5, south),
				s9 = make_connection("s9", 2.5,8.5, 14.5,40.5, south),
				s10 = make_connection("s10", 3.5,8.5, 18.5,40.5, south),
				s11 = make_connection("s11", 4.5,8.5, 22.5,40.5, south),
				s12 = make_connection("s12", 5.5,8.5, 26.5,40.5, south),
				s13 = make_connection("s13", 6.5,8.5, 30.5,40.5, south),
				s14 = make_connection("s14", 7.5,8.5, 34.5,40.5, south)
			},
			overlays = {
				nw = {
					outside_x = -4,
					outside_y = -4,
					inside_x = 3.5,
					inside_y = 41.5,
				},
				ne = {
					outside_x = 4,
					outside_y = -4,
					inside_x = 4.5,
					inside_y = 41.5,
				},
				
				sw = {
					outside_x = -4,
					outside_y = 2,
					inside_x = 3.5,
					inside_y = 42.5,
				},
				se = {
					outside_x = 4,
					outside_y = 2,
					inside_x = 4.5,
					inside_y = 42.5,
				},
			},
		}
	end,
		["factory-5"] = function()
		return {
			name = "factory-5",
			tier = 5,
			inside_size = 120,
			outside_size = 16,
			default_power_transfer_rate = 50,
			inside_door_x = 0,
			inside_door_y = 51,
			outside_door_x = 0,
			outside_door_y = 8,
			outside_energy_receiver_type = "factory-power-input-16",
			outside_energy_sender_type = "factory-power-output-16",
			inside_energy_x = -4,
			inside_energy_y = 52,
			energy_indicator_x = -3.5,
			energy_indicator_y = 53.5,
			overlay_name = "factory-5-overlay",
			overlay_x = 0,
			overlay_y = 7,
			rectangles = {
				{
					x1 = -53, x2 = 53, y1 = -53, y2 = 53, tile = "out-of-factory"
				},
				{
					x1 = -51, x2 = 51, y1 = -51, y2 = 51, tile = "factory-wall-5"
				},
				{
					x1 = -50, x2 = 50, y1 = -50, y2 = 50, tile = "factory-floor-5"
				},
				{
					x1 = -3, x2 = 3, y1 = 50, y2 = 53, tile = "factory-wall-5"
				},
				{
					x1 = -2, x2 = 2, y1 = 50, y2 = 53, tile = "factory-entrance-5"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-5",
					pattern = {
						" ++++  +++++",
						"++  ++ +++++",
						"++  ++ ++   ",
						"++ +++ ++++ ",
						"+++ ++   +++",
						"++  ++    ++",
						"++  ++ ++ ++",
						" ++++   +++ ",
					}
				},
			},
			lights = {
				{x = -7.5, y = -7.5},
				{x = -7.5, y = 7.5},
				{x = 7.5, y = -7.5},
				{x = 7.5, y = 7.5},
				{x = -22.5, y = -7.5},
				{x = -22.5, y = 7.5},
				{x = 22.5, y = -7.5},
				{x = 22.5, y = 7.5},
				{x = -7.5, y = -22.5},
				{x = -7.5, y = 22.5},
				{x = 7.5, y = -22.5},
				{x = 7.5, y = 22.5},
				{x = -22.5, y = -22.5},
				{x = -22.5, y = 22.5},
				{x = 22.5, y = -22.5},
				{x = 22.5, y = 22.5},
			},
			connection_tile = "factory-floor-5",
			connections = {
							w1 = make_connection("w1", -8.5,-7.5, -50.5,-44.5, west),
				w2 = make_connection("w2", -8.5,-6.5, -50.5,-40.5, west),
				w3 = make_connection("w3", -8.5,-5.5, -50.5,-36.5, west),
				w4 = make_connection("w4", -8.5,-4.5, -50.5,-32.5, west),
				w5 = make_connection("w5", -8.5,-3.5, -50.5,-28.5, west),
				w6 = make_connection("w6", -8.5,-2.5, -50.5,-24.5, west),
				w7 = make_connection("w7", -8.5,-1.5, -50.5,-19.5, west),
				w8 = make_connection("w8", -8.5,-0.5, -50.5,-15.5, west),
				w9 = make_connection("w9", -8.5,0.5, -50.5,15.5, west),
				w10 = make_connection("w10", -8.5,1.5, -50.5,19.5, west),
				w11 = make_connection("w11", -8.5,2.5, -50.5,24.5, west),
				w12 = make_connection("w12", -8.5,3.5, -50.5,28.5, west),
				w13 = make_connection("w13", -8.5,4.5, -50.5,32.5, west),
				w14 = make_connection("w14", -8.5,5.5, -50.5,36.5, west),
				w15 = make_connection("w15", -8.5,6.5, -50.5,40.5, west),
				w16 = make_connection("w16", -8.5,7.5, -50.5,44.5, west),
				
				e1 = make_connection("e1", 8.5,-7.5, 50.5,-44.5, east),
				e2 = make_connection("e2", 8.5,-6.5, 50.5,-40.5, east),
				e3 = make_connection("e3", 8.5,-5.5, 50.5,-36.5, east),
				e4 = make_connection("e4", 8.5,-4.5, 50.5,-32.5, east),
				e5 = make_connection("e5", 8.5,-3.5, 50.5,-28.5, east),
				e6 = make_connection("e6", 8.5,-2.5, 50.5,-24.5, east),
				e7 = make_connection("e7", 8.5,-1.5, 50.5,-19.5, east),
				e8 = make_connection("e8", 8.5,-0.5, 50.5,-15.5, east),
				e9 = make_connection("e9", 8.5,0.5, 50.5,15.5, east),
				e10 = make_connection("e10", 8.5,1.5, 50.5,19.5, east),
				e11 = make_connection("e11", 8.5,2.5, 50.5,24.5, east),
				e12 = make_connection("e12", 8.5,3.5, 50.5,28.5, east),
				e13 = make_connection("e13", 8.5,4.5, 50.5,32.5, east),
				e14 = make_connection("e14", 8.5,5.5, 50.5,36.5, east),
				e15 = make_connection("e15", 8.5,6.5, 50.5,40.5, east),
				e16 = make_connection("e16", 8.5,7.5, 50.5,44.5, east),
				
								
				n1 = make_connection("n1", -7.5,-8.5, -44.5,-50.5, north),
				n2 = make_connection("n2", -6.5,-8.5, -40.5,-50.5, north),
				n3 = make_connection("n2", -5.5,-8.5, -36.5,-50.5, north),
				n4 = make_connection("n2", -4.5,-8.5, -32.5,-50.5, north),
				n5 = make_connection("n3", -3.5,-8.5, -28.5,-50.5, north),
				n6 = make_connection("n3", -2.5,-8.5, -24.5,-50.5, north),
				n7 = make_connection("n3", -1.5,-8.5, -19.5,-50.5, north),
				n8 = make_connection("n4", -0.5,-8.5, -15.5,-50.5, north),
				n9 = make_connection("n5", 0.5,-8.5, 15.5,-50.5, north),
				n10 = make_connection("n6", 1.5,-8.5, 19.5,-50.5, north),
				n11 = make_connection("n6", 2.5,-8.5, 24.5,-50.5, north),
				n12 = make_connection("n6", 3.5,-8.5, 28.5,-50.5, north),
				n13 = make_connection("n6", 4.5,-8.5, 32.5,-50.5, north),
				n14 = make_connection("n7", 5.5,-8.5, 36.5,-50.5, north),
				n15 = make_connection("n7", 6.5,-8.5, 40.5,-50.5, north),
				n16 = make_connection("n7", 7.5,-8.5, 44.5,-50.5, north),
				
				
				s1 = make_connection("s1", -7.5,8.5, -44.5,50.5, south),
				s2 = make_connection("s2", -6.5,8.5, -40.5,50.5, south),
				s3 = make_connection("s3", -5.5,8.5, -36.5,50.5, south),
				s4 = make_connection("s4", -4.5,8.5, -32.5,50.5, south),
				s5 = make_connection("s5", -3.5,8.5, -28.5,50.5, south),
				s6 = make_connection("s6", -2.5,8.5, -24.5,50.5, south),
				s7 = make_connection("s7", -1.5,8.5, -19.5,50.5, south),
				s8 = make_connection("s8", 1.5,8.5, 19.5,50.5, south),
				s9 = make_connection("s9", 2.5,8.5, 24.5,50.5, south),
				s10 = make_connection("s10", 3.5,8.5, 28.5,50.5, south),
				s11 = make_connection("s11", 4.5,8.5, 32.5,50.5, south),
				s12 = make_connection("s12", 5.5,8.5, 36.5,50.5, south),
				s13 = make_connection("s13", 6.5,8.5, 40.5,50.5, south),
				s14 = make_connection("s14", 7.5,8.5, 44.5,50.5, south)
			},
			overlays = {
				nw = {
					outside_x = -4,
					outside_y = -4,
					inside_x = 3.5,
					inside_y = 51.5,
				},
				ne = {
					outside_x = 4,
					outside_y = -4,
					inside_x = 4.5,
					inside_y = 51.5,
				},
				
				sw = {
					outside_x = -4,
					outside_y = 2,
					inside_x = 3.5,
					inside_y = 52.5,
				},
				se = {
					outside_x = 4,
					outside_y = 2,
					inside_x = 4.5,
					inside_y = 52.5,
				},
			},
		}
	end,
		["factory-6"] = function()
		return {
			name = "factory-6",
			tier = 5,
			inside_size = 150,
			outside_size = 16,
			default_power_transfer_rate = 50,
			inside_door_x = 0,
			inside_door_y = 61,
			outside_door_x = 0,
			outside_door_y = 8,
			outside_energy_receiver_type = "factory-power-input-16",
			outside_energy_sender_type = "factory-power-output-16",
			inside_energy_x = -4,
			inside_energy_y = 62,
			energy_indicator_x = -3.5,
			energy_indicator_y = 63.5,
			overlay_name = "factory-6-overlay",
			overlay_x = 0,
			overlay_y = 7,
			rectangles = {
				{
					x1 = -63, x2 = 63, y1 = -63, y2 = 63, tile = "out-of-factory"
				},
				{
					x1 = -61, x2 = 61, y1 = -61, y2 = 61, tile = "factory-wall-6"
				},
				{
					x1 = -60, x2 = 60, y1 = -60, y2 = 60, tile = "factory-floor-6"
				},
				{
					x1 = -3, x2 = 3, y1 = 60, y2 = 63, tile = "factory-wall-6"
				},
				{
					x1 = -2, x2 = 2, y1 = 60, y2 = 63, tile = "factory-entrance-6"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-6",
					pattern = {
						" ++++   ++++",
						"++  ++ +++++",
						"++  ++ ++   ",
						"++ +++ +++++",
						"+++ ++ ++ ++",
						"++  ++ ++ ++",
						"++  ++ ++ ++",
						" ++++   +++ ",
					}
				},
			},
			lights = {
				{x = -7.5, y = -7.5},
				{x = -7.5, y = 7.5},
				{x = 7.5, y = -7.5},
				{x = 7.5, y = 7.5},
				{x = -22.5, y = -7.5},
				{x = -22.5, y = 7.5},
				{x = 22.5, y = -7.5},
				{x = 22.5, y = 7.5},
				{x = -7.5, y = -22.5},
				{x = -7.5, y = 22.5},
				{x = 7.5, y = -22.5},
				{x = 7.5, y = 22.5},
				{x = -22.5, y = -22.5},
				{x = -22.5, y = 22.5},
				{x = 22.5, y = -22.5},
				{x = 22.5, y = 22.5},
			},
			connection_tile = "factory-floor-6",
			connections = {
				w1 = make_connection("w1", -8.5,-7.5, -60.5,-54.5, west),
				w2 = make_connection("w2", -8.5,-6.5, -60.5,-50.5, west),
				w3 = make_connection("w3", -8.5,-5.5, -60.5,-46.5, west),
				w4 = make_connection("w4", -8.5,-4.5, -60.5,-42.5, west),
				w5 = make_connection("w5", -8.5,-3.5, -60.5,-38.5, west),
				w6 = make_connection("w6", -8.5,-2.5, -60.5,-34.5, west),
				w7 = make_connection("w7", -8.5,-1.5, -60.5,-29.5, west),
				w8 = make_connection("w8", -8.5,-0.5, -60.5,-25.5, west),
				w9 = make_connection("w9", -8.5,0.5, -60.5,25.5, west),
				w10 = make_connection("w10", -8.5,1.5, -60.5,29.5, west),
				w11 = make_connection("w11", -8.5,2.5, -60.5,34.5, west),
				w12 = make_connection("w12", -8.5,3.5, -60.5,38.5, west),
				w13 = make_connection("w13", -8.5,4.5, -60.5,42.5, west),
				w14 = make_connection("w14", -8.5,5.5, -60.5,46.5, west),
				w15 = make_connection("w15", -8.5,6.5, -60.5,50.5, west),
				w16 = make_connection("w16", -8.5,7.5, -60.5,54.5, west),
				
				e1 = make_connection("e1", 8.5,-7.5, 60.5,-54.5, east),
				e2 = make_connection("e2", 8.5,-6.5, 60.5,-50.5, east),
				e3 = make_connection("e3", 8.5,-5.5, 60.5,-46.5, east),
				e4 = make_connection("e4", 8.5,-4.5, 60.5,-42.5, east),
				e5 = make_connection("e5", 8.5,-3.5, 60.5,-38.5, east),
				e6 = make_connection("e6", 8.5,-2.5, 60.5,-34.5, east),
				e7 = make_connection("e7", 8.5,-1.5, 60.5,-29.5, east),
				e8 = make_connection("e8", 8.5,-0.5, 60.5,-25.5, east),
				e9 = make_connection("e9", 8.5,0.5, 60.5,25.5, east),
				e10 = make_connection("e10", 8.5,1.5, 60.5,29.5, east),
				e11 = make_connection("e11", 8.5,2.5, 60.5,34.5, east),
				e12 = make_connection("e12", 8.5,3.5, 60.5,38.5, east),
				e13 = make_connection("e13", 8.5,4.5, 60.5,42.5, east),
				e14 = make_connection("e14", 8.5,5.5, 60.5,46.5, east),
				e15 = make_connection("e15", 8.5,6.5, 60.5,50.5, east),
				e16 = make_connection("e16", 8.5,7.5, 60.5,54.5, east),
				
								
				n1 = make_connection("n1", -7.5,-8.5, -54.5,-60.5, north),
				n2 = make_connection("n2", -6.5,-8.5, -50.5,-60.5, north),
				n3 = make_connection("n2", -5.5,-8.5, -46.5,-60.5, north),
				n4 = make_connection("n2", -4.5,-8.5, -42.5,-60.5, north),
				n5 = make_connection("n3", -3.5,-8.5, -38.5,-60.5, north),
				n6 = make_connection("n3", -2.5,-8.5, -34.5,-60.5, north),
				n7 = make_connection("n3", -1.5,-8.5, -29.5,-60.5, north),
				n8 = make_connection("n4", -0.5,-8.5, -25.5,-60.5, north),
				n9 = make_connection("n5", 0.5,-8.5, 25.5,-60.5, north),
				n10 = make_connection("n6", 1.5,-8.5, 29.5,-60.5, north),
				n11 = make_connection("n6", 2.5,-8.5, 34.5,-60.5, north),
				n12 = make_connection("n6", 3.5,-8.5, 38.5,-60.5, north),
				n13 = make_connection("n6", 4.5,-8.5, 42.5,-60.5, north),
				n14 = make_connection("n7", 5.5,-8.5, 46.5,-60.5, north),
				n15 = make_connection("n7", 6.5,-8.5, 50.5,-60.5, north),
				n16 = make_connection("n7", 7.5,-8.5, 54.5,-60.5, north),
				
				
				s1 = make_connection("s1", -7.5,8.5, -54.5,60.5, south),
				s2 = make_connection("s2", -6.5,8.5, -50.5,60.5, south),
				s3 = make_connection("s3", -5.5,8.5, -46.5,60.5, south),
				s4 = make_connection("s4", -4.5,8.5, -42.5,60.5, south),
				s5 = make_connection("s5", -3.5,8.5, -38.5,60.5, south),
				s6 = make_connection("s6", -2.5,8.5, -34.5,60.5, south),
				s7 = make_connection("s7", -1.5,8.5, -29.5,60.5, south),
				s8 = make_connection("s8", 1.5,8.5, 29.5,60.5, south),
				s9 = make_connection("s9", 2.5,8.5, 34.5,60.5, south),
				s10 = make_connection("s10", 3.5,8.5, 38.5,60.5, south),
				s11 = make_connection("s11", 4.5,8.5, 42.5,60.5, south),
				s12 = make_connection("s12", 5.5,8.5, 46.5,60.5, south),
				s13 = make_connection("s13", 6.5,8.5, 50.5,60.5, south),
				s14 = make_connection("s14", 7.5,8.5, 54.5,60.5, south)
			},
			overlays = {
				nw = {
					outside_x = -4,
					outside_y = -4,
					inside_x = 3.5,
					inside_y = 61.5,
				},
				ne = {
					outside_x = 4,
					outside_y = -4,
					inside_x = 4.5,
					inside_y = 61.5,
				},
				
				sw = {
					outside_x = -4,
					outside_y = 2,
					inside_x = 3.5,
					inside_y = 62.5,
				},
				se = {
					outside_x = 4,
					outside_y = 2,
					inside_x = 4.5,
					inside_y = 62.5,
				},
			},
		}
	end,
}

function HasLayout(name)
	return layout_generators[name] ~= nil
end

function CreateLayout(name)
	if layout_generators[name] then
		return layout_generators[name]()
	else
		return nil
	end
end