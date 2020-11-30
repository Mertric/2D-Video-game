# 2D-Video-game (Put actual game title here)

## Purpose of the Project
Our 2D video game project was created in order to showcase the functional and quality requirements that are shown in a software engineering methodology

## Contents

* /2D Platformer
     * /.import
     * /.mono
     * /.Assets
          * /EnemySprite
          * /LevelAssets
          * /Sprites
     * /src
          * /Actors
          * /Levels
          * /Objects
* /README.md


## Game Objective 

The player’s objective is to collect all of the coins in the level in order to move on to the next level. Although, the player will have the added challenge to avoid/defeat enemies along their journey to collect the coins. User’s can defeat enemies by jumping on the enemies heads


## Characters

* Player's Character 
* Enemy characters
  - Green slime: jumps and glides


## Controls

* A Key: moves player's character to the left
* D Key: moves player's character to the right
* Space Bar: player's character jumps

## Rules of the Game

* Player needs to collect all coins and reach the portal at the end of the level to move on to the next level
* If enemies are able to hit a player, that player will lose a life
* The player can defeat enemies by jumping on top of the enemies head
* The player can pass through some walls and jump through some platforms. Some walls/platforms they cannot
* If the player falls off the edge of a mainland platform, they will respawn at the beginning of a level and lose a life


## Process of Creating the Game

Godot was the game engine used in order to implement our game idea. This engine offered tools to create a 2D platformer video game.
The language that was used was GDScript, Godot’s internal program language. 
Our team members had to learn how GDScript worked and how to also use it with the animated objects that will be used in the game.The file format of a GDScript is “filename.gd”

Assets were needed  for the nodes (objects) of the game  to make visual animations for those nodes. The assets were saved as png files and imported into Godot in order to be used. 

Types of nodes with assets used (Credits to artists at the end of README.md):
* User's character
* Enemy characters
* Environment tiles for the platforms and background
* Coins for the user to collect

Other Assets:
* Audio
    - Background music
    - Jump sound
    - Death sound of user's character
    - Death sound of enemy character

Separate scenes group together nodes in order to make:
* separate levels in the game
* backgrounds
* a main menu and an end screen

To make the player, enemies, coins, and portal we create them in separate scenes. The scene can consist of nodes and GDScripts with those nodes. Certain nodes can be added to the scene depending on what functionality we wanted those objects to have. They all have separate .gd files to implement their functions with code. The scene can get saved as a .tscn to be brought into the main Level scene as a node itself. For the enemies and coins, we duplicated their nodes throughout the Level scene. If we were to make changes to the original enemy or coin scene, then those changes would be implemented throughout all of the duplicated nodes in the main Level. 

Platforms in the Level are created by using environment tile assets to make platforms that the player can control their character on. Some tiles have collisions (solid tiles that players cannot pass through), and some tiles have no collisions (tiles that the player is able to pass through). Platforms are made by putting together these tiles. There are also special types of platforms that the player can jump through and they can actually land on top of that platform. These are called one-way platforms. For example, if there is a floating platform the player can try jumping through the platform from bottom-up, and when they pass through the platform they land on top of the platform.


## Testing 

Testing Scenarios and Screenshots: </br>
Test 1: player is unable to walk through certain walls/platforms. Some platforms the player can pass through </br>
Test 2: player jumps on enemies head to kill enemy </br>
Test 3: enemy kills player when they run into the player </br>
Test 4: when player falls off the main platform, they respawn at the beginning of the level  </br>
Test 5: when player has all coins and makes it to the portal they respawn in the next level </br>

## How to Access the Game
Put instructions here. 

## Team Members 
* Minna Roberto 
* Timothy Pasion
* Ziyan Zhang
* Precious Wagwe

## Credits
Here are the credits to the artist's assets that were used in the game:

Player’s character: </br>
Artist: Craftpix.net </br>
https://free-game-assets.itch.io/free-tiny-hero-sprites-pixel-art </br>

Enemy characters: </br>
Artist: cactusturtle </br>
https://cactusturtle.itch.io/ </br>

Tileset for Platforms, Background images, and coins </br>
Artist: MamaNeZakon </br>
https://mamanezakon.itch.io/forest-tileset  </br>

Menu screen boxes </br>
Artist: Kenny </br>
https://opengameart.org/content/ui-pack </br>

