//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 28/10/2023.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        List(landmarks){ landmark in
            LandmarkRow(landMark: landmark)
        }
    }
}

#Preview {
    LandmarksList()
}
