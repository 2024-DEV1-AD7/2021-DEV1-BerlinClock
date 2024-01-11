//
//  ClockColorSetting.swift
//  BerlinClock
//
//  Created by Ali Dhanani on 10/01/2024.
//

import Foundation
import SwiftUI

class ClockColorSetting {
    static let shared = ClockColorSetting()

    private init() {
    }

    func checkColorForSeconds(By SecondTick: Bool) -> Color {
        if SecondTick {
            return Color.yellow
        }
        return Color.gray
    }
    
    func checkColorForHours(By HourTick: Bool) -> Color {
        if HourTick {
            return Color.red
        }
        return Color.gray
    }
    
    func checkColorForMinutes(By HourTick: Bool) -> Color {
        if HourTick {
            return Color.yellow
        }
        return Color.gray
    }
    
    func checkColorForMinutes2Steps(By HourTick: Bool) -> Color {
        if HourTick {
            return Color.red
        }
        return Color.gray
    }
    
    func lightBlinkSeconds(With Expression: Int) -> Int {
        return Expression % 2
    }
    
    func lightCountsHoursTop(With Expression: Int) -> Int {
        return Expression / 5
    }
    
    func lightCountsHoursBottom(With Expression: Int) -> Int {
        return Expression % 5
    }
    
    func lightCountsMinutesTop(With Expression: Int) -> Int {
        return Expression / 5
    }
    
    func lightCountsMinutesBottom(With Expression: Int) -> Int {
        return Expression % 5
    }
    
    func lightOnMinutesRowBy(lightCount count: Int, atIndex index: Int) -> Color {
        let isRedLight = index % 3 == 2
        let isLightOn = index < count

        if isRedLight {
            return isLightOn ? .red : .gray
        } else {
            return isLightOn ? .yellow : .gray
        }
    }
    
}
