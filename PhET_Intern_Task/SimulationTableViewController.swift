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
        
        // set title for this view
        
        self.title = "Simulations"

        // load initial simulations
        
        loadInitialSimulations()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return simulations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier
        
        let cellIdentifier = "SimulationTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SimulationTableViewCell else {
            fatalError("The dequeued cell is not an instance of SimulationTableViewCell.")
        }
        
        // Fetches appropriate simulation for the data source layout.
        
        let simulation = simulations[indexPath.row]
        
        cell.nameLabel.text = simulation.name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "cellToSimulationSegue", sender: cell)
    }
    

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

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "cellToSimulationSegue" {
            
            guard let webViewController = segue.destination as? WebViewController else {
                
                fatalError("Unexpected destination: \(segue.destination)")
            
            }
            
            guard let selectedSimulationCell = sender as? SimulationTableViewCell else {
                
                fatalError("Unexpected sender: \(String(describing: sender))")
            
            }
            
            guard let indexPath = tableView.indexPath(for: selectedSimulationCell) else{
                
                fatalError("The selected cell is not being displayed correctly by the table")
            }
            
            let selectedSimulation = simulations[indexPath.row]
            
            webViewController.simulation = selectedSimulation
            
        }
    }
    
    //MARK: Private Methods
    
    private func loadInitialSimulations() {
        
        // Simulation class's initializer is failable, so need to check the result returned by the initializer
        
        guard let circuitConstructSim = Simulation(name: "Circuit Construction Kit", url: "https://phet.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc_en.html") else {
            
            fatalError("Unable to instantiate simulation1")
            
        }
        
        guard let buildAnAtomSim = Simulation(name: "Build an Atom", url: "https://phet.colorado.edu/sims/html/build-an-atom/latest/build-an-atom_en.html") else {
            
            fatalError("Unable to instantiate simulation1")
            
        }
        
        guard let energySkateParkSim = Simulation(name: "Energy Skate Park", url: "https://phet.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics_en.html") else {
            
            fatalError("Unable to instantiate simulation2")
            
        }
        
        guard let johnTravoltageSim = Simulation(name: "John Travoltage", url: "https://phet.colorado.edu/sims/html/john-travoltage/latest/john-travoltage_en.html") else {
            
            fatalError("Unable to instantiate simulation3")
            
        }
        
        simulations += [circuitConstructSim, buildAnAtomSim, energySkateParkSim, johnTravoltageSim]
        
    }

}
