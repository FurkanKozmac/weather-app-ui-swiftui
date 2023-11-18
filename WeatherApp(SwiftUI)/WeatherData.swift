//
//  WeatherData.swift
//  WeatherApp(SwiftUI)
//
//  Created by Furkan Kozmaç on 24.10.2023.
//

struct WeatherData {
    let dayOfWeek: String
    let imageName: String
    let temp: Int
}

let weatherDataArray: [WeatherData] = [
    WeatherData(dayOfWeek: "Tue", imageName: "sun.max.fill", temp: 25),
    WeatherData(dayOfWeek: "Wed", imageName: "sun.max.fill", temp: 27),
    WeatherData(dayOfWeek: "Thu", imageName: "cloud.fill", temp: 26),
    WeatherData(dayOfWeek: "Fri", imageName: "cloud.sun.fill", temp: 22),
    WeatherData(dayOfWeek: "Sat", imageName: "cloud.fill", temp: 21)
]
