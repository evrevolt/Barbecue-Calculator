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
