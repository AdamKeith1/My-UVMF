# My-UVMF

## Description
Took this on as a personal project to better learn UVM as well as creating open source verification software. This is very similar to UVMF, although to better learn UVM I am developing it without the aid of looking at how UVMF is implemented. 

This is essentially a lightweigth version of UVMF that eliminates the repetitive slog work associated with developing a UVM testbench.

### How it works
User adds DUT and testbench specs to YAML file. Then generate.py makes the UVM testbench files.

## Version
Version        - NA

Version in Dev - 1.0

## Release Outline
### 1.0 
Should generate simple UVM scaffolding based on the YAML spec file. Would support a small to medium sized module (the demo will use an ALU).

What MyUVMF does...

- Generates all UVM architecture components with their build, connect and run phases

- Creates and connects virtual interface and all analysis ports

What the user has to do...

- Create test procedure in test.sv

- Fill in sequence 'randomize with' constraints

- Fill in scoreboard compare task

- Connect DUT in testbench (will be fixed with more robust interface support)


### Next Releases - Outline

- 2.0 
    - bigger focus on cleaning up the implementation to make it more of an actual software package
    - more testbench and verification support
    - more support for includes and packages

- 3.0
    - more complex timing support
    - support for larger designs (ie multi-agent architectures)
