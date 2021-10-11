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
    static let dummyData: Trivia =
        Trivia(response_code: 1, results: [
            Result(category: "Celebrities", type: "Multiple Choice", difficulty: "Easy", question: "Who is the most followed person on Instagram?", correct_answer: "Cristiano Ronaldo", incorrect_answers: ["Lionel Messi", "Ariana Grande", "LeBron James"]),
            Result(category: "n", type: "n", difficulty: "n", question: "n", correct_answer: "n", incorrect_answers: ["n","n"])
        ])
}
