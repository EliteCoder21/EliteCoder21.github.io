---
title: 'One network, twenty-eight tanks: what self-play taught me about reward design'
date: 2026-09-28
permalink: /posts/one-network-twenty-eight-tanks/
excerpt: 'I trained a single attention-based network to run entire armies of tanks. Almost every rule in the project exists because an earlier version did something dumb.'
tags:
  - reinforcement learning
  - multi-agent
  - PyTorch
  - projects
---

[Multi-Agent Tanks](/portfolio/multi-agent-tanks/) started as a small arena in the spirit of Tank Trouble and grew into a strategy game: two armies, five bases each, a maze of rock, and a single neural network controlling every tank and every base on both sides. Nothing about tactics is scripted. The network decides where each tank drives, when it shoots, when a scout heals a wounded ally, where barricades go up, and what the bases build. The code is on [GitHub](https://github.com/EliteCoder21/Multi-Agent-Tanks).

What I wanted to know was how much coordinated behaviour (squads, sieges, supply lines, medics) can *emerge* from reward design and self-play alone, and whether I could make it fast enough to iterate in minutes instead of days.

<img src="/images/posts/diagram-tanks.svg" alt="Observation goes through an encoder; one branch feeds an attention radio over teammates, another passes the agent's own state; both feed a GRU memory and then the action heads." style="max-width:100%;">

## The radio that said nothing

My first radio let each tank pick one of a few discrete "words" every turn. It carried exactly zero information. A sampled word gets no gradient, so nothing ever taught a speaker what to say. I only knew because I trained a copy with the radio muted and it did just as well.

The fix was a continuous, differentiable channel: every agent broadcasts a key and a 64-number message, and each listener asks its own question and hears teammates weighted by attention (four heads). Because the channel is part of the network, a listener's policy gradient teaches the speaker what's worth saying. Now the muted copy loses, by margins as large as 80 to 18 in the earlier averaging version, and I can measure *who* agents actually listen to.

## Almost every reward term is a scar

- **Dense penalties swamp everything.** Small per-turn penalties for clustering and bumping walls added up to more than the combat reward, and tanks learned to avoid everything, including the enemy.
- **Punishing death makes cowards.** A death penalty close to the cost of losing the game collapsed play into passivity. It's minus one now.
- **Rewards for formation teach clumping; exemptions teach camping.** What finally worked charges a soldier for drifting from its squad *and* for not fighting, at the same rate.
- **Shared economy rewards become the whole game.** When I paid generously for delivering hearts, kills fell from about 44 a game to 5 while both sides built impressive walls and farmed. The economy rewards are small now.
- **Symmetric base rewards make teams trade bases.** Losing a base has to hurt more than taking one pays.
- **Some actions collapse to "never".** Twice, the place-block output fell to exactly zero probability, after which no reward could ever teach it. A larger entropy bonus keeps it alive.

## The speed work was half the project

Training runs **1,024 games at once**, each agent a row of one big tensor, with `torch.compile` fusing the sensors and physics into a few GPU kernels. That's about 1.5 million agent-steps per second before the network, and a full training iteration takes around 7.5 seconds on my DGX Spark. A few things I learned the hard way:

- `torch.compile` made the ray-marching sensors about 40 times faster than eager PyTorch.
- A shared pool of bullet slots let team 0 grab them first and quietly biased every game. Each agent owns its slots now.
- Copying the block grid (80 million cells) every turn cost more than all the other physics combined. Updating in place fixed it.
- Swapping small MLPs for a 512-unit encoder and a GRU memory trained with backprop-through-time meant the policy could beat the scripted raider after about 400 iterations instead of about 4,000.

## Self-play alone drifts

At one point a well-trained policy lost every game to the dumb scripted raider, which just charges. Pure self-play had wandered into a style that beat itself but little else. Now a quarter of games put one side under either the raider or a frozen past snapshot, so the policy can't forget older styles.

There's also a live viewer where you can take over any tank, in top-down or first-person, while the network plays everyone else, including your teammates. If you want to try it, the repo's README walks through it.
