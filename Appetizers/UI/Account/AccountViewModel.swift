//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Alex Desjardins on 8/6/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var emailAddress = ""
    @Published var birthDate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !emailAddress.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard emailAddress.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Your changes have been saved")
    }
}
