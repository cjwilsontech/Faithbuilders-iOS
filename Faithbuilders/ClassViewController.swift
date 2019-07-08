//
//  ClassViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/30/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit
import CoreLocation

class ClassViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var speakerLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    var myClass:Class?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myClass = myClass {
            // Set the text properties.
            titleLabel.text = myClass.title
            timeLabel.text = myClass.timeStart + " - " + myClass.timeEnd
            speakerLabel.text = myClass.speaker?.name
            locationLabel.text = myClass.location
            
            // Set the image.
            if (myClass.speaker != nil) {
                photoImageView.image = myClass.speaker?.photo
            } else {
                photoImageView.image = UIImage(named: "profile")
            }
            
            // Make the image circular.
            photoImageView.layer.cornerRadius=photoImageView.frame.size.width/2
            photoImageView.layer.masksToBounds=true
            
            // Set the date.
            if (myClass.day == 0) {
                dateLabel.text = "Thursday, July 11"
            } else if (myClass.day == 1) {
                dateLabel.text = "Friday, July 12"
            } else {
                dateLabel.text = "Saturday, July 13"
            }
        }
    }
}
