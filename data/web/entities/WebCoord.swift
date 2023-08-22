//
//  WebCoord.swift
//  weatherapp
//
//  Created by rys0822 on 8/15/23.
//

import Foundation

struct WebCoord: Coord, Decodable {
    var lat: Double
    var lon: Double
    
    enum CodingKeys: String, CodingKey {
        case lat = "lat"
        case lon = "lon"
    }
    
    init(from decoder: Decoder) throw {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        lat = try container.decode(Double.self, forKey: .lat)
        lon = try container.decode(Double.self, forKey: .lon)
    }
}
