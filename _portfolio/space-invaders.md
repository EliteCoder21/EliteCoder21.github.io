---
title: "SpaceInvaders FPGA"
excerpt: "Bare-metal FPGA implementation of the classic arcade game on DE1-SoC"
collection: portfolio
date: 2025-08-15
permalink: /portfolio/space-invaders/
github: "https://github.com/EliteCoder21/SpaceInvaders"
---

## Overview

Complete implementation of the classic Space Invaders arcade game on the DE1-SoC FPGA development board using SystemVerilog. This project demonstrates full hardware-level game development with real-time control systems and custom graphics rendering.

## Key Features

- **LFSR-Based Enemy AI**: 41-bit Linear Feedback Shift Register for pseudo-random alien movement and shooting patterns
- **Collision Detection**: Real-time hit detection for player bullets vs aliens and alien bullets vs player
- **16x16 Bi-color LED Matrix**: Row-scanning technique for efficient multiplexing with red/green color mixing
- **7-Segment Score Display**: Binary to decimal conversion for score visualization

## Hardware Configuration

| Component | Specification |
|-----------|-------------|
| Target Board | DE1-SoC (Cyclone V FPGA) |
| Clock | 50 MHz source clock |
| Display | 16x16 bi-color LED Matrix |
| Input | Push buttons for movement/fire |

## Technical Implementation

- **Language**: SystemVerilog
- **Development Tools**: Quartus Prime 17.1, ModelSim-Altera
- **Modules**: clock_divider, LEDDriver, player_control, player_bullets, aliens, random_choice, draw_enemies

## Learning Outcomes

- [Add your key learning outcome or project highlight here]
- [Add your key learning outcome or project highlight here]
- [Add your key learning outcome or project highlight here]

## Course

EE 271 - Digital Circuits & Systems, University of Washington, Professor Mahmood Hameed

## Technologies

- SystemVerilog
- FPGA Development
- Quartus Prime
- ModelSim
- Digital Logic Design
