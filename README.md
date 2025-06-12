# MACHX03 Blinky Example

This repository contains a minimal LED blink design for the
MachXO3LF-6900C-S-EVN evaluation board.

## Contents

- `src/blinky.v` – Verilog source for the top-level blink module.
- `constraints/blinky.lpf` – Example constraint file. Update pin
  assignments according to your board documentation.
- `scripts/build.tcl` – TCL script to build the project using
  Lattice Diamond.
- `scripts/build.sh` – Helper shell script that invokes the TCL script.

## Building

1. Install Lattice Diamond and ensure the command-line tools are in your
   `PATH`.
2. From the repository root run:

```sh
sh scripts/build.sh
```

This will create `blinky.bit` in the current directory. Program the board
with the generated bitstream using Diamond Programmer or `openFPGALoader`.


