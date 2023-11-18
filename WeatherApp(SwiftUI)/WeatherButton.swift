//
//  WeatherButton.swift
//  WeatherApp(SwiftUI)
//
//  Created by Furkan Kozmaç on 24.10.2023.
//

import SwiftUI

struct WeatherButton: View {
    
    let title: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 18, weight: .bold, design: .default))
            .cornerRadius(12)
    }
}

