//
//  CampusMapViewController.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/19/17.
//  Copyright © 2017 Eusebeia. All rights reserved.
//

import UIKit

class CampusMapViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 8.0
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
