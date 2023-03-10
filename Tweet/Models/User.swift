//
//  User.swift
//  Tweet
//
//  Created by Eunyeong Kim on 2021/08/24.
//

import Foundation

struct User: Codable {
    var name: String
    var account: String

    static var shared = User(name: "iOS개발왕", account: "ios_developer")
}
