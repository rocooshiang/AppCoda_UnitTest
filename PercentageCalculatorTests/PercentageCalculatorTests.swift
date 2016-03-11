//
//  PercentageCalculatorTests.swift
//  PercentageCalculatorTests
//
//  Created by Maxime Defauw on 03/02/16.
//  Copyright © 2016 App Coda. All rights reserved.
//

import XCTest
@testable import PercentageCalculator

class PercentageCalculatorTests: XCTestCase {
  var vc: ViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    vc = storyboard.instantiateInitialViewController() as! ViewController
    
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testPercentageCalculator() {
    // Should be 25
    let p = vc.percentage(50, 50)
    XCTAssert(p == 25)
  }
  
  func testLabelValuesShowedProperly() {
    //Initialize view
    let _ = vc.view
    vc.updateLabels(Float(80.0), Float(50.0), Float(40.0))
    
    // The labels should now display 80, 50 and 40
    XCTAssert(vc.numberLabel.text == "80.0", "numberLabel doesn't show the right text")
    XCTAssert(vc.percentageLabel.text == "50.0%", "percentageLabel doesn't show the right text")
    XCTAssert(vc.resultLabel.text == "40.0", "resultLabel doesn't show the right text")
  }
  
}
