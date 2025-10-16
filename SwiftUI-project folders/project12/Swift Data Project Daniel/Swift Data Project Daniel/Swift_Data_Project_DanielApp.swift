//
//  Swift_Data_Project_DanielApp.swift
//  Swift Data Project Daniel
//
//  Created by Daniel Lidman on 10/16/25.
//

import SwiftData
import SwiftUI

@main
struct Swift_Data_Project_DanielApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
