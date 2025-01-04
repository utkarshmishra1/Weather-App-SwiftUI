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
            LinearGradient(gradient: Gradient(colors: [.blue, .blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
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
                
                Spacer() // upar moves krdega us stack k
                
                     
            }
        }
        
//        .padding() // sides se space krdega
        
    }
}

#Preview {
    ContentView()
}
