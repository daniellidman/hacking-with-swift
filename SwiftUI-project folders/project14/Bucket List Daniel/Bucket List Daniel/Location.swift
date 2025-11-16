//
//  Location.swift
//  Bucket List Daniel
//
//  Created by Daniel Lidman on 11/16/25.
//

import Foundation

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
}
