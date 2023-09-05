//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Alex Desjardins on 8/6/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.emailAddress.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.emailAddress.isValidEmail else {
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
