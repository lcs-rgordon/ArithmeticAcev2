//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Russell Gordon on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("x")
            
            Spacer()
            
            VStack {
                Text("5")
                Text("6")
            }
        }
        .font(.system(size: 72))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
