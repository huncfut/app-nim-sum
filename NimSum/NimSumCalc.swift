//
//  NimSumCalc.swift
//  NimSum
//
//  Created by Kuba Zeligowski on 13.10.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

func nimCalc(numOfRows: Int) -> [Int: Int] {
    var rows = [Int: Int]()
    var nimSum: Int = 0
    
    for i in 1...numOfRows {
        // call ask func here
        rows[i] = Int(arc4random_uniform(15) + 1) // and val her
    }
    
    for rowVal in rows.values {
        nimSum = nimSum ^ rowVal
    }
    
    for i in rows.keys {
        if let rowVal = rows[i] {
            if rowVal ^ nimSum < rowVal {
                rows[i] = rowVal ^ nimSum
                break
            }
        }
    }
    
    
    
    return rows
}


