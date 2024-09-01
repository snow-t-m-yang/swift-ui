//
//  ProfileHost.swift
//  swift-ui
//
//  Created by S on 2024/9/1.
//

import SwiftUI

struct ProfileHost: View {
    @State private var defaultProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: defaultProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
}
