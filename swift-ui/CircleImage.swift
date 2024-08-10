//
//  CircleImage.swift
//  swift-ui
//
//  Created by S on 2024/8/10.
//

import SwiftUI

struct CircleImage: View {
	var body: some View {
		Image("tokyo-night")
			.resizable()
			.scaledToFit()
			.clipShape(Circle())
			.overlay {
				Circle().stroke(.gray, lineWidth: 4)
			}
			.shadow(color: .red, radius: 50)
	}
}

#Preview {
	CircleImage()
}
