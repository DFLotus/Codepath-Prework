//
//  ViewController.swift
//  Prework
//
//  Created by odell francis on 7/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get Bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get Total tip via multiplication
        let tipPrecentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPrecentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

