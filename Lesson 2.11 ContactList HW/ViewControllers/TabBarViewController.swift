//
//  ViewController.swift
//  Lesson 2.11 ContactList HW
//
//  Created by Psycho on 21.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as?
                ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as?
                SectionTabViewController else { return }
        
        let persons = Person.getPerson()
        contactListVC.personList = persons
        sectionVC.personList = persons
    }
}
