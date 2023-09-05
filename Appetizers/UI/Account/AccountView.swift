//
//  AccountView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 4/20/23.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    var body: some View {
        NavigationView() {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.emailAddress)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    DatePicker("Date of Birth", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    Button("Save Changes") {
                        viewModel.saveChanges()
                    }
                }
                
                Section(header: Text("Special Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .mint))
            }
            .navigationTitle("✅ Account")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
