---
title: "PipelinedCPU"
excerpt: "5-stage pipelined RISC-V processor implementing the RV32I instruction set"
collection: portfolio
date: 2026-03-17
permalink: /portfolio/pipelined-cpu/
github: "https://github.com/EliteCoder21/PipelinedCPU"
---

## Overview

Complete, synthesizable implementation of a 5-stage pipelined RISC-V processor compliant with the RV32I base integer instruction set architecture. This capstone project for CSE 469 demonstrates fundamental concepts in modern processor design including instruction pipelining, hazard mitigation, and modular digital system architecture.

## Architecture

```
┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌───────────┐
│  FETCH  │───>│ DECODE  │───>│ EXECUTE │───>│ MEMORY  │───>│ WRITEBACK │
└─────────┘    └─────────┘    └─────────┘    └─────────┘    └───────────┘
```

## Key Features

- **Full RV32I Support**: All base integer instructions including arithmetic, logical, shifts, loads, stores, branches, jumps, and upper immediates
- **Data Forwarding**: Bypasses results from execute and memory stages to decode stage
- **Hazard Detection**: Load-use stalls, branch misprediction handling with pipeline flushes
- **Modular Design**: Separate well-documented modules for each pipeline stage

## Technical Implementation

- **Language**: SystemVerilog
- **Simulation**: Verilator, Icarus Verilog
- **Container**: Docker environment with pre-configured tools
- **Testing**: RISC-V assembly programs, C test programs

## Pipeline Stages

1. **Fetch (IF)**: Instruction retrieval and PC update
2. **Decode (ID)**: Instruction decoding, register file reads, immediate extraction
3. **Execute (EX)**: ALU operations, branch comparisons, jump targets
4. **Memory (MEM)**: Load/store operations to data memory
5. **Writeback (WB)**: Result writing to register file

## Learning Outcomes

- [Add your key learning outcome or project highlight here]
- [Add your key learning outcome or project highlight here]
- [Add your key learning outcome or project highlight here]

## Course

CSE 469 - Computer Architecture I, University of Washington, Professor Mark Oskin

## Technologies

- SystemVerilog
- RISC-V Architecture
- FPGA/Verilator Simulation
- Digital Logic Design
- Pipeline Design
