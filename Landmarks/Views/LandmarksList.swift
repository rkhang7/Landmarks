//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 28/10/2023.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        List{
            LandmarkRow(landMark: landmarks[0])
            LandmarkRow(landMark: landmarks[1])
        }
    }
}

#Preview {
    LandmarksList()
}
