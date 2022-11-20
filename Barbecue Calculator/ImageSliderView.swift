//
//  ImageSliderView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct ImageSliderView: View {
    
    var title: String
    var minValue: Double
    var maxValue: Double
    var stepValue: Double
    var minimumValueLabel: Image
    var maximumValueLabel: Image
    
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Text(title)
            Slider(value: $value, in: minValue...maxValue, step: stepValue) {
            } minimumValueLabel: {
                Text(minimumValueLabel)
            } maximumValueLabel: {
                Text(maximumValueLabel)
            }
//            Text("\(Int(value))")
//                .foregroundColor(.black)
        }
        .font(.title)
        .tint(.black)
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView(
            title: "How hunger?",
            minValue: 0.0,
            maxValue: 1.0,
            stepValue: 0.1,
            minimumValueLabel: Image(systemName: "pawprint"),
            maximumValueLabel: Image(systemName: "pawprint.fill"),
            value: .constant(0.5)
        )
    }
}
