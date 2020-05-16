//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import SwiftUI

struct CalculatorButtonView: View {
    var button: CalculatorButton
    @EnvironmentObject var env: DisplayUtility
    var body: some View {
        Button(action: {
            switch self.button {
            case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
                self.env.appendDisplay(button: self.button)
                self.env.updateEvalExpression(button: self.button)
            case .allClear:
                self.env.clearDisplay()
            case .negate:
                self.env.negate()
            case .add, .subtract, .multiply, .divide:
                self.env.updateEvalExpression(button: self.button)
                self.env.clearDisplay()
            case .equals:
                self.env.evaluateExpression()
            default:
                self.env.updateDisplay(button: self.button)
            }
        }) {
            Text(button.title)
                .font(.system(size: 32))
                .frame(width: button.buttonWidth,
                       height: button.buttonHeight)
                .foregroundColor(.white)
                .background(button.backgroundColor)
                .cornerRadius(button.buttonHeight / 2)
        }
    }
}
