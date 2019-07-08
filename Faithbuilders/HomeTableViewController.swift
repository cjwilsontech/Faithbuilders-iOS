//
//  HomeTableViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 7/2/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit
import MapKit

class HomeTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Navigation Cell
        if (indexPath.row == 1) {
            
            // Start navigation to location.
            let coordinates = CLLocationCoordinate2DMake(47.156822, -122.459084)
            let regionDistance:CLLocationDistance = 10000
            let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
            let options = [
                MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
                MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
            ]
            let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
            let mapItem = MKMapItem(placemark: placemark)
            mapItem.name = "Lakeview Church of Christ"
            mapItem.openInMaps(launchOptions: options)
            
        }
        
        // Website Cell
        if (indexPath.row == 3) {
            UIApplication.shared.openURL(URL(string: "http://www.faithbuildersnw.com")!)
        }
        
        // Facebook Cell
        if (indexPath.row == 4) {
            UIApplication.shared.openURL(URL(string: "https://www.facebook.com/FaithBuildersNW/")!)
        }
    }
}
