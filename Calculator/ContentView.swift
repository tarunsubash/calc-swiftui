//
//  ContentView.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let calculatorButtons = [["7", "8", "9", "X"],
                             ["4", "5", "6", "-"],
                             ["1", "2", "3", "+"],
                             ["0", ".", ".", "="]
    ]
    private let verticalSpacing: CGFloat = 12
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: verticalSpacing) {
                ForEach(calculatorButtons, id: \.self) {  row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(),
                                       height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                            .cornerRadius(self.buttonWidth()/2)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    
    private func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * verticalSpacing) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
