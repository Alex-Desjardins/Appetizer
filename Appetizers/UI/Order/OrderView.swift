//
//  OrderView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 4/20/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView() {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    })
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("Button selected")
                } label: {
                    RectangleButton(title: "$99.99 - Place Order")
                }
            }
            .navigationTitle("📦 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
