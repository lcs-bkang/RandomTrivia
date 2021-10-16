//
//  ButtonView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct MultipleChoiceButtonView: View {
    
    @ObservedObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
    @State private var hasTimeElapsed = false
    var body: some View {
        
        VStack {
            Spacer()
            ForEach(hasTimeElapsed ? Trivia.dummyData.results[0].incorrect_answers.indices : vm.possibleAnswers.indices) { index in
                AnswerButtons(text: vm.possibleAnswers[index])
            }
        }
        .onAppear(perform: delayText)
        }
    private func delayText() {
        // Delay of 7.5 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.5) {
            hasTimeElapsed = true
        }
    }
    
//    func colorForButton(at buttonIndex: Int) -> Color {
//        guard let guessedIndex = guessedIndex, guessedIndex == buttonIndex else {
//            return .clear
//        }
//        if guessedIndex == correctIndex {
//            return .green
//        } else {
//            return .red
//        }
//
//    }
}


struct MultipleChoiceButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoiceButtonView()
    }
}
