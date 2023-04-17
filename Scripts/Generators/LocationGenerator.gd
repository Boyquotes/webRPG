extends Node


var test_town_scene = preload("res://Scenes/Towns/TestTown.tscn")
var town_scene = preload("res://Scenes/Towns/Town.tscn")

func generate_location():
	return generate_town()


func generate_town():
	var town_node = town_scene.instance()
	town_node.generate_town({})

	return {
		location_node = test_town_scene.instance(),
		location_padding = 100
	}

