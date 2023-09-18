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
    
    static let orderItemOne = Appetizer(
        id: 0001,
        name: "Order Item One",
        protein: 1,
        carbs: 2,
        calories: 3,
        description: "This is a sample description for our appetizers",
        imageURL: "",
        price: 1.23
    )
    
    static let orderItemTwo = Appetizer(
        id: 0002,
        name: "Order Item Two",
        protein: 1,
        carbs: 2,
        calories: 3,
        description: "This is a sample description for our appetizers",
        imageURL: "",
        price: 1.23
    )
    
    static let orderItemThree = Appetizer(
        id: 0003,
        name: "Order Item Three",
        protein: 1,
        carbs: 2,
        calories: 3,
        description: "This is a sample description for our appetizers",
        imageURL: "",
        price: 1.23
    )
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
