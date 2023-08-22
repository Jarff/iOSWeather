//
//  WeatherAPI.swift
//  weatherapp
//
//  Created by rys0822 on 8/15/23.
//

import Foundation

struct WeatherAPI {
    static func current(lat: Double, lon: Double, appId: String) {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(appId)")
        
        do {
            let session = URLSession.shared
            let (data, _) = try await session.data(from: url)
            let dataString = String(data: data, encoding: .utf8) //Gets JSON
            let decoder = JSONDecoder()
            
            let currentWeather = try decoder.decode(WebWeather, from: dataString.data(using: .utf8))
        } catch {
            
        }
    }
}
