//
//  TriviaScreen .swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import SwiftUI

struct TriviaScreen: View {
    
    @StateObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
    var body: some View {
        
        VStack {
            TriviaView()
            
            Spacer()
            
            Button(Trivia.dummyData.results[0].correct_answer) {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
            Button(Trivia.dummyData.results[0].incorrect_answers[0]) {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
            Button(Trivia.dummyData.results[0].incorrect_answers[1]) {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
            Button(Trivia.dummyData.results[0].incorrect_answers[2]) {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
        }
        .task {
            await vm.getTrivia()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal)
            {
                Text("Trivia")
                    .font(.largeTitle.bold())
                
                    .accessibilityAddTraits(.isHeader)
            }
        }
    }
}

// NEXT STEPS:
// - Buttons when one is clicked, correct answer is shown and popup is given depending on if clicked answer is correct or not
// - Change button amount and view when different amount of incorrect answers are given
// - Randomise which button gives which answer
// - Fix and optimize the UI
// - Replayability.  I.e. when question is done, give another

struct TriviaScreen_Previews: PreviewProvider {
    static var previews: some View {
        TriviaScreen()
    }
}
