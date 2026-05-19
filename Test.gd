extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
	add_child(pokeapi)
	await pokeapi.request_completed
	print(pokeapi.get_ability(1))
	await pokeapi.request_completed
	print(pokeapi.get_berry(1))
