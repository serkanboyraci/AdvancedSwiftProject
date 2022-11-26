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
classSerkan.age = 40
// you can easily change it, class is mutable even if it is define as let
print(classSerkan.age)

structSerkan.age = 40
// if you define let structSerkan you can not change it, it is IMMUTABLE
// if you want change it, you must define as var structSerkan
print(structSerkan.age)

