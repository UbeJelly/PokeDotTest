extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
	add_child(pokeapi)
	
	pokeapi.get_ability(1)
	await pokeapi.request_completed
	var ability: Dictionary = pokeapi.ability.data
	print("\n"+JSON.stringify(ability, "\t")+"\n")
	
	pokeapi.get_pokemon("ditto")
	await pokeapi.request_completed
	var pokemon: Dictionary = pokeapi.pokemon.get_data()
	print("\n"+JSON.stringify(pokemon, "\t")+"\n")
