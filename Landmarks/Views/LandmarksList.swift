//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 28/10/2023.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail()
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
