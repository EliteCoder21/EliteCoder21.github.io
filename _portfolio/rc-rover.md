---
title: "Obstacle Avoiding RC Rover"
excerpt: "Autonomous rover with dual-microcontroller architecture and ESP-NOW control"
collection: portfolio
date: 2025-12-25
permalink: /portfolio/rc-rover/
github: "https://github.com/EliteCoder21/Obstacle_Avoiding_RC_Rover"
---

## Overview

Final project for CSE 474 - Embedded Systems. An intelligent RC rover combining wireless remote control with autonomous obstacle avoidance. The system uses a dual-processor architecture with an ESP32-S3 handling high-level control and wireless communication, while an Arduino Mega manages motor control.

**GitHub:** [EliteCoder21/Obstacle_Avoiding_RC_Rover](https://github.com/EliteCoder21/Obstacle_Avoiding_RC_Rover)

## Key Features

- **Dual-Microcontroller Architecture**: ESP32-S3 for intelligence/wireless, Arduino Mega for motor control via Adafruit Motor Shield
- **ESP-NOW Wireless Control**: Low-latency command transmission at 25 Hz for responsive remote operation
- **Autonomous Obstacle Avoidance**: HC-SR04 ultrasonic sensor with safety logic that overrides manual commands
- **Progressive Speed Control**: PWM-based motor speed regulation with smooth acceleration
- **Audio Feedback**: Audible alarm when obstacles are critically close

## System Architecture

```
┌─────────────────┐     ESP-NOW      ┌──────────────────┐
│   Remote        │ ─────────────────│  ESP32-S3        │
│   Controller    │                  │  (Master)        │
│   (ESP32-S3)    │                  │  - Ultrasonic    │
└─────────────────┘                  │  - Decision      │
                                     └────────┬─────────┘
                                              │ Serial
                                     ┌────────▼─────────┐
                                     │  Arduino Mega    │
                                     │  (Motor Driver)  │
                                     └──────────────────┘
```

## Hardware Components

| Component | Role |
|-----------|------|
| ESP32-S3 (x2) | Main processor and remote controller |
| Arduino Mega 2560 | Motor control interface |
| Adafruit Motor Shield V2 | Dual H-bridge motor driver |
| HC-SR04 Ultrasonic | Distance measurement |
| Buzzer | Proximity warning |
| DC Motors (x2) | Rover drive wheels |

## Technical Implementation

- **Languages**: C/C++ for firmware, JavaScript/HTML/CSS for remote interface
- **RTOS**: FreeRTOS for reliable multitasking on ESP32
- **Communication**: ESP-NOW protocol, UART serial between microcontrollers
- **Frameworks**: Arduino framework for ESP32

## Safety Logic

| Distance | Mode | Action |
|----------|------|--------|
| < 8 cm | Critical | Immediate stop and backtrack |
| < 20 cm | Caution | Reduced forward speed |
| > 20 cm | Normal | Full manual control |

## Learning Outcomes

- Designed dual-processor communication protocol using UART serial between ESP32-S3 and Arduino Mega
- Implemented ESP-NOW wireless control achieving 25 Hz command transmission with sub-100ms latency
- Created safety-critical obstacle avoidance system using HC-SR04 ultrasonic sensors with priority-based mode switching

## Course

CSE 474 - Introduction to Embedded Systems, University of Washington, Professor John Raiti

## Technologies

- ESP32
- Arduino
- FreeRTOS
- ESP-NOW
- Embedded C/C++
- Motor Control (PWM/H-Bridge)
- Ultrasonic Sensors
