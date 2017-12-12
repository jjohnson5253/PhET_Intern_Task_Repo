//
//  SimulationTableViewCell.swift
//  PhET_Intern_Task
//
//  Created by Jake Johnson on 12/12/17.
//  Copyright © 2017 Jake Johnson. All rights reserved.
//

import UIKit

class SimulationTableViewCell: UITableViewCell {
    
    //MARK: Properties

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
