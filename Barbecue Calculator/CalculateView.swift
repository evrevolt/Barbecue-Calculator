//
//  CalculateView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

enum TimeCount: String, CaseIterable, Identifiable {
    var id: Self {
        self
    }

    case min = "Мы быстро - по полшашлычинки и домой"
    case middle = "Нормально посидим! \n И так редко собираемся!"
    case max = "Пока мангал не развалится будем сидеть!"
}

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

private func getString(value: Double) -> String {
    var stringValue = ""

    if value == 0.0 {
        stringValue = TimeCount.min.rawValue
    } else if value == 1.0 {
        stringValue = TimeCount.middle.rawValue
    } else {
        stringValue = TimeCount.max.rawValue
    }

    return stringValue
}

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView(value: .constant(1.0))
    }
}
