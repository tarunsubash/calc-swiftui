//
//  ContentView.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
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
                    Text("43").font(.system(size: 72)).foregroundColor(.white).padding()
                }
                ForEach(calculatorButtons, id: \.self) {  row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { button in
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
            }.padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
