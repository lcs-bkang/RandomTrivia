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
                .font(.title2)
                .padding(3)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 4))
            Text(Trivia.dummyData.results[0].question)
                .font(.largeTitle)
                .padding(3)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.blue, lineWidth: 4))
            Text("Trivia")
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
