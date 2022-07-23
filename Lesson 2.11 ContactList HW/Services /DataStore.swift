//
//  DataStore.swift
//  Lesson 2.11 ContactList HW
//
//  Created by Psycho on 20.07.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    var firstNamesArray = [
        "James",
        "Jimmy",
        "Dave",
        "Steve",
        "Jonny",
        "John",
        "Kirk"
    ]
   
    let lastNamesArray = [
        "Hetfield",
        "Page",
        "Mustane",
        "Vai",
        "Silverhand",
        "Mayer",
        "Hammet"
    ]
    
    let phoneNumbersArray = [
        "999-999-999",
        "888-888-888",
        "777-777-777",
        "666-666-666",
        "555-555-555",
        "444-444-444",
        "333-333-333"
    ]
    
    let mailAdressArray = [
        "999@mail.com",
        "888@mail.com",
        "777@mail.com",
        "666@mail.com",
        "555@mail.com",
        "444@mail.com",
        "333@mail.com"
    ]
    
    init() {}

}
