//
//  Bookworm_DanielApp.swift
//  Bookworm Daniel
//
//  Created by Daniel Lidman on 9/23/25.
//

import SwiftData
import SwiftUI

@main
struct Bookworm_DanielApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
