//
//  MockUserDefaultsManager.swift
//  TweetTests
//
//  Created by Eunyeong Kim on 2021/08/25.
//

import Foundation
@testable import Tweet

final class MockUserDefaultsManager: UserDefaultsManagerProtcol {
    var tweets: [Tweet] = []
    var newTweet: Tweet!

    var isCalledGetTweet = false
    var isCalledSetTweet = false

    func getTweet() -> [Tweet] {
        isCalledGetTweet = true
        return tweets
    }

    func setTweet(_ newValue: Tweet) {
        isCalledSetTweet = true
        self.newTweet = newValue
    }
}
