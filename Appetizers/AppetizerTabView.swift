//
//  ContentView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 4/20/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppertizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                    
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                    
                }
        }
        .tint(Color("brandPrimary"))
    }
}

struct AppetizerTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
