//
//  Landmark.swift
//  swift-ui
//
//  Created by S on 2024/8/11.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var imageName: String
    var isFavorite: Bool
    var isFeatured: Bool

    // I don't like this approach, I likes to keep the UI logic to the View
    //	var image: Image {
    //		Image(imageName)
    //	}

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
        case buldings = "Buildings"
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
