---
title: "StratTank"
excerpt: "C++ strategy tank game with 6 allied tanks, wave-based progression, and tactical combat"
collection: portfolio
date: 2026-04-02
permalink: /portfolio/strattank/
github: "https://github.com/EliteCoder21/StratTank"
---

## Overview

A 2D top-down strategy tank game built in C++ using SFML. Command your tank alongside allied units to battle increasingly difficult waves of enemies through tactical positioning, strategic targeting, and coordinated attacks.

**GitHub:** [EliteCoder21/StratTank](https://github.com/EliteCoder21/StratTank)

## Key Features

- **Player Tank Control**: WASD movement with mouse aiming and shooting
- **6 Allied Tanks**: 2 guarding base, 4 mobile support units
- **Ally Commands**: Issue move/attack orders to allied tanks with right-click
- **Multiple Enemy Types**: Light tanks, heavy tanks, and fortified positions
- **Wave-Based Progression**: 7 waves with escalating difficulty
- **Strategic Gameplay**: Randomly generated barriers for tactical combat
- **Visual Effects**: Particle systems for explosions, muzzle flashes, and smoke
- **HUD System**: Health, wave number, score, enemy base status
- **Dynamic World**: Adapts to any screen resolution
- **Fort Bombs**: Area damage (200px radius) with visual warning indicators

## Game Entities

### Player Tank
- Health: 100 HP | Speed: 150 units/sec | Damage: 15 per shot | Fire Rate: 3.0/sec

### Ally Tanks (x6)
- Health: 60 HP | Speed: 120 units/sec | Damage: 12 per shot | Fire Rate: 3.0/sec
- AI behaviors: auto-targeting, defending, wandering

### Enemy Types
| Type | Health | Speed | Damage | Fire Rate |
|------|--------|-------|--------|-----------|
| Light Tank | 30 HP | 120 | 10 | 2.5/sec |
| Heavy Tank | 80 HP | 60 | 20 | 1.5/sec |
| Fort | 200 HP | 0 | 25 | 1.5/sec |

### Special Elements
- **Health Pickups (Hearts)**: Spawn every 10 seconds, heal 25 HP
- **Fort Bombs**: 200px radius, 500 damage, 10-second cooldown

## Controls

| Key | Action |
|-----|--------|
| W/A/S/D | Move player tank |
| Mouse | Aim turret |
| Left Click | Shoot |
| Right Click | Command selected ally / Select ally |
| 1/2/3/4/5/6 | Select ally tank |
| Space | Select all allies |
| Tab | Cycle through allies |
| Shift + Right Click | Command all allies |
| Escape | Pause game |

## Architecture

- **Language**: C++17 (99.3%)
- **Graphics Library**: SFML 3.0
- **Build Systems**: CMake, Makefile
- **Design Patterns**: Game loop, Observer/Callback, Factory, RAII
- **Key Classes**: Entity (base), Tank, PlayerTank, AllyTank, EnemyTank, Fort, Projectile, Heart, WaveManager, ParticleSystem, HUD, WorldConfig

## Technologies

- C++17
- SFML 3.0
- CMake
- Makefile
- Object-Oriented Programming
- Smart Pointers (RAII)
- Game Development
- AI Behavior Systems
