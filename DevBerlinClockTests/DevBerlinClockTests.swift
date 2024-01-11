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
    
    func testSecondBlinkFunction() throws {
                // Test when SecondTick is true
        let colorForTrue = ClockColorSetting.shared.checkColorForSeconds(By: ClockColorSetting.shared.lightBlinkSeconds(With: 10) == 0)
        XCTAssertEqual(colorForTrue, Color.yellow, "Color should be yellow when SecondTick is at 10")
        let colorForFalse = ClockColorSetting.shared.checkColorForSeconds(By: ClockColorSetting.shared.lightBlinkSeconds(With: 11) == 0)
        XCTAssertEqual(colorForFalse, Color.gray, "Color should be yellow when SecondTick is at 11")
    }
    
    func testHourColors() throws {
                // Test when SecondTick is true
        let colorForTrue = ClockColorSetting.shared.checkColorForHours(By: true)
        XCTAssertEqual(colorForTrue, Color.red, "Color should be yellow when Hours is true")

        // Test when SecondTick is false
        let colorForFalse = ClockColorSetting.shared.checkColorForSeconds(By: false)
        XCTAssertEqual(colorForFalse, Color.gray, "Color should be gray when Hours is false")
    }
    
    func testHourLightFunction() throws {
                // Test when SecondTick is true
        let colorLight1 = ClockColorSetting.shared.lightCountsHoursTop(With: 5)
        XCTAssertEqual(colorLight1, 1, "1 lights to work")
        let colorLight1Retain = ClockColorSetting.shared.lightCountsHoursTop(With: 7)
        XCTAssertEqual(colorLight1Retain, 1, "1 lights to work")
        let colorLight2 = ClockColorSetting.shared.lightCountsHoursTop(With: 12)
        XCTAssertEqual(colorLight2, 2, "2 lights to work")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
