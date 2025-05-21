//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ricardo Gallegos on 5/16/25.
//

import SwiftUI

struct CircleImage: View {
    
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
