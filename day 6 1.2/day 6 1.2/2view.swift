//
//  2view.swift
//  day 6 1.2
//
//  Created by macbook on 05/07/2022.
//

import Foundation
struct SecondView: View {
 
    @State var text = "hi"
    @State var color = Color.blue
    
    var body : some View {
        
        ZStack {
            
            color
            
            VStack {
                Text(text)
                    .foregroundColor(Color.white)
            }
        }.ignoresSafeArea()
        
    }
}
