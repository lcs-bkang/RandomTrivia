//
//  ButtonView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct ButtonView: View {
    
    @ObservedObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
    @State var correctAnswer: String
    
    var body: some View {
        VStack {
            Spacer()
            AnswerButtons(text: Trivia.dummyData.results[0].correct_answer)
            AnswerButtons(text: Trivia.dummyData.results[0].incorrect_answers[0])
            AnswerButtons(text: Trivia.dummyData.results[0].incorrect_answers[1])
            AnswerButtons(text: Trivia.dummyData.results[0].incorrect_answers[2])
            }
        }
    }
    
    
    struct ButtonView_Previews: PreviewProvider {
        static var previews: some View {
            ButtonView(correctAnswer: "Cristiano Ronaldo")
        }
    }
