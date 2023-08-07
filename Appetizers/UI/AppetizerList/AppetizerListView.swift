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
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetailView = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetailView)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetailView ? 20 : 0)
            
            if viewModel.isShowingDetailView {
                AppetizerDetailView(
                    appetizer: viewModel.selectedAppetizer!,
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
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
