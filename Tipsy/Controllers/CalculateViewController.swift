//
//  CalculateViewController.swift
//  Tipsy
//
//  Created by user236150 on 7/29/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var splitAmount: UILabel!
    @IBOutlet weak var splitSummary: UILabel!
    
    var tipPercent : String?
    var people : String?
    var splitAmountVal : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splitAmount.text = splitAmountVal
        splitSummary.text = "Split between \(people!) people, with \(tipPercent!)% tip"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
