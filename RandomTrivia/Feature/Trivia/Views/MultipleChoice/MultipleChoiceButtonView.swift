//
//  ButtonView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct MultipleChoiceButtonView: View {
    
    @ObservedObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
    @State var possibleAnswers: [String] = []
    
    var body: some View {
        
        VStack {
            Spacer()
            ForEach(possibleAnswers.indices) { index in
                AnswerButtons(text: possibleAnswers[index])
            }
        }
        .task {
            possibleAnswers = Trivia.dummyData.results[0].incorrect_answers
            possibleAnswers.insert(Trivia.dummyData.results[0].correct_answer, at: Int.random(in: 0...3))
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
        MultipleChoiceButtonView(possibleAnswers: ["Cristiano Ronaldo", "Lionel Messi", "Ariana Grande", "LeBron James"])
    }
}
