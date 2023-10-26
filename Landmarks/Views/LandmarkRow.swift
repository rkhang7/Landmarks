//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 26/10/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark: Landmark
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
        }
    }
}

#Preview {
    LandmarkRow(landMark: landmarks[0])
}
