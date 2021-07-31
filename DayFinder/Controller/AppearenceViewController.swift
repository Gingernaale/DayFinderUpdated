//
//  AppearenceViewController.swift
//  DayFinder
//
//  Created by Irunya =} on 29/07/2021.
//

import UIKit

class AppearenceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Appearence View Controller"
        setLabelText()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        openSetting()
    }
    
    func setLabelText(){
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark{
            text = "Dark Mode is On\nGo to settings if you want\nto change to Light Mode."
        }else{
            text = "Light Mode is On\nGo to settings if you want\nto change to Dark Mode."
        }
        textLabel.text = text
    }
    
    func openSetting(){
        guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingURL){
            UIApplication.shared.open(settingURL, options: [:]) { success in
                print("Success: ", success)
            }
        }
    }
    
}

extension AppearenceViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}


