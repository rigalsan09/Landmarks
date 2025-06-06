//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ricardo Gallegos on 5/18/25.
//

import SwiftUI

struct LandmarkList: View {
    
    
    var body: some View {
        NavigationSplitView {
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
