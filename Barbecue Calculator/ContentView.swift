//
//  ContentView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 19.03.2022.
//

import SwiftUI



struct ContentView: View {
    
    @State private var peopleCount = 7.0
    @State var selectedMeat: MeatName = .pig
    @State var hunger = 3.0
    @State var timeCount = 0.0
    
    var body: some View {
        
        VStack {
        
            ImageView()

            SliderView(
                title: "Сколько вас?",
                minimumValueLabel: "1",
                maximumValueLabel: "20",
                value: $peopleCount
            )
            
            PickerView(selectedMeat: $selectedMeat)
            
            ImageSliderView(
                title: "Насколько вы голодные?",
                minValue: 3.0,
                maxValue: 5.0,
                stepValue: 1.0,
                minimumValueLabel: Image(systemName: "pawprint"),
                maximumValueLabel: Image(systemName: "pawprint.fill"),
                value: $hunger
            )
            EmojiView()
            
                ImageSliderView(
                    title: "Как долго планируем \n балдеть?",
                    minValue: 0.0,
                    maxValue: 2.0,
                    stepValue: 1.0,
                    minimumValueLabel: Image(systemName: "hare"),
                    maximumValueLabel: Image(systemName: "tortoise.fill"),
                    value: $timeCount
                )
                CalculateView(value: $timeCount)
            
            
            Spacer()
            
            let result = peopleCount * (hunger / 10 + (timeCount / 10))
            let stringresunt = String(format: "%.1f", result)
            Text("\(stringresunt) кг шашлыка из \(selectedMeat.rawValue)")
                    .font(.title)
                    .multilineTextAlignment(.center)
            
        }.background(
            //Create Background image
        Image("day")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        .padding()
    }
}
            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
