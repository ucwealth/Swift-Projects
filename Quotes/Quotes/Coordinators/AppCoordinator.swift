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
        
        quotesViewController.didShowQuote = { [weak self] (quote) in
            self?.showQuote(quote)
            
        }
        
        quotesViewController.didShowSettings = { [weak self] in
            self?.showSettings()
        }
        
        navigationController.pushViewController(quotesViewController, animated: true)
    }
    
    private func showQuote(_ quote: Quote) {
        let quoteViewController = QuoteViewController.instantiate()
        quoteViewController.quote = quote
        navigationController.pushViewController(quoteViewController, animated: true)
    }
    
    private func showSettings() {
        let settingsViewController = SettingsViewController.instantiate()
        navigationController.present(settingsViewController, animated: true)
    }
    
}
