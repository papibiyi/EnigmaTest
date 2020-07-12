//
//  EnigmaTests.swift
//  EnigmaTests
//
//  Created by Mojisola Adebiyi on 10/07/2020.
//  Copyright © 2020 Mojisola Adebiyi. All rights reserved.
//

import XCTest
@testable import Enigma
/*
 🚨TAKE NOTE OF THIS @testable import Enigma
 In order to access the classes, functions, variable and methods in your project you would have to import as such.
 If your project name is XYZ
 You would do @testable import XYZ
 */

class EnigmaTests: XCTestCase {
    var arithmetic: Arithmetic!

    override func setUpWithError() throws {
        arithmetic = Arithmetic()
        //You instantiate the Arithmetic class here as this is the first method that runs before your test case
    }

    override func tearDownWithError() throws {
        arithmetic = nil
        // Although this is not needed for this example its still good practice 💡
    }
    
    func test_arithmetic_subtraction_valid() {
        let expression1: Float = 10
        let expression2: Float = 5
        let expectedResult: Float = 5
        
        XCTAssertEqual(arithmetic.arithmetic(expression1, expression2: expression2, operation: .subtraction), expectedResult)
    }
    
    func test_arithmetic_subtraction_valid_negative_result() {
        let expression1: Float = 5.0
        let expression2: Float = 20
        let expectedResult: Float = -15
        
        XCTAssertEqual(arithmetic.arithmetic(expression1, expression2: expression2, operation: .subtraction), expectedResult)
    }
    
    func test_arithmetic_subtraction_for_two_negative_numbers() {
        let expression1: Float = -5
        let expression2: Float = -12.5
        let expectedResult: Float = 7.5
        
        XCTAssertEqual(arithmetic.arithmetic(expression1, expression2: expression2, operation: .subtraction), expectedResult)
    }
    
    func test_arithmetic_addition_for_two_positive_numbers() {
        let expression1: Float = 10
        let expression2: Float = 5
        let expectedResult: Float = 5
        
        XCTAssertEqual(arithmetic.arithmetic(expression1, expression2: expression2, operation: .addition), expectedResult, "\n Holla 😃 I don't know what you've done but i'm expecting \(expression1) - \(expression2) = \(expectedResult) 🤔 \n Fix me or lose your JOB 🌚 \n ASANTE SANA")

    }
    
    
    
    func test_arithmetic_addition_for_two_negative_numbers() {
        let expression1: Float = -10
        let expression2: Float = -5
        let expectedResult: Float = -15
        
        XCTAssertEqual(arithmetic.arithmetic(expression1, expression2: expression2, operation: .addition), expectedResult)

    }
    
    func test_arithmetic_addition_for_decimal_precision() {
        let expression1: Float = -10
        let expression2: Float = 5.3
        let expectedResult: Float = -4.7
        
        XCTAssertEqual(arithmetic.arithmetic(expression1, expression2: expression2, operation: .addition), expectedResult)

    }
    
    func test_if_number_is_even_false() {
        let number = 11
        XCTAssertFalse(arithmetic.isEvenNumber(number))
    }
    
    func test_if_number_is_even_true() {
        let number = 4
        XCTAssert(arithmetic.isEvenNumber(number))
    }
}

