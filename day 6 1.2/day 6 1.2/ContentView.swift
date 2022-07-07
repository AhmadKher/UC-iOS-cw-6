//
//  ContentView.swift
//  day 6 1.2
//
//  Created by macbook on 04/07/2022.
//

import SwiftUI

struct MainView: View {
    
    @State var colors = [Color.red,Color.blue,Color.green]
    
    @State var textInput = ""
    @State var selectedColor  = Color.white
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Select the Color")
                
                HStack {
                    ForEach(colors,id:\.self) { color in
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(color)
                        
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                    
                }
                
                TextField("Enter your text", text: $textInput)
                    .padding()
                NavigationLink {
                    SecondView(text: textInput, color: selectedColor)
                } label: {
                    Text("Send")
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
