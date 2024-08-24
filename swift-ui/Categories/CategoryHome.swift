//
//  CategoryHome.swift
//  swift-ui
//
//  Created by S on 2024/8/23.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("start")
                .navigationTitle("Featured")    
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
