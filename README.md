# 2D-Video-game (Put actual game title here)

## Purpose of the Project
Our video game project was created in order to showcase the functional and quality requirements that are shown in a software engineering methodology

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


## Process of Creating the Game

Godot was the game engine used in order to implement our game idea. This engine offered tools to create a 2D platformer video game.
The language that was used was GDScript, Godot’s internal program language. 
Our team members had to learn how GDScript worked and how to also use it with the animated objects that will be used in the game.

Assets were needed for the visual animations of the game. The assets were saved as png files and imported into Godot in order to be used. 

Types of Assets used (Credits to artists at the end of README.md):
* User's character
    - put link here
* Enemy characters
    - put link here
* Environment tiles for the platforms and background
    - put link here
* Coins for the user to collect
    - put link here

The animated assets were used along with Scripts in order to implement specific actions on those assets, which we can call "actors". The actors can then interact with the environment called a "scene". 

The scene is created by using environment tile assets to make platforms that the player can control their character on. Some tiles have collisions (solid tiles that players cannot pass through), and some tiles have no collisions (tiles that the player is able to pass through). Platforms are made by putting together these tiles. There are also special types of platforms that the player can jump through and they can actually land on top of that platform. These are called one-way platforms.

Other Assets:
* Audio
    - Background music
        - link
    - Jump sound
        - link
    - Death sound of user's character
        - link
    - Death sound of enemy character
        - link

## Testing 
Put testing scenarios and Screenshots here

## How to Access the Game
Put instructions here. 

## Team Members 
* Minna Roberto 
* Timothy Pasion
* Ziyan Zhang
* Precious Wagwe

## Credits
Here are the credits to the artists that were used in the game
* put artists and their assets here
