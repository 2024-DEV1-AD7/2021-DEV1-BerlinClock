//
//  MinutesHelper.swift
//  DevBerlinClock
//
//  Created by Ali Dhanani on 11/01/2024.
//

import Foundation
import SwiftUI

class MinutesHelper {
    static let shared = MinutesHelper()
    
    private init() {
    }
 
    func checkColorForMinutes(By HourTick: Bool) -> Color {
        if HourTick {
            return Color.yellow
        }
        return Color.white
    }
    
    func checkColorForMinutes2Steps(By HourTick: Bool) -> Color {
        if HourTick {
            return Color.red
        }
        return Color.white
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
            return isLightOn ? .red : .white
        } else {
            return isLightOn ? .yellow : .white
        }
    }
    
}
