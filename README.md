This is a test example repo for [PokeDot](https://github.com/UbeJelly/PokeDot)

To use it:
1. Just copy the Resources folder, PokeDotClient.gd, and PokeDotClient.tscn into the new Godot project directory.
2. Make a new Node, add its script, and instantiate PokeDotClient. For this example we'll get an ability and berry from 1st index: <img width="545" height="279" alt="image" src="https://github.com/user-attachments/assets/52c7b3a6-91ce-4767-a320-47de60dc4375" />
3. Run it. It should display something like this in the console: 
<img width="535" height="358" alt="image" src="https://github.com/user-attachments/assets/5b6f1b69-5bf7-4fcb-93d0-31a0e161ce84" />
<img width="513" height="519" alt="image" src="https://github.com/user-attachments/assets/4bd3c0e7-dafb-4e35-ae88-bdbc07cb50f8" />
<img width="485" height="443" alt="image" src="https://github.com/user-attachments/assets/1091e5b7-0705-48db-a416-b16d1ae8b0a9" />

The first output comes from PokeDotClient's `get_pokemon_pagination()` when it is ready. Just remove it if not needed.
The 2nd and 3rd outputs come from the Ability and Berry classes under Resources directory.

Note that to make a lot of requests, you have to wait for a request to complete first. So `await` the `request_completed` signal emitted by `PokeDotClient`:
`await this_instanced_PokeDotClient.request_completed`

That's all! Feel free to give some feedback with this project ^^