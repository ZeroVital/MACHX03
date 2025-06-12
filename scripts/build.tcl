# Lattice Diamond batch script for MachXO3LF-6900C-S-EVN
# Create project and build bitstream

prj_project create blinky -family MachXO3L -device LCMXO3LF-6900C-5BG256C -impl impl1 -top blinky
prj_source add src/blinky.v
prj_constraint add constraints/blinky.lpf

prj_run Synthesis -impl impl1
prj_run Map -impl impl1
prj_run PAR -impl impl1
prj_run Export -impl impl1 -format bit -bitstream_file blinky.bit

