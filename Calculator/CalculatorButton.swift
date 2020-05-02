//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//


import SwiftUI

class CalculatorDimensions {
    static let verticalSpacing: CGFloat = 12
}
enum CalculatorButton {
    
    case zero, one, two, three, four, five, six, seven, eight, nine, decimal
    case add, subtract, multiply, divide, equals
    case allClear, negate, percentage
    
    var backgroundColor: Color {
        switch self {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .decimal:
            return Color(.darkGray)
        case .allClear, .negate, .percentage:
            return Color(.lightGray)
        case .add, .subtract, .multiply, .divide, .equals:
            return Color(.orange)
        }
    }
    
    public var title: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .decimal:
            return "."
        case .add:
            return "+"
        case .subtract:
            return "-"
        case .multiply:
            return "X"
        case .divide:
            return "/"
        case .equals:
            return "="
        case .allClear:
            return "AC"
        case .negate:
            return "+/-"
        case .percentage:
            return "%"
        }
    }
    
    var buttonWidth: CGFloat {
        if self == .zero {
            return (UIScreen.main.bounds.width - 4 * CalculatorDimensions.verticalSpacing) / 4 * 2
        }
        return (UIScreen.main.bounds.width - 5 * CalculatorDimensions.verticalSpacing) / 4
    }
    
    var buttonHeight: CGFloat {
        return (UIScreen.main.bounds.width - 5 * CalculatorDimensions.verticalSpacing) / 4
    }
}
