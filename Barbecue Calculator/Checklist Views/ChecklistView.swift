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
				Section("Продукты") {
					Text("Мясо/овощи для шашлыка")
					Text("Зелень")
					Text("Фрукты")
					Text("Копчености, сосиски")
					Text("Хлеб, лаваш")
					Text("Сыр")
					Text("Майонез, горчицу, кетчуп, соус")
				}
				.listRowBackground(Color.clear)
				
				Section("Напитки") {
					Text("Соки, компоты")
					Text("Вода питьевая негазированная")
				}
				.listRowBackground(Color.clear)
				
				Section("Бытовые мелочи") {
					Text("Мангал")
					Text("Шампура, решётка")
					Text("Жидкость для розжига")
					Text("Бумага для розжига")
					Text("Стартер угля")
					Text("Спички, зажигалка")
					Text("Одноразовая посуда")
					Text("Скатерть, клеенка")
					Text("Плед, покрывало")
					Text("Бумажные салфетки ")
					Text("Влажные салфетки")
					Text("Полотенца")
					Text("Мешки для мусора")
					Text("Нож")
					Text("Топор")
					Text("Разделочная доска")
					Text("Вода для бытовых нужд")
					Text("Туалетная бумага")
				}
				.listRowBackground(Color.clear)
				
				Section("Игры на природе") {
					Text("Мяч")
					Text("Бадминтон")
					Text("Скакалка")
					Text("Шахматы")
					Text("Твистер")
					Text("Фрисби")
					Text("Игральные карты")
					Text("Удочка и рыболовные снасти")
					Text("Кроссворды, журналы")
					Text("Гитара")
				}
				.listRowBackground(Color.clear)
				
				Section("Мебель") {
					Text("Складной стол")
					Text("Складные стулья")
				}
				.listRowBackground(Color.clear)
				
				Section("Аптечка") {
					Text("Лейкопластыри")
					Text("Зеленка или йод")
					Text("Перекись водорода")
					Text("Бинт")
					Text("Активированный уголь")
					Text("Болеутоляющее")
					Text("Антигистаминные препараты")
					Text("Солнцезащитный крем")
					Text("Средство от укусов насекомых")
					Text("Личные медикаменты")
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
