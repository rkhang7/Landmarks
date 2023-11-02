//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 28/10/2023.
//

import SwiftUI

struct LandmarksList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark]{
        landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landMark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarksList()
}
