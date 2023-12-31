//
//  Landmark.swift
//  Landmarks
//
//  Created by Hoàng Xuân Khang on 25/10/2023.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    private var imageName: String
    var isFavorite: Bool
    var image: Image{
        Image(imageName)
    }
    private var coordinates: Coordinates


        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
    
    var locationCoordinate: CLLocationCoordinate2D {
          CLLocationCoordinate2D(
              latitude: coordinates.latitude,
              longitude: coordinates.longitude)
      }
}
