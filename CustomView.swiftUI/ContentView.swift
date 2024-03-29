//
//  ContentView.swift
//  CustomView.swiftUI
//
//  Created by 이윤지 on 1/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isFocused = false
    
    var body: some View {
        VStack {
            Button(action: {

            }) {
                Text("Your Button")
                    .padding()
                   // .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
          //  Spacer()
            FocusView()
          
          //  Spacer()
            
            Button(action: {

            }) {
                Text("Your Button")
                    .padding()
                   // .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            
        }
        .navigationTitle("Your Title")
    }
}


struct FocusView: View {
    @State private var isFocused = false
    
    var body : some View {
        Rectangle()
            .foregroundColor(Color.pink)
            .focusable(true) { focused in
                self.isFocused = focused
            }
            .frame(width: 400, height: 200)
            .scaleEffect(isFocused ? 1.2 : 1.0)
            .animation(.easeInOut(duration: 0.1))
        
    }
    
}

#Preview{
    ContentView()
}
