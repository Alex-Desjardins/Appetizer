//
//  RectangleButton.swift
//  Appetizers
//
//  Created by Alex Desjardins on 8/6/23.
//

import SwiftUI

struct RectangleButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.mint)
            .cornerRadius(10)
    }
}

struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButton(title: "Test title")
    }
}
