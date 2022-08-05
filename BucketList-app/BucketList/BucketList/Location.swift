//
//  Location.swift
//  BucketList
//
//  Created by Gustavo Araujo Santos on 05/08/22.
//

import Foundation

struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
}
