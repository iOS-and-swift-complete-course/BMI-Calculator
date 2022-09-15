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
    
    var bmi : BmiData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%0.1f", bmi?.value ?? 0.0)
        bmiMessageLabel.text = bmi?.advice ?? "I don't know"
        view.backgroundColor = bmi?.color ?? .yellow
    }
    
    @IBAction func recalculateClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
