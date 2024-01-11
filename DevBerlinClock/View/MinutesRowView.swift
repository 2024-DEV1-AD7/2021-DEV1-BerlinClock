//
//  MinutesRowView.swift
//  BerlinClock
//
//  Created by Ali Dhanani on 09/01/2024.
//

import SwiftUI

struct MinutesRowView: View {
    var lightsCount: Int
    var isTopRow: Bool

    var body: some View {
        HStack {
            if isTopRow {
                ForEach(0..<11) { index in
                    Group {
                        if index == 0 {
                            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10.0, bottomLeading: 10))
                                .frame(width: 20, height: 30)
                                .foregroundColor(MinutesHelper.shared.lightOnMinutesRowBy(lightCount: self.lightsCount, atIndex: index))
                                .overlay(
                                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10.0, bottomLeading: 10))
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        } else if index == 10 {
                            UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
                                .frame(width: 20, height: 30)
                                .foregroundColor(MinutesHelper.shared.lightOnMinutesRowBy(lightCount: self.lightsCount, atIndex: index))
                                .overlay(
                                    UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        } else {
                            Rectangle()
                                .frame(width: 20, height: 30)
                                .foregroundColor(MinutesHelper.shared.lightOnMinutesRowBy(lightCount: self.lightsCount, atIndex: index))
                                .cornerRadius(isTopRow ? 0 : 3)
                                .overlay(
                                    RoundedRectangle(cornerRadius: isTopRow ? 0 : 3)
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        }
                    }
                }
            } else {
                ForEach(0..<4) { index in
                    Group {
                        if index == 0 {
                            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10.0, bottomLeading: 10))
                                .foregroundColor(MinutesHelper.shared.checkColorForMinutes(By: index < self.lightsCount))
                                .frame(width: 70, height: 30)
                                .overlay(
                                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10.0, bottomLeading: 10))
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        } else if index == 1 || index == 2 {
                            Rectangle()
                                .frame(width: 70, height: 30)
                                .foregroundColor(MinutesHelper.shared.checkColorForMinutes(By: index < self.lightsCount))
                                .cornerRadius(isTopRow ? 0 : 3)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        } else if index == 3 {
                            UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
                                .foregroundColor(MinutesHelper.shared.checkColorForMinutes(By: index < self.lightsCount))
                                .frame(width: 70, height: 30)
                                .overlay(
                                    UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10, topTrailing: 10))
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        }
                    }
                }
            }
        }
    }
}

//#if DEBUG
//struct MinutesRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MinutesRowView(lightsCount: 3, isTopRow: true)
//    }
//}
//#endif
