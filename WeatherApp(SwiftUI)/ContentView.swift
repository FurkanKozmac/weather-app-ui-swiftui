//
//  ContentView.swift
//  WeatherApp(SwiftUI)
//
//  Created by Furkan Kozmaç on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityNameView(cityName: "Cupertino, CA")
                
                CurrentWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 14 : 23)
                
                HStack(spacing: 20) {
                    ForEach(0..<weatherDataArray.count, id: \.self) { index in
                           let weatherData = weatherDataArray[index]
                           OtherDaysWeatherView(dayOfWeek: weatherData.dayOfWeek, imageName: weatherData.imageName, temp: weatherData.temp)
                       }
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Daytime", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct OtherDaysWeatherView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.white)
                .padding(.bottom)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}

struct CityNameView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct CurrentWeatherView: View {
    
    let imageName: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .bold))
                .foregroundStyle(.white)
                .padding(.bottom)
        }
        .padding(.bottom, 40)
    }
}

