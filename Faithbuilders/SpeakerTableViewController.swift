//
//  SpeakerTableViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/14/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class SpeakerTableViewController: UITableViewController {
    
    // MARK: Properties
    let speakers = GlobalData.getInstance().speakers

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SpeakerTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SpeakerTableViewCell
        
        
        let speaker = speakers[indexPath.row]
        
        cell.nameLabel.text = speaker.name
        cell.locationLabel.text = speaker.location
        cell.photoImageView.image = speaker.photo
        cell.photoImageView.layer.cornerRadius=cell.photoImageView.frame.size.width/2
        cell.photoImageView.layer.masksToBounds=true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let speakerDetailViewController = segue.destination as! SpeakerViewController
        if let selectedSpeakerCell = sender as? SpeakerTableViewCell {
            let indexPath = tableView.indexPath(for: selectedSpeakerCell)!
            speakerDetailViewController.speaker = speakers[indexPath.row]
        }
    }
}
