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
    @IBOutlet weak var holder: UIView!
    @IBOutlet weak var outLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBAction func labelReturn(_ sender: UISlider) {
        let sliderVal = sender.value
        let rows = nimCalc(numOfRows: Int(sliderVal))
//        var labelReturn: String = ""
//
//        for i in rows.keys.sorted() {
//            if let rowVal = rows[i] {
//                labelReturn += "Row#\(i) should have \(rowVal) ball(s) \n"
//            }
//        }
        outLabel.text = rows
            .keys
            .sorted()
            .map { "Row #\($0) should have \(rows[$0]!) ball(s) \n"}
            .reduce("", {$0+$1});
//
//        outLabel.text = labelReturn
    }
    
}
    


