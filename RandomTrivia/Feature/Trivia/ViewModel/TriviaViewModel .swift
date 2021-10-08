//
//  TriviaViewModel .swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import Foundation

protocol TriviaViewModel: ObservableObject {
    func getTrivia() async
}

@MainActor
final class TriviaViewModelImpl: TriviaViewModel {
    
    @Published private(set) var results: Trivia = Trivia(response_code: 0, results: [Result(category: "", type: "", difficulty: "", question: "", correct_answer: "", incorrect_answers: [""])])
    
    private let service: TriviaService
    
    init(service: TriviaService) {
        self.service = service
    }
    
    func getTrivia() async {
        do {
            self.results = try await service.fetchTrivia()
            dump(results)
        } catch {
            print("Error \(error)")
        }
    }
}
