//
//  Appertizer.swift
//  Appetizers
//
//  Created by Alex Desjardins on 7/23/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let protein: Int
    let carbs: Int
    let calories: Int
    let description: String
    let imageURL: String
    let price: Double
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 1234,
        name: "Appetizer Name",
        protein: 1,
        carbs: 2,
        calories: 3,
        description: "This is a sample description for our appetizers",
        imageURL: "",
        price: 1.23
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}