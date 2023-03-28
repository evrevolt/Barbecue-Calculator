//
//  SliderView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct SliderView: View {
    
    var title: String
    var minimumValueLabel: String
    var maximumValueLabel: String
    
    @Binding var value: Double
    
    var body: some View {
        VStack {
            
                Text(title)
            
                Slider(value: $value, in: 1...20, step: 1) {
                } minimumValueLabel: {
                    Text(minimumValueLabel)
                } maximumValueLabel: {
                    Text(maximumValueLabel)
                }
            
                Text(calculatePeoples(value: value))
        }
    }
}

func calculatePeoples(value: Double) -> String {
    
    var stringPeople = ""
    
    if value == 2 || value == 3 || value == 4 {
        stringPeople = "\(value.formatted()) человека"
    } else {
        stringPeople = "\(value.formatted()) человек"
    }
    return stringPeople
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(
            title: "Сколько вас?",
            minimumValueLabel: "1",
            maximumValueLabel: "20",
            value: .constant(10.0)
        )
    }
}
