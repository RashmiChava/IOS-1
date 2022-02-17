//
//  ViewController.swift
//  Tummala_Calculator
//
//  Created by Tummala,Nagarushyanth on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    var pressedNumber = 0
    var oldNumber = 0
    var varNumberResult = 0
    var signOperator = "+"

    func clearText()
    {
        ResultLabel.text = ""
    }
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
        clearText()
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        ResultLabel.text = ""
    }
    
    @IBAction func buttonplus_minus(_ sender: UIButton) {
    }
    
    @IBAction func buttonDiv(_ sender: UIButton) {
        signOperator = "/"
        pressedNumber = Int(ResultLabel.text!)!
        clearText()
    }
    
    @IBAction func button7(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "7"
    }
    
    @IBAction func button8(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "8"
    }
    
    @IBAction func button9(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "9"
    }
    
    @IBAction func buttonX(_ sender: UIButton) {
        signOperator = "*"
        pressedNumber = Int(ResultLabel.text!)!
        clearText()
    }
    
    @IBAction func button4(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "4"
    }
    
    @IBAction func button5(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "5"
    }
    
    @IBAction func button6(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "6"
    }
    
    @IBAction func buttonminus(_ sender: UIButton) {
        signOperator = "-"
        pressedNumber = Int(ResultLabel.text!)!
        clearText()
    }
    
    @IBAction func button1(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "1"
    }
    
    @IBAction func button2(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "2"
    }
    
    @IBAction func button3(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "3"
    }
    
    @IBAction func buttonplus(_ sender: UIButton) {
        if(String(pressedNumber).contains("."))
        {
            signOperator = "+"
            pressedNumber = Double(ResultLabel.text!)!
            clearText()
        }
        else
        {
            signOperator = "+"
            pressedNumber = Int(ResultLabel.text!)!
            clearText()
        }
        
        
        
    }
    
    @IBAction func buttonzero(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "0"
    }
    
    @IBAction func buttondot(_ sender: UIButton) {
        ResultLabel.text = ResultLabel.text! + "."
        
    }
    
    @IBAction func buttonpercent(_ sender: UIButton) {
        signOperator = "%"
        pressedNumber = Int(ResultLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonequals(_ sender: UIButton) {
        oldNumber = Int(ResultLabel.text!)!
        
        switch signOperator
        {
                case "+":
                    varNumberResult = pressedNumber+oldNumber
                    ResultLabel.text = String(varNumberResult)
                case "-":
                    varNumberResult = pressedNumber-oldNumber
                    ResultLabel.text = String(varNumberResult)
                case "*":
                    varNumberResult = pressedNumber*oldNumber
                    ResultLabel.text = String(varNumberResult)
                case "/":
                    if(oldNumber==0){
                        ResultLabel.text = "Error"
                    }
                    else
                    {
                        varNumberResult = pressedNumber/oldNumber
                        ResultLabel.text = String(varNumberResult)
                    }
                    
                case "%":
                    varNumberResult = pressedNumber%oldNumber
                    ResultLabel.text = String(varNumberResult)
                default:
                    ResultLabel.text = "ERROR"
                    
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

