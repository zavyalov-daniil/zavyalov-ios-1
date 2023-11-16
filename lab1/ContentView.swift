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
                VStack {
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
            .padding(.leading, 24)
            .padding(.leading, 24)
            HStack() {
                Image("Doc").clipShape(Circle()).frame(width: 48, height: 48)
                Spacer()
                VStack(alignment: .center, spacing: 16) {
                    Text("Dr. Imran Syahir")
                        .font(Font.custom("Poppins", size: 14).weight(.bold))
                        .foregroundColor(.white)
                    Text("General Doctor")
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                }
                Spacer()
                Image("arrow-right").frame(width: 24, height: 24)
                
            }
            .padding(20)
            .frame(width: 327, alignment: .top)
            .background(Color(red: 0.28,  green: 0.58, blue: 1))
            .cornerRadius(12)
            SearchBar()
                .padding([.trailing, .leading], 16)
                .padding(.top, 20)
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
