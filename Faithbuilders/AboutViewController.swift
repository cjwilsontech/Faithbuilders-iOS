//
//  ScrollableUITextView.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 7/2/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutTextView: UITextView!
    
    override func viewDidLayoutSubviews() {
        aboutTextView.setContentOffset(CGPoint.zero, animated: false)
    }
}
