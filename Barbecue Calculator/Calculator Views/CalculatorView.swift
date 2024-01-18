//
//  ContentView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 19.03.2022.
//

import SwiftUI

struct CalculatorView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State private var peopleCount = 7.0
    @State private var selectedMeat: MeatName = .pig
    @State private var hunger = 3.0
    @State private var timeCount = 0.0
    
    private var result: String {
        let res = peopleCount * (hunger / 10 + (timeCount / 10))
        return String(format: "%.1f", res)
    }
    
    let text1: LocalizedStringKey = "text1"
    let text3: LocalizedStringKey = "text3"
    let text4: LocalizedStringKey = "text4"
    
    var body: some View {
        VStack {
            LogoImageView()
            Spacer()
            
            SliderView(
                title: text1,
                minimumValueLabel: "1",
                maximumValueLabel: "20",
                value: $peopleCount
            )
            .padding(.top, -20.0)
            
            PickerView(selectedMeat: $selectedMeat)
            
            ImageSliderView(
                title: text3,
                minValue: 3.0,
                maxValue: 5.0,
                stepValue: 1.0,
                minimumValueLabel: Image(systemName: "pawprint"),
                maximumValueLabel: Image(systemName: "pawprint.fill"),
                value: $hunger
            )
            EmojiView()
                .padding(.top, -10.0)
            
            ImageSliderView(
                title: text4,
                minValue: 0.0,
                maxValue: 2.0,
                stepValue: 1.0,
                minimumValueLabel: Image(systemName: "hare"),
                maximumValueLabel: Image(systemName: "tortoise.fill"),
                value: $timeCount
            )
            CalculateView(value: $timeCount)
            
            Spacer()
            
            Text("\(result) kg kebab from \(selectedMeat.rawValue)")
                .font(.title)
            
        }.background(
            // Create Background image
            Image(colorScheme == .light ? "day" : "night")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        .padding()
        .font(.system(size: 22))
        .tint(colorScheme == .dark ? .black : .white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
