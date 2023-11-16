//
//  DoctorInfo.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct DoctorInfo: View {
    var imageName: String
    var doctorName: String
    var doctorSpecialisation: String
    var body : some View {
        VStack() {
            HStack {
                DoctorPhoto(imageName: 	imageName)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text(doctorName)
                        .font(Font.custom("Poppins", size: 16).weight(.bold))
                        .foregroundColor(.white)
                    Text(doctorSpecialisation	)
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                }
                
                Spacer()
                
                Image("arrow-right").frame(width: 24, height: 24)
            }
            .padding(.bottom, 16)
            
            Divider().overlay(Color.white.opacity(0.8))
            
            HStack {
                Image("calendar-2").padding(.trailing, 8)
                Text("Sunday, 12 June")
                    .font(Font.custom("Poppins", size: 12))
                    .foregroundColor(.white)
                    .padding(.trailing, 17)//30
                
                Image("clock").padding(.trailing, 8)
                Text("11:00 - 12:00 AM")
                    .font(Font.custom("Poppins", size: 12))
                    .foregroundColor(.white)
            }
            .padding(.top, 16)
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28,  green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}

struct DoctorInfo_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfo(imageName: "Doc", doctorName: "Dr. Imran Syahir", doctorSpecialisation: "General Doctor")
    }
}
