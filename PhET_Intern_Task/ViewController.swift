//
//  ViewController.swift
//  PhET_Intern_Task
//
//  Created by Jake Johnson on 11/24/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import UIKit

//This is the opening ViewController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //programmatic button function (performs a segue to the WebViewController
    @IBAction func to_Simulation_Bar_Button(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "to_Simulation_Segue", sender: self)
    }
    

}

