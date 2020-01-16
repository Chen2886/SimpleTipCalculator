//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Tony Chen on 1/15/20.
//  Copyright © 2020 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var percentageSelection: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalAmount.text = "0.00"
        tipAmount.text = "0.00"
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let percentage = [0.15, 0.18, 0.2]
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * percentage[percentageSelection.selectedSegmentIndex]
        let total = bill + tip

        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
//        if (percentageSelection.)
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
}

