//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ricardo Gallegos on 5/18/25.
//

import SwiftUI

struct LandmarkList: View {
    
    
    var body: some View {
        List(landmarks){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
