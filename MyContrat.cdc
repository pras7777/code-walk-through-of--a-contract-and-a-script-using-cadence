access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {
        // 4 Variables
        pub(set) var a: String
        pub var b: String
        access(contract) var c: String
        access(self) var d: String

        // 3 Functions
        pub fun publicFunc() {}
        access(contract) fun contractFunc() {}
        access(self) fun selfFunc() {}

        // Area 1: Function to modify variables
        pub fun modifyVariables() {
            // pub(set)
            testStruct.a = "2"
            let variableA = testStruct.a

            // pub
            testStruct.b = "2"
            let variableB = testStruct.b

            // access(contract)
            testStruct.modifyC("2")
            let variableC = testStruct.c

            // access(self)
            testStruct.modifyD("2")
            let variableD = testStruct.d
        }

        // Function to modify access(contract) variable c
        pub fun modifyC(newValue: String) {
            self.c = newValue;
        }

        // Function to modify access(self) variable d
        pub fun modifyD(newValue: String) {
            self.d = newValue;
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/

            // Area 2: Function to modify variables
            testStruct.modifyVariables()
        }

        init() {
            self.e = 17
        }
    }

    // Area 4: Function to create SomeResource
    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource();
    }

    // Area 3: Function to perform quests
    pub fun questsAreFun() {
        // Area 3: Function to modify variables
        testStruct.modifyVariables()
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
