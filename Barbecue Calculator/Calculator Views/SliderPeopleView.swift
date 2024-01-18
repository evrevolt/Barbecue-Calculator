//
//  SliderPeopleView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct SliderPeopleView: View {
    var title: LocalizedStringKey
    var minimumValueLabel: String
    var maximumValueLabel: String
    
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Text(title)
            
            Slider(value: $value, in: 1 ... 20, step: 1) {
			} minimumValueLabel: {
                Text(minimumValueLabel)
            } maximumValueLabel: {
                Text(maximumValueLabel)
            }
            
            Text("\(value.formatted()) 🙎")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderPeopleView(
            title: "1. How many are you?",
            minimumValueLabel: "1",
            maximumValueLabel: "20",
            value: .constant(10.0)
        )
    }
}
