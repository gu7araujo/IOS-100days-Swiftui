//
//  Mission.swift
//  Moonshot
//
//  Created by Gustavo Araujo Santos on 19/04/22.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
