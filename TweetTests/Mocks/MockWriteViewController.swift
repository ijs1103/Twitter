//
//  MockWriteViewController.swift
//  TweetTests
//
//  Created by Eunyeong Kim on 2021/08/25.
//

import Foundation
@testable import Tweet

final class MockWriteViewController: WriteProtocol {
    var isCalledSetupViews = false
    var isCalledDismiss = false

    func setupViews() {
        isCalledSetupViews = true
    }

    func dismiss() {
        isCalledDismiss = true
    }
}
