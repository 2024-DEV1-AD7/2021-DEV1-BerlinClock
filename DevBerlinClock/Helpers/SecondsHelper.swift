//
//  SecondsHelper.swift
//  DevBerlinClock
//
//  Created by Ali Dhanani on 11/01/2024.
//

import Foundation
import SwiftUI

class SecondsHelper {
    static let shared = SecondsHelper()
    
    private init() {
    }
 
    func checkColorForSeconds(By SecondTick: Bool) -> Color {
        if SecondTick {
            return Color.yellow
        }
        return Color.white
    }
    
    func lightBlinkSeconds(With Expression: Int) -> Int {
        return Expression % 2
    }
    
}

