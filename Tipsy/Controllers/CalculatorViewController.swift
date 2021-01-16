//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Elena Alferyeva on 22/12/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    var percentage: Float = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
  
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let percentageString = sender.currentTitle
        percentage = (percentageString! as NSString).floatValue
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billText = billTextField.text
        let bill = (billText! as NSString).floatValue
        
        
        
        let numOfPeopleString = splitNumberLabel.text!
        let numOfPeople = (numOfPeopleString as NSString).floatValue
        

        calculatorBrain.calculateResult(bill, percentage, numOfPeople)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultValue = calculatorBrain.getResult()
            destinationVC.numOfPeopleValue = calculatorBrain.getNumberOfPeople()
            destinationVC.percentageValue = calculatorBrain.getPercentage()
        }
    }
    
}

