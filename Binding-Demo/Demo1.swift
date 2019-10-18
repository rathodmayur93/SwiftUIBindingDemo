//
//  Demo1.swift
//  Binding-Demo
//
//  Created by ds-mayur on 10/17/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct Demo1: View {
    
    @State var currentValue = 0
    
    var body: some View {
        
        //Vertical Stack
        VStack {
            
            //Text containing current value
            Text("\(currentValue)")
                .font(.largeTitle)  // Font type or size
                .fontWeight(.bold)  // Font style
            
            Button(action: {
                //Button on click action goes here
                self.currentValue += 1
            }){
                //Button Text a& its properties
                Text("Plus One")
                    .font(.title)   // Font type or size
                    .fontWeight(.bold)  // Font style
                    .foregroundColor(Color.white) // Text Color
                    .padding(16)    // Padding to the button
                    .background(Color.orange)   // Background color of the button
                    .cornerRadius(10)   // Corner radius to make edges circular
            }
            
            //Another View
            BindingView(valueFromParent: $currentValue)
        }
    }
}

struct Demo1_Previews: PreviewProvider {
    static var previews: some View {
        Demo1()
    }
}
