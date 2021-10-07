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
