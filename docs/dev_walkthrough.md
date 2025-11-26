# Development Walkthrough

This document outlines the complete development process for the FPGA Audio Visualizer project. It is organized into phases to document the progression from setup to full implementation.

--- 

##  Phase 1: Setup and Environment Verification

**Goal:** Establish a functional baseline for Quartus, simulation, and board connectivity.

### Tools
- **Intel Quartus Prime (Lite Edition)**
- **Questa (ModelSim)**
- **FPGA Board:** Altera DE2-115 (Cyclone IV E)
- **Programmer:** USB-Blaster

### Completed Tasks
- Install and configure Quartus Prime (Lite Edition) and Questa  
- Verify board detection via USB-Blaster  
- Run a simple LED blink demo  
- Create clean directory structure for source, simulation, and documentation files  

### Documentation

Phase 1 includes two internal documents (found in /docs):

- phase1_summary.md — Summary of tasks, goals, and verification steps
- phase1_pin_usage.md — Pin mapping and constraints references for the DE2-115

---