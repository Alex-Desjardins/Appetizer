//
//  AppertizerListView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 4/20/23.
//

import SwiftUI

struct AppertizerListView: View {

    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView() {
            List(viewModel.appetizers) {
                AppetizerListCell(appetizer: $0)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

struct AppertizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerListView()
    }
}
