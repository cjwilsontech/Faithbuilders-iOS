//
//  SpeakerViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/14/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class SpeakerViewController: UIViewController {
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var speaker:Speaker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let speaker = speaker {
            photoImageView.image = speaker.photo
            photoImageView.layer.cornerRadius=photoImageView.frame.size.width/2
            photoImageView.layer.masksToBounds=true
            nameLabel.text = speaker.name
            locationLabel.text = speaker.location
            descriptionTextView.text = speaker.description
            //descriptionTextView.frame.size.height = CGFloat.max
            //descriptionTextView.sizeToFit()
        }
    }
    
    override func viewDidLayoutSubviews() {
        descriptionTextView.setContentOffset(CGPoint.zero, animated: false)
    }
    
}

