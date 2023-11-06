//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 29/10/2023.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Divider()


                Text("Abount \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            

        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
       return Group {
           LandmarkRow(landMark: landmarks[0])
           LandmarkRow(landMark: landmarks[1])
       }
}
