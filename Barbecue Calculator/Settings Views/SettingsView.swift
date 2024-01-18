//
//  SettingsView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 18.01.2024.
//

import SwiftUI

struct SettingsView: View {
	
	@Environment(\.colorScheme) var colorScheme
	@State private var maxPeople = 20
	
	var body: some View {
		VStack {
			LogoImageView()
			Spacer()
			
			HStack {
				
				Text("Max people: ")
				
				Spacer()
				
				Text(maxPeople.description)
				
				Spacer()
				
				Stepper("", value: $maxPeople)
				
			}
			
			Spacer()
			
		}
		.background(
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

#Preview {
    SettingsView()
}
