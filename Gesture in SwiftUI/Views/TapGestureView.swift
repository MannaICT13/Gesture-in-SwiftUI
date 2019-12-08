//
//  TapGestureView.swift
//  Gesture in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 8/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import SwiftUI

struct TapGestureView : View{
   
    @State private var tapped = false
    
    
    
    
    var body : some View{
      
        ZStack {
            
            (self.tapped ?  Color.red.edgesIgnoringSafeArea(.all) : Color.blue.edgesIgnoringSafeArea(.all))
                
        .gesture(
            TapGesture(count: 1)
            
                .onEnded({ (value) in
                    
                    self.tapped.toggle()
                    
                })
            
            
            
            )
            
        }
        
        
    }
    
    
}

struct TapGestureView_Previews : PreviewProvider{
    
    static var  previews : some View {
        
        TapGestureView()
    }
}


