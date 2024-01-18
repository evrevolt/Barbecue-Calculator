//
//  MainView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 18.01.2024.
//

import SwiftUI

struct MainView: View {
	var body: some View {
		TabView {
			CalculatorView()
				.tabItem {
					Label("Calculator", systemImage: "slider.horizontal.3")
				}
			
			ChecklistView()
				.tabItem {
					Label("Check list", systemImage: "checklist")
				}
			
			SettingsView()
				.tabItem {
					Label("Settings", systemImage: "gear")
				}
		}
	}
}

#Preview {
    MainView()
}
