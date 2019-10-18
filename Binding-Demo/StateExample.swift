//
//  StateExample.swift
//  Binding-Demo
//
//  Created by ds-mayur on 10/13/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct StateExample: View {
    
    @State private var isToggle : Bool = false
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $isToggle){
                Text("Switch ")
                    .font(.title)
                    .foregroundColor(Color.white)
               
            }
        }.padding()
            .background(isToggle ? Color.orange : Color.purple)
    }
}

struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}
