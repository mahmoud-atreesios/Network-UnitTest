//
//  RequestBuilder.swift
//  SolutionX
//
//  Created by Mahmoud Mohamed Atrees on 05/02/2025.
//

import Foundation

protocol RequestBuilderProtocol {
    func buildRequest(apiEndpoint: EndpointProtocol, method: HTTPMethod) throws -> URLRequest
}
