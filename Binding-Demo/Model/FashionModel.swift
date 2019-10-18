//
//  FashionModel.swift
//  Binding-Demo
//
//  Created by ds-mayur on 9/3/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import Foundation
import SwiftUI

struct FashioModel: Identifiable {
    var id                  = UUID()
    var fashionName         : String
    var fashionImageUrl     : String
    var isStar              : Bool
}

extension FashioModel{
    
    static func all() -> [FashioModel]{
        
        return[
            FashioModel(fashionName: "Bridal", fashionImageUrl: "1", isStar: true),
            FashioModel(fashionName: "Ruhi", fashionImageUrl: "2", isStar: false),
            FashioModel(fashionName: "Nature", fashionImageUrl: "3", isStar: true),
            FashioModel(fashionName: "Rafrafa", fashionImageUrl: "4", isStar: false),
            FashioModel(fashionName: "Bridal", fashionImageUrl: "4", isStar: true),
            FashioModel(fashionName: "Ruhi", fashionImageUrl: "3", isStar: false),
            FashioModel(fashionName: "Nature", fashionImageUrl: "2", isStar: true),
            FashioModel(fashionName: "Rafrafa", fashionImageUrl: "1", isStar: false)
        ]
    }
}
