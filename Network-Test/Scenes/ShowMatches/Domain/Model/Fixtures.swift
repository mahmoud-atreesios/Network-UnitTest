//
//  FixturesResponse.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

struct Fixtures: Codable {
    let eventKey: String
    let eventDate: String
    let eventHomeTeam: String
    let eventAwayTeam: String
    let eventFinalResult: String
}
