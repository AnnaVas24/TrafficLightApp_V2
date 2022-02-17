//
//  ButtonView.swift
//  TrafficLightApp_V2
//
//  Created by Vasichko Anna on 15.02.2022.
//

import SwiftUI

struct ButtonView: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
        }
        .padding()
        .frame(width: 200, height: 50)
        .background(Color.blue)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5))
    
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "START", action: {})
    }
}
