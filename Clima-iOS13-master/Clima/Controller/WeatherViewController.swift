//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate, WeatherManagerDelegate {
    @IBOutlet var conditionImageView: UIImageView!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var searchTextField: UITextField!

    var weatherManager = WeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        weatherManager.delegate = self
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_: UIButton) {
        searchTextField.endEditing(true)
    }

    func textFieldShouldReturn(_: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something."
            return false
        }
    }

    func textFieldDidEndEditing(_: UITextField) {
//        if let city = searchTextField.text {
//            weatherManager.fetchCity(cityName: city)
//        }

        weatherManager.fetchWeather(lat: Float(1), lon: Float(1))

        searchTextField.text = ""
    }

    func didUpdateWeather(weatherManager _: WeatherManager, weather: WeatherModel) {
        print(weather.temperature)

        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
        }
    }

    func didfailWithError(error: Error) {
        print(error)
    }
}
