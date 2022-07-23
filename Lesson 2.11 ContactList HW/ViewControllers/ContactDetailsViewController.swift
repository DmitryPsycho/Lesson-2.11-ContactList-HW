//
//  ContactDetailsViewController.swift
//  Lesson 2.11 ContactList HW
//
//  Created by Psycho on 23.07.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    
    @IBOutlet var emailLable: UILabel!
    @IBOutlet var phoneNumberLable: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        emailLable.text = "Email: \(person.mailAdress)"
        phoneNumberLable.text = "Phone: \(person.phoneNumber)"
    }

}
