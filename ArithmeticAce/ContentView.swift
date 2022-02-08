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
    
    // Properties to track the state of an answer being provided
    @State var answerProvided = false // Has an answer been provided?
    @State var answerIsCorrect = false // Is the answer correct?
    
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
                    // Only show when the answer is correct
                    //          CONDITION      true  false
                    .opacity(answerIsCorrect ? 1.0 : 0.0)
                
                
                Spacer()
                
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            
            Button(action: {
                // Guard statement to convert the input to an Int
                guard let answerGiven = Int(inputGiven) else {
                    // Input is invalid
                    answerProvided = true
                    answerIsCorrect = false
                    return
                }
                
                // Check the answer
                answerProvided = true
                if answerGiven == correctAnswer {
                    // Show the checkmark
                    answerIsCorrect = true
                } else {
                    // Indicate this is the wrong answer
                    answerIsCorrect = false
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
