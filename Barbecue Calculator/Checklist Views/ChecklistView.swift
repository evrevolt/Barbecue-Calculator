//
//  ChecklistView2.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 22.01.2024.
//

import SwiftUI
import SwiftData

struct ChecklistView: View {
	
	@Environment(\.colorScheme) var colorScheme
	@Environment(\.modelContext) var modelContext
	
	@Query var categorys: [Category]
	
    var body: some View {
		VStack {
			LogoImageView()
			Spacer()
			
			List {
				ForEach(categorys) { category in
					Section(category.name) {
						ForEach(category.items) { item in
							Text(item.name)
						}
					}
					.listRowBackground(Color.clear)
				}
			}
			.scrollContentBackground(.hidden)
			
//			ForEach(categorys) { category in
//				List {
//					Section(category.name) {
//						ForEach(category.items) { item in
//							Text(item.name)
//						}
//					}
//					.listRowBackground(Color.clear)
//				}
//				.scrollContentBackground(.hidden)
//			}
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
    ChecklistView2()
}
