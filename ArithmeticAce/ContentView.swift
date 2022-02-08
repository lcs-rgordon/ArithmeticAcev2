//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Russell Gordon on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let multiplicand = Int.random(in: 1...12)
    let multiplier = Int.random(in: 1...12)
    
    // Holds the user's input
    @State var inputGiven = ""
    
    // MARK: Computed properties
    var correctAnswer: Int {
        return multiplicand * multiplier
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("×")
                
                Spacer()
        
                VStack(alignment: .trailing) {
                    Text("\(multiplicand)")
                    Text("\(multiplier)")
                }
            }

            Divider()
            
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                
                Spacer()
                
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            
            Button(action: {
                // Guard statement to convert the input to an Int
                guard let answerGiven = Int(inputGiven) else {
                    // Input is invalid
                    return
                }
                
                // Check the answer
                if answerGiven == correctAnswer {
                    // Show the checkmark
                } else {
                    // Indicate this is the wrong answer
                }
            }, label: {
                // Label
                Text("Check answer")
                    .font(.largeTitle)
            })
                .buttonStyle(.bordered)
                .padding()
            
        }
        .font(.system(size: 72))
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
