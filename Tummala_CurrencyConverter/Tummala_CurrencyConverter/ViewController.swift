//
//  ViewController.swift
//  Tummala_CurrencyConverter
//
//  Created by Tummala,Nagarushyanth on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    
    
   
    @IBOutlet weak var NameTextField: UITextField!

    @IBOutlet weak var INRTextField: UITextField!

    @IBOutlet weak var USDTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        var name = NameTextField.text
        
        var inr = Double(INRTextField.text!)
        
        var usd = Double(USDTextField.text!)
        
        var usdtoinr = usd! * 74.64
        
        var inrtousd = inr!/74.64
        
        resultLabel.text = "Hello, \(name)! Amount Rs. \(inr)! in USD is $\(inrtousd) Amount $\(usd) in INR is Rs.\(usdtoinr)"
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

