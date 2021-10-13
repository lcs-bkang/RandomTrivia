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
            
            ZStack {
                
//                RoundedRectangle(cornerRadius: 20, style: .continuous)
//                .fill(Color.purple)
//                .frame(width: 380, height: 120, alignment: .center)
                
                Button(action: {
                    
                }, label: { Text(Trivia.dummyData.results[0].correct_answer)
                        .font(.title2)
                        .bold()
                        .padding()
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.purple)
                            .frame(width: 380, height: 120, alignment: .center))
                })
            }
            Spacer()
            Button(action: {
                
            }, label: { Text(Trivia.dummyData.results[0].incorrect_answers[0])
                    .font(.title2)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2)
                                    .background(Color.blue.cornerRadius(10))
                    )
                    .foregroundColor(.black)
            })
            
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
