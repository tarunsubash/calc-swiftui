//
//  ContentView.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: DisplayUtility
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
        ContentView().environmentObject(DisplayUtility())
    }
}
