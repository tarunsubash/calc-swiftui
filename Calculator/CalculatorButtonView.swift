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
    @EnvironmentObject var env: GlobalEnviornment
    var body: some View {
        Button(action: {
            self.env.updateDisplay(button: self.button)
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
