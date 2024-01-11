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
                topRow()
            } else {
                bottomRow()
            }
        }
    }

    private func topRow() -> some View {
        ForEach(0..<11) { index in
            GlobalHelper.shared.RoundedRectangleWithStroke(index: index, lightsCount: lightsCount, isTopRow: isTopRow)
        }
    }

    private func bottomRow() -> some View {
        ForEach(0..<4) { index in
            GlobalHelper.shared.RoundedRectangleWithStroke(index: index, lightsCount: lightsCount, isTopRow: isTopRow, isBottomRow: true)
                .frame(width: 70, height: 30)
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
