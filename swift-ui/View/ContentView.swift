//
//  ContentView.swift
//  swift-ui
//
//  Created by S on 2024/8/10.
//

import SwiftData
import SwiftUI

struct ContentView: View {
	var body: some View {
		LandmarkList()
	}
}

#Preview {
	ContentView()
//		.modelContainer(for: Item.self, inMemory: true)
}
