//
//  DevBerlinClockUITests.swift
//  DevBerlinClockUITests
//
//  Created by Ali Dhanani on 10/01/2024.
//

import XCTest

final class DevBerlinClockUITests: XCTestCase {

    func testSecondCirleExists() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        XCTAssertTrue(app.otherElements["secondRowCircle"].exists)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
