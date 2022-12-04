//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by Ali serkan Boyracı  on 26.11.2022.
//

import Foundation

class MusicianClass {
    var name : String //you should use let, beacuse these lines must be sth.
    var age : Int
    var instrument : String
    
    init(nameInput : String, ageInput : Int, instrumentInput : String) {
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
    }
    
    func happyBirthday () {
            self.age += 1
    }
    
}


