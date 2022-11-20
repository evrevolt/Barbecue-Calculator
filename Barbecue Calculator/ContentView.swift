//
//  ContentView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 19.03.2022.
//

import SwiftUI

//enum Hunger: String, CaseIterable, Identifiable, Codable {
//    var id: Self {
//        self
//    }
//
//    case min = "Немного голоден"
//    case minMax = "Вполне доживу до конца"
//    case max = "Съем первую партию, даже если она сгорит"
//}
//
//enum TimeCount: String, CaseIterable, Identifiable {
//    var id: Self {
//        self
//    }
//
//    case min = "Чучуть посидим"
//    case minMax = "Обычный шашлык на пару часок"
//    case max = "Будем сидеть пока мангал не развалиться"
//}


var countTime = 0.0
var countMeat = 0.0

struct ContentView: View {
    
    @State private var peopleCount = 7.0
    @State var selectedMeat: MeatName = .pig
    @State var hunger = 0.4
    @State var timeCount = 1.0
    @State var meat = 0.0
    
    var body: some View {
        
        VStack {
            
            SliderView(
                title: "Сколько вас?",
                minimumValueLabel: "1",
                maximumValueLabel: "20",
                value: $peopleCount
            )
            
            PickerView(selectedMeat: $selectedMeat)
            
//            ImageSliderView(
//                title: "How hunger?",
//                minimumValueLabel: Image(systemName: "pawprint"),
//                maximumValueLabel: Image(systemName: "pawprint.fill"),
//                value: $hunger
//            )
//            
//            ImageSliderView(
//                title: "4. How long do we plan to stay?",
//                minimumValueLabel: Image(systemName: "hare"),
//                maximumValueLabel: Image(systemName: "tortoise.fill"),
//                value: $timeCount
//            )
            
                //calculateTime(timeCount: timeCount)
            let result = ((hunger / 10 + countTime))
               //result = round(result * 10) / 10
                
                Text("Результат: \n \(result) КГ \n шашлыка из \(selectedMeat.rawValue)")
                    .font(.title)
            
                
            
            
            
            
            
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
