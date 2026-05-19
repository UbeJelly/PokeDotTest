This is a test example repo for [PokeDot](https://github.com/UbeJelly/PokeDot)

## Testing
1. Just copy the `Resources` folder, `PokeDotClient.gd`, and `PokeDotClient.tscn` into the new Godot project directory.
2. The `request_completed` signal must be emitted first in order to get the data, but here getting the data returns empty values as it is called in ready() and as such not completed yet.
So in order to get the values after completing the request:  
<img width="853" height="461" alt="image" src="https://github.com/user-attachments/assets/6daad32b-2159-4ff3-b74c-ddb18fc681c3" />


1. Call the method first e.g. `get_ability(1)`
2. Wait till it's request is completed - `await pokeapi.request_completed`
3. Then you can access its (`PokeDotClient`) child node `Ability.gd`, and call its `get_data()`: `pokeapi.ability.get_data()`
4. The values can now be used as needed:  
<img width="425" height="127" alt="image" src="https://github.com/user-attachments/assets/81261ecc-c350-485e-8e71-9268d50d68a2" />


> [!NOTE]  
> The actual [PokeDot](https://github.com/UbeJelly/PokeDot) repo has its `PokeDotClient.gd` call `get_pokemon_pagination()` when `ready()`, so if not needed (most likely) disable or remove it first. It's there by default so anyone could test it right away if it works.