//
//  Demo2.swift
//  Binding-Demo
//
//  Created by ds-mayur on 10/17/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var valueFromParent : Int
    
    var body: some View {
        VStack {
            
            Button(action: {
                self.valueFromParent -= 1
            }){
                Text("Minus One")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(16)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(valueFromParent: .constant(0))
    }
}
