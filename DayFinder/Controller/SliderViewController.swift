//
//  SliderViewController.swift
//  DayFinder
//
//  Created by Irunya =} on 29/07/2021.
//

import UIKit
//import Foundation

class SliderViewController: UIViewController {
    
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var retry: UIButton!
    
    var randomNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Find number"
        starter()
    }
    
    @IBAction func checkVal(_ sender: Any) {
        
        print(round(slider.value))
        
        if randomNum == Int(slider.value) {
            result.text = "You won!"
            retry.isHidden = false
        } else {
            result.text = "Try again"
            retry.isHidden = false
        }
    }
    
    @IBAction func retryTapped(_ sender: Any) {
        
        starter()
        retry.isHidden = true
        result.text = "Go on!"
    }
    
    func starter() {
        randomNum = Int(arc4random_uniform(11))
        print(randomNum)
        numLabel.text = "Find \(randomNum)"
    }
}


