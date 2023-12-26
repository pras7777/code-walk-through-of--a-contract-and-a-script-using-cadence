# code-walk-through-of--a-contract-and-a-script-using-cadence
## SomeContract Move Contract

This Move contract, named SomeContract, defines a structure (SomeStruct) with variables and functions demonstrating various access modifiers. It also includes a resource (SomeResource) and associated functions.

## Overview

- **SomeContract:** The main contract defining SomeStruct, functions, and a resource.
- **SomeStruct:**
  - Variables:
    - `a`: Can be read and modified from anywhere.
    - `b`: Can be read and modified from anywhere.
    - `c`: Can be read from anywhere but modified only within the contract.
    - `d`: Can be read and modified only within the struct.
  - Functions:
    - `publicFunc()`: Public function that can be called from anywhere.
    - `contractFunc()`: Function with contract-level access, can be called from within the contract.
    - `selfFunc()`: Function with self-level access, can be called from within the struct.

- **SomeResource:**
  - Variables:
    - `e`: An integer variable.
  - Functions:
    - `resourceFunc()`: Function demonstrating the usage of the resource.

## Usage

### Initialization

Initialize the contract:

self.testStruct = SomeStruct()
// Area 1: structFunc
testStruct.a = "2"
let variableA = testStruct.a

// Area 2: resourceFunc
SomeContract.testStruct.a = "2"
let variableA = SomeContract.testStruct.a
// Area 3: questsAreFun
questsAreFun()

// Area 4: createSomeResource
createSomeResource()
### Areas
Area 1: Demonstrates accessing and modifying variables within the structFunc.

Area 2: Demonstrates accessing and modifying variables within the resourceFunc.

Area 3: Demonstrates function calls within the questsAreFun.

Area 4: Demonstrates creating a resource within the createSomeResource.
