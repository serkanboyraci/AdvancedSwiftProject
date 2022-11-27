//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Ali serkan Boyracı  on 26.11.2022.
//

import Foundation



let classSerkan = MusicianClass(nameInput: "serkan", ageInput: 35, instrumentInput: "guitar")
//print(serkanClass.age)


var structSerkan = MusicianStruct(name: "serkan", age: 35, instrument: "guitar")
// there isnt any init func. it means free init structure.
//print(serkanStruct.instrument)


// IMMUTABLE STRUCT
classSerkan.instrument = "flute"
// you can easily change it, class is mutable even if it is define as let
print(classSerkan.instrument)

structSerkan.instrument = "flute"
// if you define let structSerkan you can not change it, it is IMMUTABLE
// if you want change it, you must define as var structSerkan
print(structSerkan.instrument)

// REFERENCE vs VALUE

let copyOfclassSerkan = classSerkan

var copyOfstructSerkan = structSerkan

print(copyOfclassSerkan.name)

print(copyOfstructSerkan.name)

copyOfclassSerkan.name = "ali serkan"
copyOfstructSerkan.name = "ali serkan"

print(copyOfclassSerkan.name)
print(copyOfstructSerkan.name)

print(classSerkan.name) //changed original name parameter
print(structSerkan.name)

// Reference Types -> Class
// Copy -> Same object new reference in HEAP, changed original one. -> 1 object + 2 reference

// Value Types -> Struct
// Copy -> new object -> 2 object + 2 references


// FUNCTION AND MUTATING FUNCTION

print(classSerkan.age)
classSerkan.happyBirthday() // you can easily change original parameter in func
print(classSerkan.age)

print(structSerkan.age)
structSerkan.happyBirthday() // if you want to change parameter in func, you have to define func as MUTATING FUNC
print(structSerkan.age)



// TUPLE

let myTuple = (1,3)
print(myTuple.0) // to reach the element of tuple, you will write its order.

//let myTuple2 = (1,3,5)
var myTuple2 = (1,3,5)
myTuple2.2 = 10 // if you write tuple with let, you cant change its element
print(myTuple2.2)

let myTuple3 = ("serkan", 100) // you can define string and Int together
print(myTuple3)

let myTuple4 = (10, [10,20,30]) // you can write array as a element
print(myTuple4.1[2]) // to reach second elemnt in array, you have to use square brackets

let myString : String

let predefinedTuple : (String, String, Int) // you can use also predefined tuple like this
predefinedTuple.0 = "ali"
predefinedTuple.1 = "serkan"
predefinedTuple.2 = 35
print(predefinedTuple)

let rockTuple = (name:"JAMES", metallica:true, inst:"guitar") // you can define tuple parameters orders as a String
print(rockTuple.name)
print(rockTuple.metallica)
print(rockTuple.inst)

// GUARD LET & IF LET

// Guard -> Negative && More Self-Confident
// If -> Positive && More Safe

let myNumber = "ali"

func convertToIntegerGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else { // guard let thinks that, you have to/must do this converting
        return 0
    }
    return myInteger
}

func convertToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput) {
        return myInteger
    } else {
        return 0
    }
}
print(convertToIntegerGuard(stringInput: myNumber))
print(convertToIntegerIf(stringInput: myNumber))
// you will take same result.
