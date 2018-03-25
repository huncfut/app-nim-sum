//
//  ViewController.swift
//  NimSum
//
//  Created by Kuba Zeligowski on 06.10.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numOfRowsSlider: UISlider!
    @IBOutlet weak var numOfRowsLabel: UILabel!
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var row1: UITextField!
    @IBOutlet weak var row2: UITextField!
    @IBOutlet weak var row3: UITextField!
    @IBOutlet weak var row4: UITextField!
    @IBOutlet weak var row5: UITextField!
    @IBOutlet weak var row6: UITextField!
    @IBOutlet weak var row7: UITextField!
    @IBOutlet weak var row8: UITextField!
    @IBOutlet weak var row9: UITextField!
    @IBOutlet weak var calcMove: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        row1.keyboardType = .numberPad
        row2.keyboardType = .numberPad
        row3.keyboardType = .numberPad
        row4.keyboardType = .numberPad
        row5.keyboardType = .numberPad
        row6.keyboardType = .numberPad
        row7.keyboardType = .numberPad
        row8.keyboardType = .numberPad
        row9.keyboardType = .numberPad
        
    }
 
    @IBAction func calcMovePressed(_ sender: Any) {
        let inputs = [row1, row2, row3, row4, row5, row6, row7, row8, row9]
        var rows: [Int] = []
        for input in inputs {
            if let text = input?.text {
                if let num = Int(text) {
                    rows.append(num)
                }
            }
        }
        outLabel.text = nimCalc(rows: rows)
    }
    @IBAction func labelReturn(_ sender: UISlider) {
        let inputs = [row1, row2, row3, row4, row5, row6, row7, row8, row9]
        let sliderVal = Int(sender.value)
//        let rows = nimCalc(numOfRows: Int(sliderVal))
//        outLabel.text = rows
//            .keys
//            .sorted()
//            .map {"Row #\($0) should have \(rows[$0]!) ball(s) \n"}
//            .reduce("", {$0+$1});
        for (i, input) in inputs.enumerated() {
            if i <= sliderVal {
                input?.isEnabled = true
                input?.isHidden = false
            } else {
                input?.isEnabled = false
                input?.isHidden = true
                input?.text = ""
            }
        }
    }
}
    


