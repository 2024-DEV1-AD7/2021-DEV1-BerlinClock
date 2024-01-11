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
    
}
