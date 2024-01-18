//
//  CalculateView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

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
        stringValue = "We'll quickly - half a kebab and home"
    } else if value == 1.0 {
        stringValue = "Let's have a good time! \n We rarely get together!"
    } else {
        stringValue = "We'll sit until the brazier falls apart!"
    }

    return stringValue
}

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView(value: .constant(1.0))
    }
}
