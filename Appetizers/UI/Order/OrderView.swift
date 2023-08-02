//
//  OrderView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 4/20/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView() {
            Text("Order View")
                .navigationTitle("📦 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
