//
//  ContentView.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import SwiftUI
class GlobalEnviornment: ObservableObject {
    @Published var display = "0"
    @Published var evalExpression = ""
    func updateDisplay(button: CalculatorButton) {
        display = button.title
    }
    
    func appendDisplay(button: CalculatorButton) {
        display.append(button.title)
    }
    func updateEvalExpression(button: CalculatorButton) {
        evalExpression.append(button.title)
        print(evalExpression)
    }
    func evaluateExpression() {
        let expression = NSExpression(format: evalExpression)
        var result = expression.expressionValue(with: nil, context: nil) as! NSNumber
        display = "\(result)"
        print(result)
    }
    func clearDisplay() {
        display = "0"
    }
    
    func negate() {
        var temp = (display as NSString).integerValue
        temp = temp * (-1)
        display = "\(temp)"
    }
}
struct ContentView: View {
    @EnvironmentObject var env: GlobalEnviornment
    let calculatorButtons: [[CalculatorButton]] = [
        [.allClear, .negate, .percentage, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equals]
    ]
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: CalculatorDimensions.verticalSpacing) {
                HStack(spacing: 12) {
                    Spacer()
                    Text(env.display).font(.system(size: 72)).foregroundColor(.white).padding()
                }
                ForEach(calculatorButtons, id: \.self) {  row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { button in
                           CalculatorButtonView(button: button)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalEnviornment())
    }
}
