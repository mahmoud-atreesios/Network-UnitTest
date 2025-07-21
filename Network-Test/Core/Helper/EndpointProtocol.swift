//
//  EndpointProtocol.swift
//  SolutionX
//
//  Created by Mahmoud Mohamed Atrees on 27/01/2025.
//

import Foundation

protocol EndpointProtocol {
    var baseURL: String { get set }
    var path: String { get set }
    var headers: [String: String]? { get set }
    var body: Codable? { get set }
    var queryParameters: [String: String]? { get set }
}
