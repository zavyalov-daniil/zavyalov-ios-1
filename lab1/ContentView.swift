//
//  ContentView.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentDoctorInfo = DoctorInfoModel.currentDoctorInfo
    var topHeadingPadding: CGFloat = 20
    var bottomHeadingPadding: CGFloat = 20
    var searchBarPadding: CGFloat = 20
    var commonPadding: CGFloat = 24
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(LocalizedStringKey("hello"))
                        .font(Font.poppins)
                        .foregroundColor(Color.textGray)
                    
                    Text(LocalizedStringKey("hiJames"))
                        .font(Font.poppinsBoldHeading)
                        .foregroundColor(Color.textHeading)
                }
                Spacer()
                Image.frame.clipShape(Circle())
                
            }
            .padding(.bottom, topHeadingPadding)
            .padding(.top, bottomHeadingPadding)
            
            DoctorInfo(doctorInfo: $currentDoctorInfo)
            
            SearchBarView()
                .padding(.top, searchBarPadding)
            Spacer()
            
        }.padding([.trailing, .leading], commonPadding)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
