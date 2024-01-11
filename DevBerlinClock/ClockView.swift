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

            HStack {
                // Seconds row
                SecondRowView(second: currentTime.second % 2 == 0)
            }

        }
        .padding()
        .onAppear {

            self.updateTime()
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                self.updateTime()
            }
        }
        
        Text(String(format: "%02d: %02d", currentTime.hour, currentTime.minute))
            .font(Font.custom("DS-Digital-Bold", size: 30))
            .font(.body)
            

    }
    
    private func updateTime() {
        let now = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: now)
        self.currentTime = Time(hour: components.hour ?? 0, minute: components.minute ?? 0, second: components.second ?? 0)
    }
}

#Preview {
    ClockView()
}