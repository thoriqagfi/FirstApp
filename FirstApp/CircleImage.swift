//
//  CircleImage.swift
//  FirstApp
//
//  Created by Agfi on 10/03/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
//            .frame(width: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
