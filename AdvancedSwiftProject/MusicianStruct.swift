//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Ali serkan Boyracı  on 26.11.2022.
//

import Foundation


struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    // there isnt any init func. it means free init structure.
    
    mutating func happyBirthday() { // if you want to change parameter in func, you have to define func as mutating func
        self.age += 1
    }
    


    
    
}


