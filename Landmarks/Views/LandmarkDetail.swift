//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ricardo Gallegos on 5/19/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 200)
            
            CircleImage(image: Image("turtlerock"))
                .offset(y: -60)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack {
                    Text("Joshua Tree National Park")
                    
                    Spacer()
                    
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title)
                
                Text("Descriptive text goes here.")
            }
        
            .padding()
        }
        .navigationTitle(landmark.name)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
