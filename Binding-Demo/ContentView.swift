//
//  ContentView.swift
//  Binding-Demo
//
//  Created by ds-mayur on 9/3/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var fashioModel = FashioModel.all()
    
    @State private var isStarModel = false
    
    var body: some View {
        
        List{
            
            Toggle(isOn: $isStarModel) {
                Text("Star Model")
                    .font(.title)
            }

            
            ForEach(fashioModel.filter{ $0.isStar == isStarModel }){ fashion in
                HStack {
                    Image(fashion.fashionImageUrl)
                        .resizable()
                        .frame(width: 125.0, height: 120.0)
                    Text(fashion.fashionName)
                        .font(.title)
                        .lineLimit(nil)
                    Spacer()
                    if (fashion.isStar){
                        Image("star")
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
