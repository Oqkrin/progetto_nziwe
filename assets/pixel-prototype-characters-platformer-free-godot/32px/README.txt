2D Pixel Prototype: Platformer Characters 32px Godot
Version 1.0
by Mythryl Studio

Free 2D side-on pixel art character, 54 animations: run, jump, slide, roll, sword, pistol, magic.

HOW THIS SET WORKS

A side-on character, 32 px tall, facing right (flip it for left). Every frame is 64 x 64 px with the ground under the feet on the same pixel (32, 54).

Two colourways: colour, and white for tinting to any colour in your engine. Moves come in 9 sets: movement, damage, unarmed, sword, shield, pistol, magic, zombie, interact.
It stands at the same scale as the Pixel Prototype platformer tileset: on 16 px tiles at this height.

GODOT 4

Copy the whole download into your project. godot/colour.tres and godot/white.tres are SpriteFrames with every move as an animation, at its own speed and looping where it should. Use one on an AnimatedSprite2D, set Offset so the feet sit on the node (example.tscn shows how), and play a move by name:

  $AnimatedSprite2D.play("run")

Move names: the movement and damage moves by name (idle, run, jump-air), the rest as <set>-<move> (sword-attack-1). For crisp pixels, set Default Texture Filter to Nearest (Project Settings, under Textures).

MOVES

  idle, walk, run, sprint, jump-start, jump-air, jump-land, crouch-idle,
  crouch-walk, roll, slide-start, slide, slide-end, climb-up, push, swim,
  swim-idle, hit, hit-head, knockback, death, get-up, unarmed-jab,
  unarmed-cross, unarmed-hook, sword-ready, sword-slash, sword-attack-1,
  sword-attack-2, sword-attack-3, sword-combo, sword-heavy, sword-block,
  sword-dash, shield-ready, shield-bash, shield-dash, shield-guard-break,
  pistol-ready, pistol-aim, pistol-shoot, pistol-reload, magic-enter,
  magic-ready, magic-cast, magic-exit, zombie-idle, zombie-walk,
  zombie-attack, interact-use, interact-pick-up, interact-throw,
  interact-open-chest, interact-consume

All images are PNG with transparency. Scale by whole numbers
(2x, 3x, 4x) with nearest-neighbour filtering to keep pixels crisp.

LICENCE

See LICENSE.txt. In short: use these in your own commercial or
non-commercial projects, edited or not. Do not resell or share the
files themselves. Credit is appreciated but not required.

UPDATES

This pack may receive future updates with content as it becomes
available, and everyone who has it will receive the new assets.

Made something with these, or have an idea for the pack? Tell me:
https://mythryl.com
