//
//  PickerView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

enum MeatName: String, CaseIterable, Identifiable {
    var id: Self {
        self
    }
    
    case pig = "🐖"
    case cow = "🐄"
    case mutton = "🐏"
    case rabbit = "🐇"
    case chicken = "🐓"
    case vegan = "🥦"
}

struct PickerView: View {
    
    @Binding var selectedMeat: MeatName
    
    var body: some View {
        
        VStack {
            Text("Какое мясо жарим?")
            Picker("How meat?", selection: $selectedMeat) {
                ForEach(MeatName.allCases) { meatName in
                    Text(meatName.rawValue.capitalized).tag(meatName.id)
                }
            }
            .pickerStyle(.segmented)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(selectedMeat: .constant(.cow))
    }
}
