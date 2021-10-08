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
//            Text(Trivia.dummyData(Trivia(results[0].question)))
            Text("Trivia")
        }
        .task {
            await vm.getTrivia()
        }
        .navigationTitle("Trivia")
    }
}

struct TriviaScreen_Previews: PreviewProvider {
    static var previews: some View {
        TriviaScreen()
    }
}
