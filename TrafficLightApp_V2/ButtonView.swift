//
//  ButtonView.swift
//  TrafficLightApp_V2
//
//  Created by Vasichko Anna on 15.02.2022.
//

import SwiftUI

struct ButtonView: View {
    let text: String
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.blue)
            .frame(width: 200, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    Text(text)
            .foregroundColor(.white)
            .font(.title)
            .bold()
    }
}
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "START")
    }
}
