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
            TriviaView(category: vm.results.results[0].category, difficulty: vm.results.results[0].difficulty, type: vm.results.results[0].type, question: vm.results.results[0].question)
            
            Spacer()
            
            if vm.done == false {
                Text("Waiting...")
            } else {
                MultipleChoiceButtonView(Button1: vm.results.results[0].incorrect_answers[0], Button2: vm.results.results[0].incorrect_answers[1], Button3: vm.results.results[0].correct_answer, Button4: vm.results.results[0].incorrect_answers[2])
            Spacer()
            }
            
        }
        .task {
            await vm.getTrivia()
        }
    }
}

// NEXT STEPS:
// - Buttons when one is clicked, correct answer is shown and popup is given depending on if clicked answer is correct or not
// - Change button amount and view when different amount of incorrect answers are given
// - Randomise which button gives which answer (Done?)
// - Fix and optimize the UI
// - Replayability.  I.e. when question is done, give another

struct TriviaScreen_Previews: PreviewProvider {
    static var previews: some View {
        TriviaScreen()
    }
}
