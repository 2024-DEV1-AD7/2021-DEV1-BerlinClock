//
//  DevBerlinClockTests.swift
//  DevBerlinClockTests
//
//  Created by Ali Dhanani on 10/01/2024.
//

import XCTest
@testable import DevBerlinClock
import SwiftUI

final class DevBerlinClockTests: XCTestCase {

    func testSecondFunction() throws {
                // Test when SecondTick is true
        let colorForTrue = ClockColorSetting.shared.checkColorForSeconds(By: true)
        XCTAssertEqual(colorForTrue, Color.yellow, "Color should be yellow when SecondTick is true")

        // Test when SecondTick is false
        let colorForFalse = ClockColorSetting.shared.checkColorForSeconds(By: false)
        XCTAssertEqual(colorForFalse, Color.gray, "Color should be gray when SecondTick is false")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
