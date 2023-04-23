//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Badarau Dan on 11.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showHello = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $showHello){
                Text("Show Hello")
                    .font(.largeTitle)
            } .padding()
            if showHello{
                let colors = Gradient(colors: [.yellow, .black,])
                let gradient = AngularGradient(gradient: colors, center: .center)
                Circle()
                    .strokeBorder(gradient, lineWidth: 50)
                    .frame(width: 300, height: 300)
                Text("Hello, World!")
                    .foregroundColor(.yellow)
                    .padding(5)
                    .background(Color .black)
                    .font(.largeTitle)
                
                
            }
            
        }
    }
    
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
