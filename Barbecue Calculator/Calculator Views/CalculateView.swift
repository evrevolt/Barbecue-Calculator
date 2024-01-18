//
//  CalculateView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

let textMin: LocalizedStringKey = "textMin"
let textMiddle: LocalizedStringKey = "textMiddle"
let textMax: LocalizedStringKey = "textMax"

struct CalculateView: View {
    @Binding var value: Double

    var body: some View {
        VStack {
            Text(getString(value: value))
                .lineLimit(2)
                .multilineTextAlignment(.center)
        }
    }
}

private func getString(value: Double) -> LocalizedStringKey {
    var stringValue: LocalizedStringKey = ""

    if value == 0.0 {
        stringValue = textMin
    } else if value == 1.0 {
        stringValue = textMiddle
    } else {
        stringValue = textMax
    }

    return stringValue
}

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView(value: .constant(1.0))
    }
}
