//
//  DoctorInfo.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct DoctorInfo: View {
    var body : some View {
        VStack() {
            HStack {
                DoctorPhoto(imageName: 	"Doc")
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
            
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28,  green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}

struct DoctorInfo_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfo()
    }
}
