//
//  ViewController.swift
//  BMI
//
//  Created by Maheshwaran on 17/02/22.
//

import UIKit

class CalculatedViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) M"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //print(String(format: "%0f", sender.value))
        //print(Int(sender.value))
         let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        // BMI = Weight(Kg) / Height(m)^2
        //let bmi = weight / pow(height, 2)
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // show second viewcontroller
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

