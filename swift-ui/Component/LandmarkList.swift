//
//  LandmarkList.swift
//  swift-ui
//
//  Created by S on 2024/8/11.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var isShowFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            !isShowFavoritesOnly || landmark.isFavorite
        }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $isShowFavoritesOnly) {
                    Text("Favorites Only")
                        .padding()
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
