//
//  UIView+Extension.swift
//  onboardingPractice
//
//  Created by Decagon on 14/10/2021.
//

import Foundation
import UIKit

extension UIView {
   @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
