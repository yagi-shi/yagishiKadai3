//
//  ViewController.swift
//  kadai3
//
//  Created by 八木佑樹 on 2024/03/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        value1Label.text = ""
        value2Label.text = ""
    }

    // アウトレット定義
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    @IBOutlet weak var calculateResult: UILabel!
    @IBOutlet weak var button1: UISwitch!
    @IBOutlet weak var button2: UISwitch!
    @IBOutlet weak var value1Label: UILabel!
    @IBOutlet weak var value2Label: UILabel!

    @IBAction func calculate(_ sender: Any) {
        var value1 = Int(value1.text ?? "") ?? 0
        var value2 = Int(value2.text ?? "") ?? 0
        // value1の処理
        if button1.isOn {
            value1 = -value1
        }
        value1Label.text = String(value1)

        // value2の処理
        if button2.isOn {
            value2 = -value2
        }
        value2Label.text = String(value2)

        calculateResult.text = String(value1 + value2)
    }
}
