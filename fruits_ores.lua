--default:jungleleaves
--default:pine_needles

--(nome, descrizione, luce, h max, h min, dove, rarità, effetto)


function nssf_register_fruitore (name, descrip, lights, hmax, hmin, rare, where)

minetest.register_craftitem("nssf:".. name .."_fruit", {
	description = descrip .." Fruit",
	image = name .."_fruit.png",
--on use???
})

minetest.register_node("nssf:".. name .."_fruit_ore", {
	description = descrip .." Fruit",
	tiles = {name .."_fruit.png"},
	paramtype = "light",
	light_source = lights,
	groups = {snappy=1},
	drop = "nssf:".. name .."_fruit",
	drawtype = "plantlike",
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "nssf:".. name .."_fruit_ore",
		wherein        = where,
		clust_scarcity = rare*rare*rare,
		clust_num_ores = 1,
		clust_size     = 1,
		height_min     = hmin,
		height_max     = hmax,
})

end

--earth
nssm_register_fruitore ('bloco', 'Bloco', 3, -300, -31000, 500, "default:stone")
nssm_register_fruitore ('lava', 'Lava', 15, -300, -31000, 50, "default:lava_source")
nssm_register_fruitore ('fire', 'Fire', 15, -300, -31000, 50, "default:lava_source")
nssm_register_fruitore ('stone','Stone', 5, -300, -31000, 600, "default:stone")
nssm_register_fruitore ('sand','Sand', 5, 300, -31000, 200, "default:desert_sand")
nssm_register_fruitore ('diamond','Diamond', 8, -500, -31000, 600, "default:stone")
--life
nssm_register_fruitore ('snake','Snake', 5, 300, -31000, 200, "default:pine_needles")
nssm_register_fruitore ('felucco','Felucco', 5, 300, -31000, 200, "default:acacia_leaves")
nssm_register_fruitore ('mantis','Mantis', 5, 300, -31000, 200, "default:leaves")
nssm_register_fruitore ('wood','Wood', 5, 300, -31000, 200, "default:leaves")
nssm_register_fruitore ('nature','Nature', 5, 300, -31000, 200, "default:leaves")
nssm_register_fruitore ('tarantula','Tarantula', 5, 300, -31000, 200, "default:jungleleaves")
--water
nssm_register_fruitore ('ice','Ice', 5, 300, -31000, 200, "default:ice")
nssm_register_fruitore ('snow','Snow', 5, 300, -31000, 200, "default:snowblock")
nssm_register_fruitore ('water','Water', 5, 300, -31000, 800, "default:water_source")
nssm_register_fruitore ('sea','Sea', 5, 300, -31000, 800, "default:water_source")
nssm_register_fruitore ('mud','Mud', 5, 300, -31000, 800, "default:water_source")
nssm_register_fruitore ('dolidrosaurus','Dolidrosaurus', 5, 800, -31000, 800, "default:water_source")
--air
nssm_register_fruitore ('wind','Wind', 5, 800, 780, 1200, "air")
nssm_register_fruitore ('fog','Fog', 2, 1200, 1100, 1200, "air")
nssm_register_fruitore ('phoenix','Phoenix', 12, 500, 495, 1200, "air")
nssm_register_fruitore ('night_master','Night Master', 0, 500, 495, 1200, "air")
nssm_register_fruitore ('thunder','Thunder', 15, 2000, 1900, 1200, "air")
nssm_register_fruitore ('gravity','Gravity', 2, 1000, 900, 1200, "air")

nssm_register_fruitore ('black_hole','Black Hole', 0, 31000, -31000, 3000, "air")

