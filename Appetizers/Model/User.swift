//
//  User.swift
//  Appetizers
//
//  Created by Alex Desjardins on 8/30/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var emailAddress = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
