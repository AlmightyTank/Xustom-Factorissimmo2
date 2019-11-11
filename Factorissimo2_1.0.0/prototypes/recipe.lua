data:extend({

	-- Factory buildings
	{
		type = "recipe",
		name = "factory-1",
		enabled = false,
		energy_required = 30,
		ingredients = {{"stone", 500}, {"iron-plate", 500}, {"copper-plate", 100}},
		result = "factory-1"
	},

	{
		type = "recipe",
		name = "factory-2",
		enabled = false,
		energy_required = 46,
		ingredients = {{"stone-brick", 1000}, {"steel-plate", 250}, {"big-electric-pole", 50}},
		result = "factory-2"
	},
	
	{
		type = "recipe",
		name = "factory-3",
		enabled = false,
		energy_required = 60,
		ingredients = {{"concrete", 5000}, {"steel-plate", 2000}, {"substation", 100}},
		result = "factory-3"
	},
	{
		type = "recipe",
		name = "factory-4",
		enabled = false,
		energy_required = 74,
		ingredients = {{"factory-3", 1}, {"plastic-bar", 100}},
		result = "factory-4"
	},
	{
		type = "recipe",
		name = "factory-5",
		enabled = false,
		energy_required = 88,
		ingredients = {{"factory-4", 1}, {"advanced-circuit", 100}},
		result = "factory-5"
	},
	{
		type = "recipe",
		name = "factory-6",
		enabled = false,
		energy_required = 102,
		ingredients = {{"factory-5", 1}, {"processing-unit", 50}},
		result = "factory-6"
	},
	
	-- Utilities
	{
		type = "recipe",
		name = "factory-circuit-input",
		enabled = false,
		energy_required = 1,
		ingredients = {{"copper-cable", 5}, {"electronic-circuit", 2}},
		result = "factory-circuit-input"
	},
	{
		type = "recipe",
		name = "factory-circuit-output",
		enabled = false,
		energy_required = 1,
		ingredients = {{"electronic-circuit", 2}, {"copper-cable", 5}},
		result = "factory-circuit-output"
	},
	{
		type = "recipe",
		name = "factory-input-pipe",
		enabled = false,
		energy_required = 1,
		ingredients = {{"pipe", 5}},
		result = "factory-input-pipe"
	},
	{
		type = "recipe",
		name = "factory-output-pipe",
		enabled = false,
		energy_required = 1,
		ingredients = {{"pipe", 5}},
		result = "factory-output-pipe"
	},
	{
		type = "recipe",
		name = "factory-requester-chest",
		enabled = false,
		energy_required = 10,
		ingredients = {{"logistic-chest-requester", 5}},
		result = "factory-requester-chest"
	},
});