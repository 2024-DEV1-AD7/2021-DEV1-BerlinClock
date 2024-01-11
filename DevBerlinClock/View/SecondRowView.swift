//
//  SecondRowView.swift
//  BerlinClock
//
//  Created by Ali Dhanani on 09/01/2024.
//

import SwiftUI

struct SecondRowView: View {
    var second: Bool

    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .foregroundColor(SecondsHelper.shared.checkColorForSeconds(By: second))
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 1)
            )
            .accessibility(identifier: "secondRowCircle")
    }
}

#Preview {
    SecondRowView(second: true)
}
