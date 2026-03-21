---
title: "CFish-Engine"
excerpt: "High-performance chess engine written in C++ implementing modern search algorithms"
collection: portfolio
date: 2026-03-18
permalink: /portfolio/cfish-engine/
github: "https://github.com/EliteCoder21/CFish-Engine"
---

## Overview

A high-performance chess engine implemented in C++ that combines classical chess programming techniques with modern search algorithms. This project demonstrates deep understanding of game AI, search optimization, and low-level performance tuning.

**GitHub:** [EliteCoder21/CFish-Engine](https://github.com/EliteCoder21/CFish-Engine)

## Key Features

- **Minimax Search with Alpha-Beta Pruning**: Efficient tree search algorithm that dramatically reduces the search space
- **Quiescence Search**: Prevents the "horizon effect" by extending search into capture sequences
- **Move Ordering**: Principal variation moving and history heuristics to improve pruning efficiency
- **Transposition Table**: Hash-based table to reuse search results from previous positions
- **Evaluation Function**: Piece-square tables with tactical and positional scoring

## Technical Implementation

- **Language**: C++ with performance-focused coding practices
- **Architecture**: Object-oriented design with separate modules for search, evaluation, and move generation
- **Optimizations**: Bitboard representation, inline functions, and cache-conscious data structures

## Learning Outcomes

- Implemented alpha-beta pruning with move ordering heuristics, achieving significant search depth improvements over basic minimax
- Designed a transposition table using Zobrist hashing to cache and reuse positions across different search branches
- Optimized evaluation function using piece-square tables and tactical/positional scoring for strong engine performance

## Technologies

- C++
- Bitboard Chess Programming
- Alpha-Beta Search
- Quiescence Search
- Transposition Tables
