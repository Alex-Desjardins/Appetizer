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
        ZStack {
            NavigationView() {
                List(viewModel.appetizers) {
                    AppetizerListCell(appetizer: $0)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) {
            Alert(title: $0.title,
                  message: $0.message,
                  dismissButton: $0.dismissButton
            )
        }
    }
}

struct AppertizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerListView()
    }
}
