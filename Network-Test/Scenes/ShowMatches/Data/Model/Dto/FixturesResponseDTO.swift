//
//  FixturesDTO.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

struct FixturesResponseDTO: Codable {
    let success: Int
    let result: [FixturesDTO]
}

struct FixturesDTO: Codable {
    let eventKey: String?
    let eventDate: String?
    let eventHomeTeam: String?
    let eventAwayTeam: String?
    let eventFinalResult: String?

    enum CodingKeys: String, CodingKey {
        case eventKey = "event_key"
        case eventDate = "event_date"
        case eventHomeTeam = "event_home_team"
        case eventAwayTeam = "event_away_team"
        case eventFinalResult = "event_final_result"
    }
}


// api key 8bca5b60aaeaad4802f1fd88480f5f94c2ef39bd734f22d99f045e6ac815006e
