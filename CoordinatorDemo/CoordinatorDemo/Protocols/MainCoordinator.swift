//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Decagon on 11/10/2021.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
   func instantiateVC() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func start() {
        instantiateVC()
    }
    
    func buySubscription() {
        print("wahala")
        instantiateVC()
    }
    
    func createAccount() {
        instantiateVC()
    }
}
