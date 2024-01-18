//
//  SliderPeopleView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct SliderPeopleView: View {
    var title: LocalizedStringKey
	@AppStorage("maxPeople") var maxPeople = 20
    
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Text(title)
            
			Slider(value: $value, in: 1 ... Double(maxPeople), step: 1) {
			} minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
				Text(maxPeople.description)
            }
            
            Text("\(value.formatted()) 🙎")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderPeopleView(
            title: "1. How many are you?",
            value: .constant(10.0)
        )
    }
}
