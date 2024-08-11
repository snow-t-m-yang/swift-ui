//
//  LandmarkRow.swift
//  swift-ui
//
//  Created by S on 2024/8/11.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)

            Text(landmark.name)

            Spacer()
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
