//
//  ViewController.swift
//  Example
//
//  Created by Lasha Efremidze on 9/11/17.
//  Copyright © 2017 Lasha Efremidze. All rights reserved.
//

import UIKit
import Peep

class ViewController: UIViewController {
    
    @IBAction func alertTone(_ sender: Any) {
        Peep.play(sound: AlertTone.tweet)
    }
    
    @IBAction func keyPress(_ sender: Any) {
        Peep.play(sound: KeyPress.tap)
    }
    
    @IBAction func hapticFeedback(_ sender: Any) {
        Peep.play(sound: HapticFeedback.selection)
    }
    
    @IBAction func url(_ sender: Any) {
        Peep.play(sound: Bundle.main.url(forResource: "Success", withExtension: "m4a"))
    }
    
}
