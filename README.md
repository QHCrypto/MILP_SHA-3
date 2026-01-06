This is the source code repository for the paper "Internal Differential Collision Attacks against Round-Reduced SHA-3", including the code for MILP modeling for internal differential characteristic.

## This repository contains the following files:

  - [5rkeccak400.cpp](./5rkeccak400.cpp), [6rkeccak400.cpp](./6rkeccak400.cpp)
    
    MILP modeling for internal differential characteristic search of Keccak[240,160] (rounds 1-3.5/4.5)

  - [6rkeccak800.cpp](./6rkeccak800.cpp)

    MILP modeling for internal differential characteristic search of Keccak[640,160] (rounds 1-4.5)
     
  - [6rSHAKE128.cpp](./6rSHAKE128.cpp), [6rSHAKE256.cpp](./6rSHAKE256.cpp)
    
    MILP modeling for internal differential characteristic search of SHAKE128/SHAKE256 (rounds 1-/4.5)

  - [4r512.cpp](./4r512.cpp)
    
    MILP modeling for internal differential characteristic search of SHA3-512 (rounds 1-/2.5)
    
## Requirements

- Operating system: Linux
- Compiler: g++ ≥ 9 (tested with g++ 11)
- Gurobi Optimizer = 13.0 (Otherwise, the Makefile needs to be modified)
- Valid Gurobi academic license

---

## Build

Before compiling, make sure the environment variable `GUROBI_HOME` is set
to the Gurobi installation directory, for example:

```bash
export GUROBI_HOME=/opt/gurobi1300/linux64/
```

## Compile

All C++ source files in this repository can be compiled using the provided
Makefile.

To compile all source files:

```bash
make
```

To compile a specific experiment (e.g., 6rSHAKE256.cpp):
```bash
make 6rSHAKE256
```

## Run
Make sure the  environment variable `LD_LIBRARY_PATH` is updated to include the Gurobi library directory, for example:
```bash
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
```