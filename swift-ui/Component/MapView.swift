//
//  MapView.swift
//  swift-ui
//
//  Created by S on 2024/8/10.
//

import MapKit
import SwiftUI

struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }

    var body: some View {
        Map(position: .constant(.region(region)))
    }
}

#Preview {
    MapView(
        coordinate: CLLocationCoordinate2D(
            latitude: 35.6586,
            longitude: 139.7454
        )
    )
}
