

[![License: Unlicense](https://img.shields.io/badge/Unlicense-gray?style=for-the-badge&logo=Unlicense&color=gray)](http://unlicense.org/)

[![Engine: Godot](https://img.shields.io/badge/Godot-478CBF?style=for-the-badge&logo=GodotEngine&logoColor=white
)](https://godotengine.org)

[![Language: C#](https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white
)](https://learn.microsoft.com/en-us/dotnet/csharp/)


# Godot 4 3D print shader

I edited [QbieShay](https://qbieshay.itch.io/godot-engine-3d-printing-material)'s 3D Printing Material shader to make it simpler to use. Such that the filling and body amounts are 0 to 1.

---
## Demo

Here's a demo of how the object fills:

![](https://github.com/q8geek/Godot-4-3D-Print-Shader/blob/main/demo.gif)

---
## Features

- "Fill Color" and "Body Color" so you can set different colors for the part being printing, and the part that's printed and settled.
- "Fill Amount" and "Transition" to set the printing size and the transition from empty to full.

---
## Installation

To use this shader:

1. Copy `FillShader.gdshader` to your project's folder
2. Create a new material for your 3D object
3. Load this shader in this newly created material



## License

[The Unlicense](https://choosealicense.com/licenses/unlicense/)
## What's next?

* Do some transparency stuff.
* Maybe have some moving waves so it'd look like its liquid.
* Add some emission.
## Acknowledgements

 - [qbieshay](https://qbieshay.itch.io/godot-engine-3d-printing-material): Check her out, she has some awesome Godot shaders!
