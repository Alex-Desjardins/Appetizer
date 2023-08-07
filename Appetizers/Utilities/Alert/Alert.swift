//
//  Alert.swift
//  Appetizers
//
//  Created by Alex Desjardins on 7/29/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
//MARK: - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data recieved fmor the server was invalid. Please contact support."),
                                            dismissButton: .default(Text("Dismiss")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again later or contact support."),
                                            dismissButton: .default(Text("Dismiss")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server. If this persists, please contact support"),
                                            dismissButton: .default(Text("Dismiss")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("Dismiss")))

//MARK: - Account Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please fill out all fields in the form."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail      = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Email address is invalid."),
                                            dismissButton: .default(Text("OK")))
}
