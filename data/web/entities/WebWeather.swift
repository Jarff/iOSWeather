//
//  WebWeather.swift
//  weatherapp
//
//  Created by rys0822 on 8/15/23.
//

import Foundation

struct WebWeather: Weather, Decodable {
    var coord: Coord
    
    enum CodingKeys: String, CodingKey {
        case coord = "coord"
    }
    
    init(from decoder: Decoder) throw {
        let container = try decoder.container(keyedBy: CodingKey.self)
        coord = try container.decode(WebCoord.self, forKey: .coord)
    }
}
