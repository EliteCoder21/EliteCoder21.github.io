---
title: "ChessCaptioning"
excerpt: "Research into chess playing and captioning Artificial Intelligence"
collection: portfolio
date: 2025-02-01
github: "https://github.com/EliteCoder21/ChessCaptioning"
---

## Overview

This repository constitutes my research into chess playing and captioning Artificial Intelligence. I developed interpretable RL agents that can explain their decision-making process.

## Key Components

### g-AWRL Agent
A novel reinforcement learning agent that replaces CNN value networks with attention-weighted mechanisms, preserving AlphaZero's strengths while improving interpretability through:
- Heat maps showing attention weights
- Rudimentary natural language explanations

### ChessNet
A convolutional attention model trained on expert games that:
- Uses attention maps to highlight key board regions
- Improves model transparency
- Maintains approximately 1800 ELO strength

## Impact

Proved that explainable Artificial Intelligence can be successful for a complex game such as Chess, demonstrating that interpretability doesn't have to come at the cost of performance.

## Technologies

- Python
- PyTorch
- Reinforcement Learning
- Computer Vision
- Attention Mechanisms
