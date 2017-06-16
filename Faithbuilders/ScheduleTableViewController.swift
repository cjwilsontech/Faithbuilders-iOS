//
//  ScheduleTableViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/18/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {
    
    // MARK: Properties
    let classes = GlobalData.getInstance().classes
    
    struct Objects {
        var sectionName: String!
        var sectionObjects: [Class]!
    }
    
    var classesArrayDay0 = [Objects]()
    var classesArrayDay1 = [Objects]()
    var classesArrayDay2 = [Objects]()
    var day: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var currentSection: String = classes[0].timeStart
        var currentSectionIndex: Int = 0
        var currentDay: Int = 0
        for myClass in classes {
            
            if (currentDay != myClass.day) {
                currentSectionIndex = 0
                currentSection = myClass.timeStart
                currentDay = myClass.day
            } else if (currentSection != myClass.timeStart) {
                currentSectionIndex += 1
                currentSection = myClass.timeStart
            }
            
            if (myClass.day == 0) {
                if (currentSectionIndex == classesArrayDay0.count) {
                    classesArrayDay0.append(Objects(sectionName: myClass.timeStart, sectionObjects: [myClass]))
                } else {
                    classesArrayDay0[currentSectionIndex].sectionObjects.append(myClass)
                }
            } else if (myClass.day == 1) {
                if (currentSectionIndex == classesArrayDay1.count) {
                    classesArrayDay1.append(Objects(sectionName: myClass.timeStart, sectionObjects: [myClass]))
                } else {
                    classesArrayDay1[currentSectionIndex].sectionObjects.append(myClass)
                }
            } else {
                if (currentSectionIndex == classesArrayDay2.count) {
                    classesArrayDay2.append(Objects(sectionName: myClass.timeStart, sectionObjects: [myClass]))
                } else {
                    classesArrayDay2[currentSectionIndex].sectionObjects.append(myClass)
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if (day == 0) {
            return classesArrayDay0.count
        } else if (day == 1) {
            return classesArrayDay1.count
        } else {
            return classesArrayDay2.count
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (day == 0) {
            return classesArrayDay0[section].sectionObjects.count
        } else if (day == 1) {
            return classesArrayDay1[section].sectionObjects.count
        } else {
            return classesArrayDay2[section].sectionObjects.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tableView.registerClass(ScheduleTableViewCell.self, forHeaderFooterViewReuseIdentifier: "ClassCell")
        let cellIdentifier = "ScheduleTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ScheduleTableViewCell
        
        let myClass: Class
        if (day == 0) {
            myClass = classesArrayDay0[indexPath.section].sectionObjects[indexPath.row]
        } else if (day == 1) {
            myClass = classesArrayDay1[indexPath.section].sectionObjects[indexPath.row]
        } else {
            myClass = classesArrayDay2[indexPath.section].sectionObjects[indexPath.row]
        }
        
        cell.titleLabel.text = myClass.title
        cell.locationLabel.text = myClass.location
        cell.speakerLabel.text = myClass.speaker?.name
        cell.timeStartLabel.text = myClass.timeStart
        cell.timeEndLabel.text = myClass.timeEnd
        cell.myClass = myClass
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (day == 0) {
            return classesArrayDay0[section].sectionName
        } else if (day == 1) {
            return classesArrayDay1[section].sectionName
        } else {
            return classesArrayDay2[section].sectionName
        }
    }
    
    func updateDay(_ day: Int) {
        self.day = day
        tableView.reloadData()
        tableView.setContentOffset(CGPoint.zero, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let classDetailViewController = segue.destination as! ClassViewController
        if let selectedClassCell = sender as? ScheduleTableViewCell {
            classDetailViewController.myClass = selectedClassCell.myClass
        }
    }
    
}
