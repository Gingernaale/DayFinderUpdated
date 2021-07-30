//
//  InfoViewController.swift
//  DayFinder
//
//  Created by Irunya =} on 29/07/2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText: String = ""
    var appDescText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Info View Controller"
        
        if !infoText.isEmpty && !appDescText.isEmpty{
            appInfoLabel.text = infoText
            appDescLabel.text = appDescText
        }
    }
    
    
    
    
}
