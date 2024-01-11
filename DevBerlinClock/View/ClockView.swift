//
//  ClockView.swift
//  BerlinClock
//
//  Created by Ali Dhanani on 09/01/2024.
//

import SwiftUI

struct ClockView: View {
    @State private var currentTime = Time(hour: 0, minute: 0, second: 0)

    var body: some View {
        VStack(spacing: 10) {

            // Seconds rows
            SecondRowView(second: SecondsHelper.shared.lightBlinkSeconds(With: currentTime.second) == 0)
            
            VStack {
                // Hours rows
                HoursRowView(lightsCount: HoursHelper.shared.lightCountsHoursTop(With: currentTime.hour), isTopRow: true)
                    .accessibility(identifier: "firstRowHours")
                HoursRowView(lightsCount: HoursHelper.shared.lightCountsHoursBottom(With: currentTime.hour), isTopRow: false)
                    .accessibility(identifier: "secondRowHours")
            }
            
            VStack {
                // Minutes rows
                MinutesRowView(lightsCount: MinutesHelper.shared.lightCountsMinutesTop(With: currentTime.minute), isTopRow: true)
                    .accessibility(identifier: "firstRowMinutes")
                MinutesRowView(lightsCount: MinutesHelper.shared.lightCountsMinutesBottom(With: currentTime.minute), isTopRow: false)
                    .accessibility(identifier: "secondRowMinutes")
            }

        }
        .padding()
        .onAppear {

            self.currentTime = GlobalHelper.shared.updateTimer()
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                self.currentTime = GlobalHelper.shared.updateTimer()
            }
        }
        
        Text(String(format: "%02d: %02d", currentTime.hour, currentTime.minute))
            .font(Font.custom("DS-Digital-Bold", size: 30))
            .font(.body)
            

    }
    
}

//#Preview {
//    ClockView()
//}
