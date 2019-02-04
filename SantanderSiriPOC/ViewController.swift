//
//  ViewController.swift
//  SantanderSiriPOC
//
//  Created by Selvam on 2/4/19.
//  Copyright © 2019 Selvam Srinivasan. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        donateInteraction()
    }
    
    func deleteDonatedShortcuts() {
        INInteraction.delete(with:["BankDetails"]) { (error) in
            if error != nil {
                print("Interaction Donation Deletion failed")
            }
            else {
                print("Interaction Donation Deletion Succeeded!")
            }
        }
    }

    func donateInteraction() {
        let intent = BankInfoIntent()
        intent.suggestedInvocationPhrase = "Bank Info"
        
        let interaction = INInteraction(intent: intent, response: nil)
        interaction.identifier = "BankDetails"
        interaction.donate { (error) in
            if error != nil {
                print("Interaction Donation failed")
            } else {
                print("Interaction Donation Succeeded!")
            }
        }
    }
    
    func showLabel() {
        statusLabel.isHidden = false
    }
    
    @IBAction func enableSiriSwitchBtnChanged(_ sender: UISwitch) {
        sender.isOn ? donateInteraction() : deleteDonatedShortcuts()
    }
    
}

