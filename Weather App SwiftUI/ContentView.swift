//
//  ContentView.swift
//  Weather App SwiftUI
//
//  Created by utkarsh mishra on 02/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Color(.blue)
            LinearGradient(gradient: Gradient(colors: [.blue, Color("LightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Delhi, India")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 16)
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76")
                        .font(.system(size: 78, weight: .medium))
                        .foregroundStyle(.white)
                    
                }
//                Spacer()
                .padding(.bottom, 80)
                HStack(spacing: 15){
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "SUN", imageName: "cloud.sun.fill", temperature: 28)
                }
                
                Spacer() // upar moves krdega us stack k
                Button{
                    print("button Tapped")
                }
            label: {
                    Text("Change Day Time")
                    .frame(width: 280, height: 50)
                    .background(Color.white)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .cornerRadius(10)
                }
                Spacer()
                     
            }
        }
        
        
//        .padding() // sides se space krdega
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
