---
title: "ChessCaptioning"
excerpt: "Research into explainable chess AI with captioning capabilities"
collection: portfolio
date: 2025-04-01
permalink: /portfolio/chess-captioning/
github: "https://github.com/EliteCoder21/ChessCaptioning"
---

## Overview

Research project exploring interpretable AI for chess through reinforcement learning and computer vision. The goal is to create AI agents that can not only play chess at a high level but also explain their decision-making process in human-understandable terms.

**GitHub:** [EliteCoder21/ChessCaptioning](https://github.com/EliteCoder21/ChessCaptioning)

## Key Features

- **Interpretable Reinforcement Learning**: Developed g-AWRL agent using attention-weighted mechanisms instead of traditional CNN value networks
- **Visual Explanations**: Attention heat maps showing which board regions influence decisions
- **Natural Language Captions**: Basic natural language explanations of chess positions and moves
- **ChessNet Architecture**: Convolutional attention model trained on expert games

## Technical Implementation

- **Frameworks**: PyTorch for deep learning, custom RL training pipeline
- **Model Architecture**: Attention mechanisms for interpretability, CNN for board evaluation
- **Training Data**: Large dataset of expert chess games
- **Evaluation**: ELO rating estimation against established engines

## Learning Outcomes

- Developed g-AWRL agent using attention-weighted mechanisms instead of CNN value networks for improved interpretability
- Created ChessNet architecture with attention heat maps to visualize decision-making on chess boards
- Achieved ~1800 ELO competitive strength while maintaining full explainability of move selections

## Impact

Demonstrated that explainable AI can be competitive with traditional approaches, proving that interpretability doesn't require sacrificing performance in complex game domains.

## Technologies

- Python
- PyTorch
- Reinforcement Learning
- Computer Vision
- Attention Mechanisms
- Chess Programming
