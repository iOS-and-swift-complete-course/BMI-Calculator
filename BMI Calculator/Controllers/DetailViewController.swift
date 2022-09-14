//
//  DetailViewController.swift
//  BMI Calculator
//
//  Created by Chris Hand on 9/14/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiMessageLabel: UILabel!
    
    var bmi = Float()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%0.1f", bmi)
    }
    
    
    @IBAction func recalculateClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
