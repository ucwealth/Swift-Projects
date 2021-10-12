//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by Decagon on 11/10/2021.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.currentTitle! == "Buy" {
            coordinator?.buySubscription()
        } else {
            coordinator?.createAccount()
        }
    }
    
    
    
}

