//
//  ButtonView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct MultipleChoiceButtonView: View {
    
    @ObservedObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())

    var Button1: String
    
    var Button2: String
    
    var Button3: String
    
    var Button4: String
    
    var body: some View {
        
        VStack {
            Spacer()
            AnswerButtons(text: Button1)
            AnswerButtons(text: Button2)
            AnswerButtons(text: Button3)
            AnswerButtons(text: Button4)
            
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
    }
}
    
    struct MultipleChoiceButtonView_Previews: PreviewProvider {
        static var previews: some View {
            MultipleChoiceButtonView(Button1: Trivia.dummyData.results[0].correct_answer, Button2: Trivia.dummyData.results[0].correct_answer, Button3: Trivia.dummyData.results[0].correct_answer, Button4: Trivia.dummyData.results[0].correct_answer)
        }
    }
