# PokeDotTest

This is a test repo and there are 2 examples here, namely `Test` and `Test2` scenes.

The default scene to run (F5) is `Test`, but `Test2` can run as currently edited scene (F6).

### Test
```gdscript
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
```

### Test2
```gdscript
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
```

## Links
| Project | Repository                          | About               |
|---------|-------------------------------------|---------------------|
| PokeDot | https://github.com/UbeJelly/PokeDot | Pokemon API wrapper |
| pokeapi | https://pokeapi.co/docs/v2          | Pokemon API v2      |