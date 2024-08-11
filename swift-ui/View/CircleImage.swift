//
//  CircleImage.swift
//  swift-ui
//
//  Created by S on 2024/8/10.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(color: .red, radius: 10)
    }
}

#Preview {
    CircleImage(image: Image("tokyo-niehgt"))
}
