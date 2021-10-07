//
//  TriviaViewModel .swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import Foundation

protocol TriviaViewModel: ObservableObject {
    func getTrivia() async throws -> Trivia
}

final class TriviaViewModelImpl: TriviaViewModel {
    func getTrivia() async throws -> Trivia {
        
    }
    
    
    @Published private(set) var results: [Trivia] = []
    
    @Published private(set) var result: Trivia
    
    private let service: TriviaService
    
    init(service: TriviaService) {
        self.service = service
        
    }
    
    func getTrivia() async {
        do {
            self.result = try await service.fetchTrivia()
            dump(results)
        } catch {
            print("Error \(error)")
        }
    }
}
