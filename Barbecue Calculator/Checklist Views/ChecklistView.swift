//
//  ChecklistView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 18.01.2024.
//

import SwiftUI

struct ChecklistView: View {
	
	@Environment(\.colorScheme) var colorScheme
	
    var body: some View {
		VStack {
			LogoImageView()
			Spacer()
			
			List {
				Section("Products") {
					Text("Meat/vegetables for barbecue")
					Text("Greenery")
					Text("Fruits")
					Text("Smoked meats, sausages")
					Text("Bread, lavash")
					Text("Cheese")
					Text("Mayonnaise, mustard, ketchup, sauce")
				}
				.listRowBackground(Color.clear)
				
				Section("Beverages") {
					Text("Juice, compote")
					Text("Still water")
				}
				.listRowBackground(Color.clear)
				
				Section("Items") {
					Text("Brazier")
					Text("Skewers, grill")
					Text("Ignition fluid")
					Text("Coal starter")
					Text("Matches, lighter")
					Text("Disposable tableware")
					Text("Tablecloth, oilcloth")
					Text("Plaid, bedspread")
					Text("Paper napkins")
					Text("Wet hand wipes")
					Text("Towels")
					Text("Garbage bags")
					Text("Knife")
					Text("Axe")
					Text("Cutting board")
					Text("Domestic water")
					Text("Toilet paper")
				}
				.listRowBackground(Color.clear)
				
				Section("Outdoor games") {
					Text("Ball")
					Text("Badminton")
					Text("Jump rope")
					Text("Chess")
					Text("Twister")
					Text("Frisbee")
					Text("Playing cards")
					Text("Fishing rod and fishing tackle")
					Text("Crosswords, magazines")
					Text("Guitar")
				}
				.listRowBackground(Color.clear)
				
				Section("Furniture") {
					Text("Folding table")
					Text("Folding chairs")
				}
				.listRowBackground(Color.clear)
				
				Section("First aid kit") {
					Text("Adhesive plasters")
					Text("Zelenka or iodine")
					Text("Hydrogen peroxide")
					Text("Bandage")
					Text("Activated carbon")
					Text("Painkiller")
					Text("Antihistamines")
					Text("Sunscreen")
					Text("Insect bite repellent")
					Text("Personal medications")
				}
				.listRowBackground(Color.clear)
			}
			.scrollContentBackground(.hidden)
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
    ChecklistView()
}
