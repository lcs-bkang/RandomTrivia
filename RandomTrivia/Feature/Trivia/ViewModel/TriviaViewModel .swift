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
    
    @Published private(set) var possibleAnswers: [String] = []
    
    @Published private(set) var done = false
    
    private let service: TriviaService
    
    init(service: TriviaService) {
        self.service = service
    }
    
    func getTrivia() async {
        do {
            self.results = try await service.fetchTrivia()
            self.possibleAnswers = results.results[0].incorrect_answers
            possibleAnswers.insert(results.results[0].correct_answer, at: Int.random(in: 0...3))
            self.done = true
            dump(results)
            dump(possibleAnswers)
        } catch {
            print("Error \(error)")
        }
    }
}
