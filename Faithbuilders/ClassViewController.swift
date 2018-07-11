//
//  ClassViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/30/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ClassViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var speakerLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
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
                dateLabel.text = "Thursday, July 12"
            } else if (myClass.day == 1) {
                dateLabel.text = "Friday, July 13"
            } else {
                dateLabel.text = "Saturday, July 14"
            }
        }
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 10
        locationManager.delegate = self
        
        if (locationManager.responds(to: #selector(locationManager.requestWhenInUseAuthorization))) {
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startUpdatingLocation()
        
        var coordinates: CLLocationCoordinate2D?
        if (myClass!.location == "Auditorium") {
            coordinates = CLLocationCoordinate2DMake(47.14609, -122.441857)
        } else if (myClass!.location == "Xavier") {
            coordinates = CLLocationCoordinate2DMake(47.146528, -122.441342)
        } else if (myClass!.location == "Admin 101") {
            coordinates = CLLocationCoordinate2DMake(47.147106, -122.441691)
        } else if (myClass!.location == "Music Center" || myClass!.location == "Music 306A") {
            coordinates = CLLocationCoordinate2DMake(47.146566, -122.445116);
        } else if (myClass!.location == "Ingram 100") {
            coordinates = CLLocationCoordinate2DMake(47.147284, -122.444360);
        } else if (myClass!.location == "University Center") {
            coordinates = CLLocationCoordinate2DMake(47.145293, -122.440437)
        }
        
        if (coordinates != nil) {
            let regionDistance:CLLocationDistance = 700
            let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates!, regionDistance, regionDistance)
            let placemark = MKPlacemark(coordinate: coordinates!, addressDictionary: nil)
            let mapItem = MKMapItem(placemark: placemark)
            mapItem.name = myClass!.location
            mapView.addAnnotation(placemark)
            mapView.setRegion(regionSpan, animated: true)
        }
    }
}
