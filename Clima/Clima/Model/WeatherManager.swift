//
//  WeatherManager.swift
//  Clima
//
//  Created by Farhan Niloy on 4/20/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let wheatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=abfebdfc1ce45e0187959ff6f52d8bb7&units=metric"
    
    func fetchWeather(_ cityName: String) -> String {
        let urlString = "\(wheatherUrl)&q=\(cityName)"
        return urlString
    }
    
    func performRequest(urlString: String) {
        if  let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                if(error != nil) {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJason(weatherData: safeData)
                }
            }
            task.resume()
        }
    }
    
    func parseJason(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let temp = decodedData.main.temp
            let name = decodedData.name
            let id = decodedData.weather[0].id
            
            let weather = WeatherModel(conditionId: id, cityName: name, temprature: temp)
            
            print(weather.tempratureString)
        } catch {
            print(error)
        }
    }
}
