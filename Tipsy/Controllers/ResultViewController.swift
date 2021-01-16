//
//  ResultViewController1.swift
//  Tipsy
//
//  Created by Elena Alferyeva on 22/12/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var resultValue: String?
    var percentageValue: String?
    var numOfPeopleValue: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = resultValue
        settingsLabel.text = "Split between \(numOfPeopleValue!) people, with \(percentageValue!)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
