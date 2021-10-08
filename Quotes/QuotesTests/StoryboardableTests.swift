//
//  QuotesTests.swift
//  QuotesTests
//
//  Created by Decagon on 08/10/2021.
//  Copyright © 2021 Code Foundry. All rights reserved.
//

import XCTest
@testable import Quotes

class StoryboardableTests: XCTestCase {

    func testQuotesViewController() {
        _ = QuotesViewController.instantiate()
    }
    
    func testSettingsViewController() {
        _ = SettingsViewController.instantiate()
    }

}
