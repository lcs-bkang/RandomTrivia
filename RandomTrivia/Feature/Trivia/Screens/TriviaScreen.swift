//
//  TriviaScreen .swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import SwiftUI

struct TriviaScreen: View {
    
    @StateObject private var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    
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
                Text("Difficulty: \(Trivia.dummyData.results[0].difficulty)")

                Text("Type: \(Trivia.dummyData.results[0].type)")
                Spacer()
            }
            .font(.headline)
            
            Spacer()
            
            Button("Answer 1") {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
            Button("Answer 2") {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
            Button("Answer 3") {
                
            }
            .padding(3)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 3))
            Button("Answer 4") {
                
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

struct TriviaScreen_Previews: PreviewProvider {
    static var previews: some View {
        TriviaScreen()
    }
}
