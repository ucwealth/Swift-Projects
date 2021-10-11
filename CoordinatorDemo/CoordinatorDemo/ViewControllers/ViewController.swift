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
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
//        if sender.currentTitle! == "Buy" {
//            coordinator?.buySubscription()
//        } else {
//            coordinator?.createAccount()
//        }
        print("before")
        coordinator?.buySubscription()
        print("after...")
    }
    
    
    
}

