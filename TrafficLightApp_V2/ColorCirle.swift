//
//  ColorCirle.swift
//  TrafficLightApp_V2
//
//  Created by Vasichko Anna on 16.02.2022.
//

import SwiftUI

struct ColorCirle: View {
    let opacity: Double
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCirle(opacity: 0.5, color: .red)
    }
}

