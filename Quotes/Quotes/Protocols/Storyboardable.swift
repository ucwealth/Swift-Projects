//
//  Storyboardable.swift
//  Quotes
//
//  Created by Decagon on 08/10/2021.
//  Copyright © 2021 Code Foundry. All rights reserved.
//

import UIKit

protocol Storyboardable {
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle { get }
    static var storyboardIdentifier: String { get }
    
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    static var storyboardName: String {
        return "Main"
    }
    static var storyboardBundle: Bundle {
        return .main
    }
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    static func instantiate() -> Self {
        guard let viewController = UIStoryboard(name: storyboardName, bundle: storyboardBundle).instantiateViewController(withIdentifier: storyboardIdentifier) as? Self else {
            fatalError("Unable to Instantiate View Controller With Storyboard Identifier \(storyboardIdentifier) ")
        }
        return viewController
    }
}
