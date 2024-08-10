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
		VStack {
			VStack(alignment: .leading) {
				Text("Turtle Rock")
					.font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
					.foregroundColor(.cyan)

				HStack {
					Text("Joshua Tree National Park")
						.font(.subheadline)
					Spacer()
					Text("California")
						.font(.subheadline)
				}
			}
		}
		.padding()
	}
}

#Preview {
	ContentView()
//		.modelContainer(for: Item.self, inMemory: true)
}
