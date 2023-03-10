//
//  MockTweetViewController.swift
//  TweetTests
//
//  Created by Eunyeong Kim on 2021/08/25.
//

import Foundation
@testable import Tweet

final class MockTweetViewController: TweetProtocol {
    var isCalledSetViews = false
    var isCalledSetupViews = false

    func setViews(tweet: Tweet) {
        isCalledSetViews = true
    }

    func setupViews() {
        isCalledSetupViews = true
    }
}
