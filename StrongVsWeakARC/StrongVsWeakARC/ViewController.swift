//
//  ViewController.swift
//  StrongVsWeakARC
//
//  Created by Kelsey Sparkman on 3/24/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var jayden: Person?
        var unit4PP: Apartment?
        
        jayden = Person(name: "Jayden")
        unit4PP = Apartment(unit: "4PP")
        
        jayden?.apartment = unit4PP
        unit4PP?.tenant = jayden
        
//        jayden = nil
//        unit4PP = nil
    }

}

class Person {
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
        print("Name \(name) is being initialized")
    }
    //Only so we can see it in the consol
    deinit {
        print("\(name) is is being deinitalized")
    }
}

class Apartment {
    
    let unit: String
    weak var tenant: Person?
    
    init(unit: String) {
        self.unit = unit
        print("\(unit) is being initialized.")
    }
    //Only so we can see it in the consol
    deinit {
           print("\(unit) is is being deinitalized")
       }
}
