//
//  TriviaScreen .swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import SwiftUI

struct TriviaScreen: View {
    
    @StateObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
    @State private var jsonLoaded = false
    
    var body: some View {
        
        Group {
            if jsonLoaded == false {
                LoadingView(text: "Fetching Trivia")
            } else {
                VStack {
                    TriviaView()
                    
                    Spacer()
                    
                    MultipleChoiceButtonView()
                    Spacer()
                    
                    
                }
                .task {
                    await vm.getTrivia()
                    jsonLoaded = true
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
