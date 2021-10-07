//
//  TriviaSerivce.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import Foundation

protocol TriviaService {
    func getTrivia() async throws -> Trivia
}

final class TriviaServiceImpl: TriviaService {
    func getTrivia() async throws -> Trivia {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseURL.appending("ADD EXTRA STUFF"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(Trivia.self, from: data)
    }
}
