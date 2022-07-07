//
//  ContentView.swift
//  DAy6 1.1
//
//  Created by macbook on 04/07/2022.
//

import SwiftUI
struct StudentsDetails : Identifiable {
    let id = UUID()
    var fullName : String
    var year : Int
    var Age : Int
}

struct ContentView: View {
   @State var students = [StudentsDetails(fullName  : "Ahmad Maher" , year : 2003 , Age :  180) , StudentsDetails(fullName: "said ali", year: 2000, Age: 22),StudentsDetails(fullName: "mike snow", year: 1990, Age: 32) ]
    
    
    var body: some View {
        ZStack{
            Color.gray
        VStack{
            Text("Students ")
                .bold()
                .font(.title)
                .padding()
            Image("idf")
                .resizable()
                .frame(width: 300, height: 200)
            Text("Students info")
                .bold()

            List(students,id:\.id){ StudentsDetails in
                VStack(alignment:.leading){
                    Text("Name : \(StudentsDetails.fullName)")
                        .bold()
                    Text("Year : \(StudentsDetails.year)")
                        .bold()
                    Text("Age : \(StudentsDetails.Age)")
                        .bold()


                    
                }
                .listStyle(.plain)
                .listRowBackground(Color.gray)
            }
            .listStyle(.plain)
            
            
            HStack{
            Text("Number of Students : \(students.count)")
                    .bold()
                Image(systemName: "info.circle.fill")
                    .padding()
            }

        }
        .padding()
        }
        .ignoresSafeArea()
    
}
}

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
