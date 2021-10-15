//
//  TrueFalseButtonView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct TrueFalseButtonView: View {
    var body: some View {
        
        VStack {
            Spacer()
            AnswerButtons(text: "True")

            AnswerButtons(text: "False")
            Spacer()
            
        }
    }
}

struct TrueFalseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TrueFalseButtonView()
    }
}
