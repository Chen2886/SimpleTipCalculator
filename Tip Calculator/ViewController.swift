//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Tony Chen on 1/15/20.
//  Copyright © 2020 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var percentageChosen = 0.00
    let percentage = [0.15, 0.18, 0.2]

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var percentageSelection: UISegmentedControl!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var delete: UIButton!
    @IBOutlet weak var clear: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalAmount.text = "$ 0.00"
        tipAmount.text = "$ 0.00"
        percentageChosen = percentage[percentageSelection.selectedSegmentIndex]
        var buttons: [UIButton] = [zero, one, two, three, four, five, six, seven, eight, nine, delete, dot]
        if (self.traitCollection.userInterfaceStyle == .dark) {
            for items in buttons {
                items.tintColor = UIColor.white
            }
            clear.tintColor = UIColor.white
        } else {
            for items in buttons {
                items.tintColor = UIColor.black
            }
            clear.tintColor = UIColor.black
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        percentageChosen = percentage[percentageSelection.selectedSegmentIndex]
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * percentageChosen
        let total = bill + tip

        
        tipAmount.text = String(format: "$ %.2f", tip)
        totalAmount.text = String(format: "$ %.2f", total)
    }
    
    
    @IBAction func clear(_ sender: Any) {
        totalAmount.text = "$ 0.00"
        tipAmount.text = "$ 0.00"
        billAmount.text = ""
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if (sender == one) {
            billAmount.text! += "1"
        }
        if (sender == two) {
            billAmount.text! += "2"
        }
        if (sender == three) {
            billAmount.text! += "3"
        }
        if (sender == four) {
            billAmount.text! += "4"
        }
        if (sender == five) {
            billAmount.text! += "5"
        }
        if (sender == six) {
            billAmount.text! += "6"
        }
        if (sender == seven) {
            billAmount.text! += "7"
        }
        if (sender == eight) {
            billAmount.text! += "8"
        }
        if (sender == nine) {
            billAmount.text! += "9"
        }
        if (sender == zero) {
            billAmount.text! += "0"
        }
        if (sender == dot) {
            billAmount.text! += "."
        }
        if (sender == delete) {
            let current = billAmount.text
            let new = String(current?.dropLast() ?? "")
            billAmount.text = new
        }
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * percentageChosen
        let total = bill + tip

        
        tipAmount.text = String(format: "$ %.2f", tip)
        totalAmount.text = String(format: "$ %.2f", total)
        
    }
    
    

    
}

