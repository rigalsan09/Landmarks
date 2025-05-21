//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Ricardo Gallegos on 5/18/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {

        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
//        .frame(width:400, height: 400)
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
//        LandmarkRow(landmark: landmarks[1])
    }
}
