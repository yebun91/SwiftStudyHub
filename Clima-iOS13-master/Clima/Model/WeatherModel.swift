//
//  WeatherModel.swift
//  Clima
//
//  Created by 최유진 on 2023/05/09.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double

    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

    var conditionName: String {
        var weatherName = "cloud"
        if conditionId <= 232 {
            weatherName = "cloud.bolt"
        } else if conditionId <= 321 {
            weatherName = "cloud.drizzle"
        } else if conditionId <= 531 {
            weatherName = "cloud.rain"
        } else if conditionId <= 622 {
            weatherName = "cloud.snow"
        } else if conditionId <= 781 {
            weatherName = "cloud.fog"
        } else if conditionId == 800 {
            weatherName = "sun.max"
        } else if conditionId <= 804 {
            weatherName = "cloud.bolt"
        }
        return weatherName
    }
}
