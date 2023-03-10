//
//  MockFeedViewController.swift
//  TweetTests
//
//  Created by Eunyeong Kim on 2021/08/25.
//

import Foundation
@testable import Tweet

final class MockFeedViewController: FeedProtocol {
    var isCalledSetupView = false
    var isCalledReloadTableView = false
    var isCalledMoveToTweetViewController = false
    var isCalledMoveToWriteViewController = false

    func setupView() {
        isCalledSetupView = true
    }

    func reloadTableView() {
        isCalledReloadTableView = true
    }

    func moveToTweetViewController(with tweet: Tweet) {
        isCalledMoveToTweetViewController = true
    }

    func moveToWriteViewController() {
        isCalledMoveToWriteViewController = true
    }
}
