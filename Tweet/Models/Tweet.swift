//
//  Tweet.swift
//  Tweet
//
//  Created by Eunyeong Kim on 2021/08/24.
//

import Foundation

struct Tweet: Codable {
    let user: User
    let contents: String
}
