//
//  NimSumCalc.swift
//  NimSum
//
//  Created by Kuba Zeligowski on 13.10.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

func nimCalc(rows: [Int]) -> String {
//    var rows = [Int: Int]()
    var nimSum: Int = 0
    
//    for i in 1...numOfRows {
//        // call ask func here
//        rows[i] = Int(arc4random_uniform(15) + 1) // and val her
//    }
    
    for rowVal in rows {
        nimSum = nimSum ^ rowVal
    }
    
    for (i, rowVal) in rows.enumerated() {
        if rowVal ^ nimSum < rowVal {
            return "Remove \(rowVal - (rowVal ^ nimSum)) ball(s) from row #\(i + 1)"
        }
    }
    
    return "Skip move (or u lost xd)"
}


