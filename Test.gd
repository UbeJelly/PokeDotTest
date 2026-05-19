extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
	add_child(pokeapi)

	# Requests data and prints on console
	pokeapi.get_ability(1)
	await pokeapi.request_completed

	# The actual data that can be used
	var ability = pokeapi.ability.get_data()
	var ability_name = ability["name"]
	var ability_gen = ability["generation"]
	print("\nActual data gathered (name + generation):\nname: " + ability_name + "\ngeneration: " + JSON.stringify(ability_gen, "\t"))
