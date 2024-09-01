//
//  CategoryItem.swift
//  swift-ui
//
//  Created by S on 2024/8/30.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            Image(landmark.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(15)
            Text(landmark.name)
                .font(.caption)
                .foregroundColor(.primary)
                .padding(.top, 7)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
