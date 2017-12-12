//
//  SimulationTableViewController.swift
//  PhET_Intern_Task
//
//  Created by Jake Johnson on 12/12/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import UIKit

class SimulationTableViewController: UITableViewController {
    
    //MARK: Properties
    
    // create an array of Simulation objects (make array var so it is mutable)
    
    var simulations = [Simulation]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // load initial simulations
        
        loadInitialSimulations()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Private Methods
    
    private func loadInitialSimulations() {
        
        // Simulation class's initializer is failable, so need to check the result returned by the initializer
        
        guard let simulation1 = Simulation(name: "Simulation 1", url: "sim1.url") else {
            
            fatalError("Unable to instantiate simulation1")
            
        }
        
        guard let simulation2 = Simulation(name: "Simulation 2", url: "sim2.url") else {
            
            fatalError("Unable to instantiate simulation2")
            
        }
        
        guard let simulation3 = Simulation(name: "Simulation 3", url: "sim3.url") else {
            
            fatalError("Unable to instantiate simulation3")
            
        }
        
        simulations += [simulation1, simulation2, simulation3]
        
    }

}
