//
//  Meal.swift
//  ToDoList
//
//  Created by Gabriel Arreola on 10/20/16.
//  Copyright © 2016 Gabriel Arreola. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    
    var name: String
    var completed = false
    
    // MARK: Initialization
    
    init?(name: String) {
        
        // Initialize stored properties.
        self.name = name
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty {
            return nil
        }
        
    }
    
}

