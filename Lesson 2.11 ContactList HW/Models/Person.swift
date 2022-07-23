//
//  Person.swift
//  Lesson 2.11 ContactList HW
//
//  Created by Psycho on 20.07.2022.
//

import Foundation

struct Person {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let mailAdress: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        
        var randomPersonArray: [Person] = []
        
        let firstNames = DataStore.shared.firstNamesArray.shuffled()
        let lastNames = DataStore.shared.lastNamesArray.shuffled()
        let emails = DataStore.shared.mailAdressArray.shuffled()
        let phones = DataStore.shared.phoneNumbersArray.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phones[index],
                mailAdress: emails[index]
            )
            
            randomPersonArray.append(person)
        }
        return randomPersonArray
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
