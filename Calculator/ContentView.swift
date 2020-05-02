//
//  ContentView.swift
//  Calculator
//
//  Created by Subash on 02/05/20.
//  Copyright © 2020 Subash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                ForEach(["7", "8", "9", "X"], id: \.self) { button in
                    Text(button)
                        .font(.system(size: 32))
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
