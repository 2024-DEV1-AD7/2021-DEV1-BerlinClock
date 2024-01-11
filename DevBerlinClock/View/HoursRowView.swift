//
//  HoursRowView.swift
//  BerlinClock
//
//  Created by Ali Dhanani on 09/01/2024.
//

import SwiftUI

struct HoursRowView: View {
    var lightsCount: Int
    var isTopRow: Bool

    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                if(index == 0) {
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10.0, bottomLeading: 10))
                        .foregroundColor(ClockColorSetting.shared.checkColorForHours(By: index < self.lightsCount))
                                    .frame(width: 70, height: 30)
                                    .overlay(
                                        UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10.0, bottomLeading: 10))
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                }
                if(index == 1 || index == 2) {
                    Rectangle()
                        .frame(width: 70, height: 30)
                        .foregroundColor(ClockColorSetting.shared.checkColorForHours(By: index < self.lightsCount))
                        .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                if(index == 3) {
                    UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
                        .foregroundColor(ClockColorSetting.shared.checkColorForHours(By: index < self.lightsCount))
                                    .frame(width: 70, height: 30)
                                    .overlay(
                                        UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                }
                
            }
        }
    }
}

#Preview {
    HoursRowView(lightsCount: 3, isTopRow: false)
}
