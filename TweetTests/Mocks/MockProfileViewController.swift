//
//  MockProfileViewController.swift
//  TweetTests
//
//  Created by Eunyeong Kim on 2021/08/25.
//

import Foundation
@testable import Tweet

final class MockProfileViewController: ProfileProtocol {
    var isCalledSetupViews = false
    var isCalledSetViews = false
    var isCalledEndEditing = false
    var isCalledShowToast = false

    func setupViews() {
        isCalledSetupViews = true
    }

    func setViews(with name: String, account: String) {
        isCalledSetViews = true
    }

    func endEditing() {
        isCalledEndEditing = true
    }

    func showToast() {
        isCalledShowToast = true
    }
}
