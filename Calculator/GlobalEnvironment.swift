//
//  GlobalEnvironment.swift
//  Calculator
//
//  Created by Subash on 09/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import Foundation

class DisplayUtility: ObservableObject {
    @Published var display = ""
    @Published var evalExpression = ""
    func updateDisplay(button: CalculatorButton) {
        display = button.title
    }
    
    func appendDisplay(button: CalculatorButton) {
        display.append(button.title)
    }
    func updateEvalExpression(button: CalculatorButton) {
        evalExpression.append(button.title)
    }
    func evaluateExpression() {
        let expression = NSExpression(format: evalExpression)
        let result = expression.expressionValue(with: nil, context: nil) as! NSNumber
        display = "\(result)"
    }
    func clearDisplay() {
        display = ""
    }
    
    func negate() {
        var temp = (display as NSString).integerValue
        temp = temp * (-1)
        display = "\(temp)"
    }
}
