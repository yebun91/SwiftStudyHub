//
//  WeatherManager.swift
//  Clima
//
//  Created by 최유진 on 2023/05/07.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=020607c8dd2a5c61369e5d5368ffba85"
    let cityURL = "https://api.openweathermap.org/geo/1.0/direct?limit=5&appid=020607c8dd2a5c61369e5d5368ffba85"

    func fetchCity(cityName: String) {
        let urlString = "\(cityURL)&q=\(cityName)"
//        performRequest(urlString: urlString)
    }

    func fetchWeather(lat _: Float, lon _: Float) {
//        let urlString = "\(weatherURL)&lat=\(lat)&lon=\(lon)"
        let urlString = "\(weatherURL)&lat=37.5666791&lon=126.9782914"
        performRequest(urlString: urlString)
    }

    func performRequest(urlString: String) {
        // 1. create a url
        if let url = URL(string: urlString) {
            // 2. create a urlSession
            let session = URLSession(configuration: .default)

            // 3. give the session a task
            let task = session.dataTask(with: url) { data, _, error in
                if error != nil {
                    print(error!)
                    return
                }

                if let safeData = data {
                    parseJSON(weatherData: safeData)
                }
            }

            // 4. start the task
            task.resume()
        }
    }

    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodeData.weather[0].id
            let temp = decodeData.main.temp
            let name = decodeData.name

            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)

            print(weather.conditionName)
            print(weather.temperatureString)
        } catch {
            print(error)
        }
    }
}
