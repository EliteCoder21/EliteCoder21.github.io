---
title: "FPGA Space Invaders"
excerpt: "Bare-metal FPGA implementation of the classic arcade game"
collection: portfolio
date: 2025-05-01
github: "https://github.com/EliteCoder21/SpaceInvaders"
---

## Overview

FPGA implementation of the classic arcade game Space Invaders on the DE1_SoC development board using SystemVerilog. This project demonstrates end-to-end game logic implementation in hardware.

## Features

- **Player Control**: Green character at the bottom of the screen with horizontal movement (left/right) and vertical shooting
- **Enemy AI**: Red aliens with pseudo-random movement patterns driven by Linear Feedback Shift Registers (LFSR)
- **Combat System**: 
  - Player shoots green bullets upward
  - Aliens shoot orange bullets downward at pseudo-random intervals
  - Collision detection between player bullets and aliens
  - Risk-reward gameplay when alien bullets target the player
- **Scoring**: Unsigned integer counter displayed on hex display, +1 point per alien hit
- **Visual Design**: Color-coded gameplay (green = player, red = aliens, orange = alien bullets)

## Technical Implementation

- **Hardware**: DE1_SoC FPGA Development Board
- **Language**: SystemVerilog (74.3%)
- **Simulation**: ModelSim
- **Components**: game_driver.sv, player_control.sv, aliens.sv, player_bullets.sv, collision detection modules

## Key Modules

- `game_driver.sv` - Main game orchestration
- `player_control.sv` - Player movement and shooting
- `aliens.sv` - Enemy behavior and LFSR movement
- `random_choice.sv` - LFSR implementation for pseudo-randomness
- `score_display_controller.sv` - Hex display scoring

This proof-of-concept demonstrates bare-metal implementation of a complex game system in hardware.
