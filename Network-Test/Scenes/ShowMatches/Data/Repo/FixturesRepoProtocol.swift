//
//  FixturesRepoProtocol.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

protocol FixturesRepoProtocol {
    func fetchFixtures(completion: @escaping (Result<Fixtures, AppException>) -> Void)
}
