//
//  ClassTableViewCell.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/18/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    // Mark: Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeStartLabel: UILabel!
    @IBOutlet weak var timeEndLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var speakerLabel: UILabel!
    
    var myClass: Class?
}
