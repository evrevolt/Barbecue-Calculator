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
    case chicken = "🐓"
    case vegan = "🥦"
}

struct PickerView: View {
    
    var sizeButton: CGFloat = 60.0
    
    @Binding var selectedMeat: MeatName
    
    
    @State var pigBool = true
    @State var cowBool = false
    @State var muttonBool = false
    @State var chikenBool = false
    @State var veganBool = false
    
    var body: some View {
        
        VStack {
            Text("2. Какое мясо жарим?")
//            Picker("2. Какое мясо жарим?", selection: $selectedMeat) {
//                ForEach(MeatName.allCases) { meatName in
//                    Text(meatName.rawValue.capitalized).tag(meatName.id)
//                        .font(.system(size: 40))
//                }
//            }
//            .pickerStyle(.menu)
//            .labelsHidden()
//            .frame(width: 70, height: 50)
//            .font(.system(size: 100))
            
        
            HStack {
                
                Button {
                    offBool()
                    pigBool.toggle()
                } label: {
                    Image(pigBool ? "pig_selected" : "pig")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .buttonStyle(.bordered)
                .frame(width: sizeButton, height: sizeButton)
                
                Button {
                    offBool()
                    cowBool.toggle()
                } label: {
                    Image(cowBool ? "beef_selected" : "beef")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .buttonStyle(.bordered)
                .frame(width: sizeButton, height: sizeButton)
                
                Button {
                    offBool()
                    muttonBool.toggle()
                } label: {
                    Image(muttonBool ? "sheep_selected" : "sheep")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .buttonStyle(.bordered)
                .frame(width: sizeButton, height: sizeButton)
                
                Button {
                    offBool()
                    chikenBool.toggle()
                } label: {
                    Image(chikenBool ? "chicken_selected" : "chicken")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .buttonStyle(.bordered)
                .frame(width: sizeButton, height: sizeButton)
                
                Button {
                    offBool()
                    veganBool.toggle()
                } label: {
                    Image(veganBool ? "veg_selected" : "veg")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .buttonStyle(.bordered)
                .frame(width: sizeButton, height: sizeButton)
            }
            
            
        }
        
    }
    private func offBool () {
        pigBool = false
        cowBool = false
        muttonBool = false
        chikenBool = false
        veganBool = false
    }
    
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(selectedMeat: .constant(.cow))
    }
}
