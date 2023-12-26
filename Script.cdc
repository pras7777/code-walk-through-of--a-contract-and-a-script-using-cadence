import SomeContract from 0x05

pub fun main() {
    /**************/
    /*** AREA 4 ***/
    /**************/

    // pub(set)
    SomeContract.modifyVariableA("2")
    let variableA = SomeContract.testStruct.a

    // pub/access(all)
    SomeContract.modifyVariableB("2")
    let variableB = SomeContract.testStruct.b

    // access(contract)
    // SomeContract.modifyVariableC("2")
    // let variableC = SomeContract.testStruct.c

    // access(self)
    // SomeContract.modifyVariableD("2")
    // let variableD = SomeContract.testStruct.d
}

// Function to modify pub(set) variable a
pub fun modifyVariableA(newValue: String) {
    SomeContract.testStruct.a = newValue;
}

// Function to modify pub variable b
pub fun modifyVariableB(newValue: String) {
    SomeContract.testStruct.b = newValue;
}

// Function to modify access(contract) variable c
// pub fun modifyVariableC(newValue: String) {
//     SomeContract.testStruct.c = newValue;
// }

// Function to modify access(self) variable d
// pub fun modifyVariableD(newValue: String) {
//     SomeContract.testStruct.d = newValue;
// }
