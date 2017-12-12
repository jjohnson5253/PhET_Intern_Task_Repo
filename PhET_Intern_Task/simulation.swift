//
//  Simulation.swift
//  PhET_Intern_Task
//
//  Created by Jake Johnson on 12/12/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import UIKit

// This class will be a data model for simulations
// Includes a name and url

class Simulation {

    //MARK: Properties

    var name: String

    var url: String
    
    //MARK: Initialization
    
    init?(name: String, url: String){
        
        // Initialization should fail if a name and url are not provided
        
        if name.isEmpty || url.isEmpty {
            
            return nil
            
        }
        
        // Initialize stored properties.
        
        self.name = name
        
        self.url = url
    }

}


