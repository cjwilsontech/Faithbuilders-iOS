//
//  ScheduleViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/12/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
	@IBOutlet weak var tableContainer: UIView!
	@IBOutlet weak var segmentLabel: UILabel!
	
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
		containerViewController!.updateDay(segmentedControl.selectedSegmentIndex)
    }
	
	var containerViewController: ScheduleTableViewController?
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// you can set this name in 'segue.embed' in storyboard
		if segue.identifier == "segueScheduleView" {
			let connectContainerViewController = segue.destination as! ScheduleTableViewController
			containerViewController = connectContainerViewController
		}
	}
}
