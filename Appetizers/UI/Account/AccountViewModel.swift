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
}
