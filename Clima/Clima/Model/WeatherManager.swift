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
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error:))
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error:Error?) {
        if(error != nil) {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            
            print(dataString)
        }
    }
}
