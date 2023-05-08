//
//  WeatherData.swift
//  Clima
//
//  Created by 최유진 on 2023/05/08.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
    let coord: Coord
    let base: String
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let sys: Sys
    let dt: Int
    let timezone: Int
    let id: Int
    let cod: Int
}

struct Main: Decodable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
}

struct Weather: Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Coord: Decodable {
    let lon: Float
    let lat: Float
}

struct Wind: Decodable {
    let speed: Double
    let deg: Int
}

struct Clouds: Decodable {
    let all: Int
}

struct Sys: Decodable {
    let type: Int
    let id: Int
    let country: String
    let sunrise: Int
    let sunset: Int
}
