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
