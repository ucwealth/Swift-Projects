//
//  AppCoordinator.swift
//  Quotes
//
//  Created by Decagon on 07/10/2021.
//  Copyright © 2021 Code Foundry. All rights reserved.
//
import UIKit
import Foundation

class AppCoordinator {
    
    private let navigationController = UINavigationController()
    
    var rootViewController: UIViewController {
        return navigationController 
    }
    
    func start() {
        showQuotes()
    }
    
    private func showQuotes() {
        let quotesViewController = QuotesViewController.instantiate()
        
        navigationController.pushViewController(quotesViewController, animated: true)
    }
}
