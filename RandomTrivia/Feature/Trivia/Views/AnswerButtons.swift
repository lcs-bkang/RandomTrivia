//
//  AnswerButtons.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct AnswerButtons: View {
    
    var text: String
    
    var body: some View {
        
        Button(action: {
            
        }, label: { Text(text)
                .font(.title2)
                .bold()
                .padding(40)
                .foregroundColor(.black)
        })
    }
}
struct AnswerButtons_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButtons(text: Trivia.dummyData.results[0].correct_answer)
    }
}
