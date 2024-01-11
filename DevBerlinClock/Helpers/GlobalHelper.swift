//
//  ClockColorSetting.swift
//  BerlinClock
//
//  Created by Ali Dhanani on 10/01/2024.
//

import Foundation
import SwiftUI

class GlobalHelper {
    static let shared = GlobalHelper()

    private init() {
    }
    
    func RoundedRectangleWithStroke(index: Int, lightsCount: Int, isTopRow: Bool, isBottomRow: Bool = false) -> some View {

        return RoundedRectangle(cornerRadius: isTopRow ? 0 : 3)
            .path(in: CGRect(x: 0, y: 0, width: isTopRow ? 20 : 70, height: 30))
            .foregroundColor(isTopRow ? MinutesHelper.shared.lightOnMinutesRowBy(lightCount: lightsCount, atIndex: index)
                                      : MinutesHelper.shared.checkColorForMinutes(By: index < lightsCount))
            .frame(width: isTopRow ? 20 : 70, height: 30)
            .overlay(
                RoundedRectangle(cornerRadius: isTopRow ? 0 : 3)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
    
    func updateTimer() -> Time {
        let now = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: now)
        return  Time(hour: components.hour ?? 0, minute: components.minute ?? 0, second: components.second ?? 0)
    }
    
}
