//
//  HoursHelper.swift
//  DevBerlinClock
//
//  Created by Ali Dhanani on 11/01/2024.
//

import Foundation
import SwiftUI

class HoursHelper {
    static let shared = HoursHelper()
    
    private init() {
    }
    
    func checkColorForHours(By HourTick: Bool) -> Color {
        if HourTick {
            return Color.red
        }
        return Color.white
    }
    
    func lightCountsHoursTop(With Expression: Int) -> Int {
        return Expression / 5
    }
    
    func lightCountsHoursBottom(With Expression: Int) -> Int {
        return Expression % 5
    }
    
}
