//
//  ProfilePresenterTests.swift
//  TweetTests
//
//  Created by Eunyeong Kim on 2021/08/25.
//

import XCTest
@testable import Tweet

class ProfilePresenterTests: XCTestCase {
    var sut: ProfilePresenter!

    var viewController: MockProfileViewController!

    override func setUp() {
        super.setUp()

        viewController = MockProfileViewController()
        sut = ProfilePresenter(viewController: viewController)
    }

    override func tearDown() {
        sut = nil
        viewController = nil

        super.tearDown()
    }

    func test_viewDidLoad() {
        sut.viewDidLoad()

        XCTAssertTrue(viewController.isCalledSetupViews)
        XCTAssertTrue(viewController.isCalledSetViews)
    }

    // name 존재하지 않을 때
    func test_didTapSaveButton이_요청될때_name이_존재하지않으면() {
        sut.didTapSaveButton(name: nil, account: "account")

        XCTAssertTrue(viewController.isCalledShowToast)
        XCTAssertFalse(viewController.isCalledEndEditing)
        XCTAssertFalse(viewController.isCalledSetViews)
    }

    // account가 존재하지 않을 때
    func test_didTapSaveButton이_요청될때_account이_존재하지않으면() {
        sut.didTapSaveButton(name: "name", account: nil)

        XCTAssertTrue(viewController.isCalledShowToast)
        XCTAssertFalse(viewController.isCalledEndEditing)
        XCTAssertFalse(viewController.isCalledSetViews)
    }

    func test_didTapSaveButton이_요청될때_name과account가_존재하지않으면() {
        sut.didTapSaveButton(name: nil, account: nil)

        XCTAssertTrue(viewController.isCalledShowToast)
        XCTAssertFalse(viewController.isCalledEndEditing)
        XCTAssertFalse(viewController.isCalledSetViews)
    }

    // name, account 모두 존재할 때
    func test_didTapSaveButton이_요청될때_name과account이_존재하면() {
        sut.didTapSaveButton(name: "name", account: "account")

        XCTAssertFalse(viewController.isCalledShowToast)
        XCTAssertTrue(viewController.isCalledEndEditing)
        XCTAssertTrue(viewController.isCalledSetViews)
    }
}
