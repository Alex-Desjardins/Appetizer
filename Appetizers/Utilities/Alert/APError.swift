//
//  APError.swift
//  Appetizers
//
//  Created by Alex Desjardins on 7/29/23.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
