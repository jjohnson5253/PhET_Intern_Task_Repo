//
//  PhET_Intern_Task_Tests.swift
//  PhET_Intern_Task_Tests
//
//  Created by Jake Johnson on 12/12/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import XCTest

@testable import PhET_Intern_Task

class PhET_Intern_Task_Tests: XCTestCase {
    
    //MARK: Simulation Class Tests
    
    // Confirm that the Simulation initializer returns a Simulation object when passed valid parameters.
    
    func testSimulationInitializationSucceeds() {
        
        let sampleSimulation = Simulation.init(name: "SampleSim", url: "sample.url.com")
        
        XCTAssertNotNil(sampleSimulation)
        
    }
    
    // Confirm that the Simulation initializer returns nil when passed an empty name or url
    
    func testSimulationInitializationFails() {
        
        let emptyStringSimulation = Simulation.init(name: "", url: "")
        
        XCTAssertNil(emptyStringSimulation)
        
    }

    
}
