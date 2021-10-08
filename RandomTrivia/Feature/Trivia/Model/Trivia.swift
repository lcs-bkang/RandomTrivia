//
//  Trivia.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import Foundation

struct Trivia: Codable {
    
    let response_code: Int
    let results: [Result]
}

extension Trivia {
    static let dummyData: [Trivia] = [
        Trivia(response_code: 1, results: [
            Result(category: "Y", type: "y", difficulty: "y", question: "y", correct_answer: "y", incorrect_answers: ["y", "y"]),
            Result(category: "n", type: "n", difficulty: "n", question: "n", correct_answer: "n", incorrect_answers: ["n","n"])])
    ]
}
