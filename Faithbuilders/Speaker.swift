//
//  Speaker.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/14/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class Speaker {
    let name: String
    let location: String
    let photo: UIImage
    let description: String
    
    init(name:String, location:String, photo:UIImage, description:String) {
        self.name = name
        self.location = location
        self.photo = photo
        self.description = description
    }
}