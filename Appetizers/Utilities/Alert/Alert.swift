//
//  Alert.swift
//  Appetizers
//
//  Created by Alex Desjardins on 7/29/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title = Text("Server Error")
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertItem(message: Text("The dataa recieved fmor the server was invalid. Please contact support."),
                                            dismissButton: .default(Text("Dismiss")))
    
    static let invalidResponse  = AlertItem(message: Text("Invalid response from the server. Please try again later or contact support."),
                                            dismissButton: .default(Text("Dismiss")))
    
    static let invalidURL       = AlertItem(message: Text("There was an issue connecting to the server. If this persists, please contact support"),
                                            dismissButton: .default(Text("Dismiss")))
    
    static let unableToComplete = AlertItem(message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("Dismiss")))
}
