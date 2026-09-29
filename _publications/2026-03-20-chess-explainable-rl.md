---
title: "Explainable Chess Reinforcement Learning with Attention"
collection: publications
category: manuscripts
permalink: /publication/chess-explainable-rl
excerpt: 'Developing interpretable reinforcement learning agents for chess using attention-weighted mechanisms and convolutional neural networks.'
date: 2026-03-20
venue: 'CSE 493G Deep Learning Course Project, University of Washington'
paperurl: '/files/ChessReinforcmentLearning_CSE493G_final_paper.pdf'
bibtexurl: '/files/bibtex1.bib'
citation: 'Pawar, A., Luiten, R., and Tiwari, A. (2026). "Explainable Chess Reinforcement Learning with Attention." <i>CSE 493G Deep Learning Course Project</i>. University of Washington.'
---

## Abstract

This project explores the development of interpretable reinforcement learning agents for chess that can explain their decision-making process. We introduce g-AWRL, a novel agent that replaces traditional CNN value networks with attention-weighted mechanisms, and ChessNet, a convolutional attention model that highlights critical board regions. Our work demonstrates that explainable AI can achieve competitive performance (~1800 ELO) while providing human-interpretable justifications for its moves.

## Key Contributions

- **g-AWRL Agent**: Novel attention-weighted reinforcement learning approach that maintains AlphaZero-style strengths while improving interpretability
- **ChessNet Architecture**: Convolutional attention model that visualizes key board regions through attention heat maps
- **Natural Language Explanations**: Basic generation of natural language justifications for move selections

## Methods

- Attention mechanisms for interpretability without sacrificing performance
- Self-play training pipeline for reinforcement learning
- Attention visualization for understanding model decisions
- Integration of computer vision techniques for board analysis

## Results

The g-AWRL agent achieves approximately 1800 ELO strength while providing transparent explanations of its decision-making process, demonstrating that interpretability and performance can coexist in complex game-playing domains.
