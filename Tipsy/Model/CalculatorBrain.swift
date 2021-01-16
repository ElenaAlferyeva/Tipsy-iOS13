//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Elena Alferyeva on 22/12/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    var splitBill: SplitBill?
    
    mutating func calculateResult(_ bill: Float, _ percentage: Float, _ numOfPeople: Float ) {
        let result = bill * (1 + percentage) / numOfPeople
        splitBill = SplitBill(bill: bill, percentage: percentage, numOfPeople: numOfPeople, result: result)
    }
    
    func getResult() -> String {
        return String(splitBill?.result ?? 0.0)
    }
    
    func getPercentage() -> String {
        return String(splitBill?.percentage ?? 0.0)
    }
    
    func getNumberOfPeople() -> String {
        return String(splitBill?.numOfPeople ?? 0.0)
    }
}
