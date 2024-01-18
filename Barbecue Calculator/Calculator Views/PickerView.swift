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
            Text("2. What kind of meat are we frying?")
        
            HStack {
                // pig
                Button {
                    offBool()
                    pigBool.toggle()
                    selectedMeat = .pig
                } label: {
                    Image(pigBool ? "pig_selected" : "pig")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .frame(width: sizeButton, height: sizeButton)
                Spacer()
                
                // cow
                Button {
                    offBool()
                    cowBool.toggle()
                    selectedMeat = .cow
                } label: {
                    Image(cowBool ? "beef_selected" : "beef")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .frame(width: sizeButton, height: sizeButton)
                Spacer()
                
                // sheep
                Button {
                    offBool()
                    muttonBool.toggle()
                    selectedMeat = .mutton
                } label: {
                    Image(muttonBool ? "sheep_selected" : "sheep")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .frame(width: sizeButton, height: sizeButton)
                Spacer()
                
                // chicken
                Button {
                    offBool()
                    chikenBool.toggle()
                    selectedMeat = .chicken
                } label: {
                    Image(chikenBool ? "chicken_selected" : "chicken")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .frame(width: sizeButton, height: sizeButton)
                Spacer()
                
                // vegan
                Button {
                    offBool()
                    veganBool.toggle()
                    selectedMeat = .vegan
                } label: {
                    Image(veganBool ? "veg_selected" : "veg")
                        .resizable()
                        .frame(width: sizeButton, height: sizeButton)
                }
                .frame(width: sizeButton, height: sizeButton)
            }
        }
    }

    private func offBool() {
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
