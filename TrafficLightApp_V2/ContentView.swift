//
//  ContentView.swift
//  TrafficLightApp_V2
//
//  Created by Vasichko Anna on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "START"
   
    @State private var opacity1 = 0.5
    @State private var opacity2 = 0.5
    @State private var opacity3 = 0.5

    
   var body: some View {
       ZStack{
           Color.black
               .ignoresSafeArea()
       VStack {
           ColorCirle(opacity: opacity1, color: .red)
                .padding(.bottom, 10)
           ColorCirle(opacity: opacity2, color: .yellow)
                .padding(.bottom, 10)
           ColorCirle(opacity: opacity3, color: .green)
                .padding(.bottom, 100)
           
          
           ButtonView(text: buttonText) {
               buttonText = "NEXT"
               if opacity1 == 0.5 && opacity2 == 0.5{
                   opacity3 = 0.5
                   opacity1 = 1
               } else if opacity1 == 1 && opacity2 == 0.5 {
                   opacity1 = 0.5
                   opacity2 = 1
               } else if opacity2 == 1 && opacity3 == 0.5 {
                   opacity2 = 0.5
                   opacity3 = 1
               }
           }.padding(.bottom, 50)

        }
       }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



