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
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        // hide nav bar in first view controller
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        
        // show nav bar again for other views
        
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
}

