---
title: "Multi-Agent Tanks"
excerpt: "Two armies of tanks controlled by one shared attention-based network, trained from scratch by self-play PPO on a single GPU"
collection: portfolio
date: 2026-09-20
permalink: /portfolio/multi-agent-tanks/
github: "https://github.com/EliteCoder21/Multi-Agent-Tanks"
---

## Overview

Two armies fight over a maze. Every tank and every base on the board is controlled by the **same neural network**, trained from scratch by self-play on a single GPU. Nothing about tactics is scripted: the network decides where each tank drives, when it shoots, when a scout ferries supplies or patches up a wounded ally, where barricades go up, what the bases build, and what the team says to each other over a learned radio.

The goal is to see how much coordinated strategy (squads, base defense, sieges, supply lines, medics, fortifications) can *emerge* from reward design and self-play alone, and to make that fast enough to iterate on in minutes rather than days.

**GitHub:** [EliteCoder21/Multi-Agent-Tanks](https://github.com/EliteCoder21/Multi-Agent-Tanks)

![Top-down overview of a Multi-Agent Tanks game](/images/portfolio/multi-agent-tanks-overview.png)

## Key Ideas

- **One shared policy.** A single network controls both teams' tanks and bases; agents differ only in what they observe (a 196-number observation of radar sectors, a forward vision cone, and their own state).
- **Learned team radio.** Every agent broadcasts a key and a 64-number message each turn. Listeners attend over living teammates with four attention heads, and the whole channel is differentiable, so the listener's policy gradient teaches the speaker what is worth saying.
- **Memory.** A GRU lets agents remember recent turns, such as an enemy that went behind a wall or the direction a squad was heading.
- **Reward design as the main lever.** Individual credit, 30% team spirit, asymmetric base rewards, squad-cohesion and focus-fire terms, and small economy rewards. Each term exists because self-play found a degenerate strategy without it; the repository's design history documents those failures.
- **Measured, not assumed.** Evaluation plays saved checkpoints against a scripted raider bot and against a copy of the policy with the radio muted, to test whether the messages carry information.

## Engineering

- **1,024 games at once.** Every agent of every game is one row of a single tensor, and `torch.compile` fuses sensors and physics into a handful of GPU kernels, reaching roughly 1.5 million agent-steps per second before the network.
- **Recurrent PPO** with backpropagation through time over whole-game minibatches, bf16, and a training iteration of about 7.5 seconds on an NVIDIA DGX Spark (GB10).
- **Opponent pool.** A quarter of games use a frozen past snapshot or the scripted raider so the policy cannot forget older styles.
- **Live viewer.** A pygame viewer reloads weights as they train and lets you take over any tank in top-down or raycast first-person mode.

![First-person view from a tank](/images/portfolio/multi-agent-tanks-first-person.png)

I also wrote about what building this taught me: [One network, twenty-eight tanks](/posts/one-network-twenty-eight-tanks/).

## Technologies

- Python, PyTorch (CUDA, `torch.compile`), NumPy/SciPy, pygame-ce, TensorBoard
- Multi-agent reinforcement learning, PPO, attention, recurrent policies
- GPU-parallel simulation and performance profiling
