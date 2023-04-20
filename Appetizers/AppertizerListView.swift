//
//  AppertizerListView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 4/20/23.
//

import SwiftUI

struct AppertizerListView: View {
    var body: some View {
        NavigationView() {
            Text("Appertizer List View")
                .navigationTitle("🥨 Appetizers")
        }
    }
}

struct AppertizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerListView()
    }
}
