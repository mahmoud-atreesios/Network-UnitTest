//
//  FetchFixturesRequest.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

struct FetchFixturesRequest: EndpointProtocol {
    
    var baseURL: String = "https://apiv2.allsportsapi.com/football/?met=Fixtures&"
    var path: String = "APIkey=8bca5b60aaeaad4802f1fd88480f5f94c2ef39bd734f22d99f045e6ac815006e&from=2025-08-15&to=2025-08-29"
    
    var headers: [String : String]?
    var body: (any Codable)?
    var queryParameters: [String : String]?
    
}
