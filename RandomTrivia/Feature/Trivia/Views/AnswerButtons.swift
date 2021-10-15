//
//  AnswerButtons.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct AnswerButtons: View {
    
    var text: String
    
    @State var clicked: Bool = false
    
    var body: some View {
        
        Button(action: {
            clicked = true
        }, label: { Text(text)
                .font(.title2)
                .bold()
                .padding(40)
                .foregroundColor(.black)
                .frame(width: 375, height: 105)
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.purple)
                        .frame(width: 380, height: 110, alignment: .center)
                )
        })
    }
}
struct AnswerButtons_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButtons(text: Trivia.dummyData.results[0].correct_answer)
    }
}
