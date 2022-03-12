//
//  ViewController.swift
//  hangul2kana
//
//  Created by 13048519 on 03/12/2022.
//  Copyright (c) 2022 13048519. All rights reserved.
//

import UIKit
import hangul2kana

class ViewController: UIViewController {
    
    @IBOutlet weak var hangulTextField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    
    @IBAction func btnHiragana(_ sender: UIButton) {
        guard let text = hangulTextField.text, text != "" else {
            convertedLabel.text = "no text"
            return
        }
        
        let convertedText = Hangul2Kana.toHiragana(word: text)
        convertedLabel.text = convertedText
    }
    
    @IBAction func btnKatakana(_ sender: UIButton) {
        guard let text = hangulTextField.text, text != "" else {
            convertedLabel.text = "no text"
            return
        }
        
        let convertedText = Hangul2Kana.toKatakana(word: text)
        convertedLabel.text = convertedText
    }

   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

