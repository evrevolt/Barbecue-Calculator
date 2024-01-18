//
//  ImageSliderView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct ImageSliderView: View {
    var title: LocalizedStringKey
    var minValue: Double
    var maxValue: Double
    var stepValue: Double
    var minimumValueLabel: Image
    var maximumValueLabel: Image

    @Binding var value: Double

    var body: some View {
        VStack {
            Text(title)
                .lineLimit(1)
                .multilineTextAlignment(.center)

            Slider(value: $value, in: minValue ... maxValue, step: stepValue) {
			} minimumValueLabel: {
                Text(minimumValueLabel)
            } maximumValueLabel: {
                Text(maximumValueLabel)
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView(
            title: "4. How long do we plan to be crazy?",
            minValue: 0.0,
            maxValue: 1.0,
            stepValue: 0.1,
            minimumValueLabel: Image(systemName: "pawprint"),
            maximumValueLabel: Image(systemName: "pawprint.fill"),
            value: .constant(0.5)
        )
    }
}
