//
//  SplitBrain.swift
//  Tipsy
//
//  Created by user236150 on 7/29/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

struct SplitBrain{
    
    var splitDetails : SplitDetails?
    
   
    func getTipPercent()-> String{
        return String(format: "%.0f", splitDetails?.tipPercent ?? 0)
    }
    
    func getSplitCounter() -> String{
        return String(format: "%.0f", splitDetails?.splitCounter ?? 2)
    }
    
    func getSplitTotal() -> String{
        return String(format: "%.2f", splitDetails?.totalSplit ?? 0)
    }
    
    mutating func calBillSplit(value: String, tip: String, people: String){
        let end = tip.index(before: tip.endIndex)
        
        let tipPercent = Float(tip[..<end])!
        let splitCounter = Float(people)!
        var total = Float(value)!
        
        let tip = tipPercent/100.0

        total = (total + total * tip)/(splitCounter)
        splitDetails = SplitDetails(splitCounter: splitCounter, tipPercent: tipPercent, totalSplit: total)
  
        
    }
}
