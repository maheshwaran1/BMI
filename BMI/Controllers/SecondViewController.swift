//
//  SecondViewController.swift
//  BMI
//
//  Created by Maheshwaran on 17/02/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
}
