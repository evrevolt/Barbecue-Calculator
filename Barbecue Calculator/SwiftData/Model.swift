//
//  SwiftData.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 22.01.2024.
//

import Foundation
import SwiftData

@Model
class Category {
	
	var id: PersistentIdentifier
	var name: String
	var items: [Item]
	
	init(id: PersistentIdentifier, name: String, items: [Item]) {
		self.id = id
		self.name = name
		self.items = items
	}
}

@Model
class Item {
	
	var id: PersistentIdentifier
	var name: String
	
	init(id: PersistentIdentifier, name: String) {
		self.id = id
		self.name = name
	}
}
