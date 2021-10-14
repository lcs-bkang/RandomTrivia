//
//  TriviaView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import SwiftUI

struct TriviaView: View {
    
    @ObservedObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    var body: some View {
        VStack {
            Text(Trivia.dummyData.results[0].category)
                .font(.title3)
                .padding(3)
                .overlay(
                    Rectangle()
                        .stroke(Color.blue, lineWidth: 4))
            Text(Trivia.dummyData.results[0].question)
                .font(.largeTitle)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.blue, lineWidth: 6))
            HStack {
                
                Spacer()
                VStack {
                    Text("Difficulty:")
                        .font(.title3)
                    Text(Trivia.dummyData.results[0].difficulty)
                        .font(.title2)
                        .bold()
                }
                Spacer()
                
                VStack {
                    Text("Type:")
                        .font(.title3)
                    Text (Trivia.dummyData.results[0].type)
                        .font(.title2)
                        .bold()
                }
                Spacer()
            }
            .font(.headline)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
    }
}
