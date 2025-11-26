# Phase 1 Summary

Phase 1 focused on creating a simple LED-based test circuit on the DE2-115 FPGA board to verify that the board, clock source, and basic pin assignments work correctly before integrating audio-visualizer logic in later phases.

Three SystemVerilog/CSV files were developed:

## 1. `fpga_audio_visualizer_test.sv`
This module serves as the top-level test design.

Key features:
- Receives the 27 MHz clock (`clk_27`), a reset signal (`reset_bar`), and a debug switch.
- Instantiates `clk_cct` to generate a slow, visible clock used to blink LEDs.
- Implements a shifting LED pattern that fills from LSB to MSB with ones.
- Drives the 18 red LEDs (`LED_RED[17:0]`) to confirm correct functionality and timing changes.

## 2. `clk_cct.sv`
This module divides the 27 MHz input clock to produce slower output clocks depending on the `debug` switch.

- If `debug = 1`, generate a 10 Hz clock.
- If `debug = 0`, generate a 1 Hz clock.
- Contains a synchronous down-counter and toggles `clk` when the counter reaches 1.
- Reset forces the counter into a known state.

## 3. `DE2_115_pin_assignments.csv`
This file maps FPGA ports to the physical DE2-115 board pins.

Pins used in Phase 1:
- 27 MHz clock
- Reset input (`reset_bar`)
- Debug switch (`debug`)
- Red LEDs (`LED_RED[17:0]`)

This allowed Quartus to properly assign design ports to hardware.

---

# Phase 1 Outcomes

- Verified that the FPGA compiles, programs, and responds to the debug switch and reset.
- Confirmed the generated slow clocks (1 Hz / 10 Hz) behave correctly.
- Observed the LED shifting pattern as expected.
- Established a working base project structure for the full audio visualizer.
