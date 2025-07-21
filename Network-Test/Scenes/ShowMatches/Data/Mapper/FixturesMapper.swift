//
//  FixturesMapper.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

struct FixturesMapper {
    func FixturesDtoToDomain(_ dto : FixturesDTO) -> Fixtures {
        return Fixtures(
            eventKey: dto.eventKey ?? "",
            eventDate: dto.eventDate ?? "",
            eventHomeTeam: dto.eventHomeTeam ?? "",
            eventAwayTeam: dto.eventAwayTeam ?? "",
            eventFinalResult: dto.eventFinalResult ?? "")
    }
}
