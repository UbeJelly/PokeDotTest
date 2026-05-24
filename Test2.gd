extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
	add_child(pokeapi)

	pokeapi.get_pokemon("pikachu")
	await pokeapi.request_completed

	var pikachu: Pokemon = Pokemon.new()
	pikachu.name = "Pikachu"
	add_child(pikachu, true)

	var pokedex: Dictionary = pokeapi.pokemon.get_data()
	pikachu.data = pokedex

	print("\nPikachu's info:\n"+JSON.stringify(pikachu.data, "\t")+"\n")
