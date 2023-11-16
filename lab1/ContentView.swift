//
//  ContentView.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello,")
                        .font(Font.custom("Poppins", size: 16))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                    
                    Text("Hi James")
                        .font(
                            Font.custom("Poppins", size: 20)
                                .weight(.bold)
                        )
                        .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
                }
                Spacer()
                Image("Frame").clipShape(Circle())
                
            }
            .padding([.leading, .trailing], 24)
            .padding(.bottom, 32)
            .padding(.top, 20)
            
            DoctorInfo(imageName: "Doc", doctorName: "Dr. Imran Syahir", doctorSpecialisation: "General Doctor")
                .padding([.leading, .trailing], 24)
            
            SearchBar()
                .padding([.trailing, .leading], 16)
                .padding(.top, 20)
            Spacer()
            
        }.padding([.trailing, .leading], 24)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
