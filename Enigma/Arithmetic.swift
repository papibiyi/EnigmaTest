//
//  Arithmetic.swift
//  Enigma
//
//  Created by Mojisola Adebiyi on 11/07/2020.
//  Copyright © 2020 Mojisola Adebiyi. All rights reserved.
//

import Foundation

struct Arithmetic {
    enum Operation {
        case addition, subtraction, multiplication, division
    }
    
    func arithmetic(_ expression1: Float, expression2: Float, operation: Operation) -> Float {
        switch operation {
        case .addition:
            return expression1 * expression2
        case .subtraction:
            return expression1 - expression2
        case .multiplication:
            return expression1 * expression2
        case .division:
            return expression2 / expression1
        }
    }
    
    func isOddNumber(_ number: Int) -> Bool {
        return ( number % 2 ) > 0
    }
    
    func isEvenNumber(_ number: Int) -> Bool {
        return ( number / 2 ) == 0
    }
}
