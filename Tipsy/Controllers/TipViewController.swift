//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var splitCounter: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var zeroTip: UIButton!
    @IBOutlet weak var tenTip: UIButton!
    @IBOutlet weak var twentyTip: UIButton!
    
    var splitBrain = SplitBrain()
    var tipValue : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearSelect()
//        zeroTip.backgroundColor
        // Do any additional setup after loading the view.
    }
    
    func clearSelect(){
        zeroTip.isSelected = false
        tenTip.isSelected = false
        twentyTip.isSelected = false
    }

    @IBAction func tipButton(_ sender: UIButton) {
        clearSelect()
        tipValue = sender.currentTitle!
        sender.isSelected = true
        
    }
    
    
    @IBAction func splitStepper(_ sender: UIStepper) {
//        splitBrain.setSplitCounter(value: sender.value)
        splitCounter.text = String(format: "%.0f",sender.value)
    }
    
    @IBAction func billCalculate(_ sender: UIButton) {
        if billAmount.text != ""{
            splitBrain.calBillSplit(value: billAmount.text!, tip: tipValue!, people: splitCounter.text!)
            self.performSegue(withIdentifier: "goToSplit", sender: self)
//            print(total/splits)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let splitVC = segue.destination as! CalculateViewController
        splitVC.tipPercent = splitBrain.getTipPercent()
        splitVC.people = splitBrain.getSplitCounter()
        splitVC.splitAmountVal = splitBrain.getSplitTotal()
    }
    
}

