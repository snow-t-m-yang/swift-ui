//
//  Item.swift
//  swift-ui
//
//  Created by S on 2024/8/10.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
