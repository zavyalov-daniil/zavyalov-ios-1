//
//  DoctorInfo.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct DoctorInfo: View {
    @Binding var doctorInfo: DoctorInfoModel
    var commonPAdding: CGFloat = 20
    var deviderPadding: CGFloat = 16
    var mainCornerRadius: CGFloat = 12
    var personalInfoPadding: CGFloat = 12
    var stackSpacing: CGFloat = 16
    var imagePadding: CGFloat = 8
    
    var body : some View {
        VStack() {
            HStack(spacing: 0) {
                DoctorPhotoView(image: doctorInfo.doctor.image)
                
                VStack(alignment: .leading, spacing: stackSpacing) {
                    Text(LocalizedStringKey(doctorInfo.doctor.name))
                        .font(Font.poppinsBold)
                        .foregroundColor(.white)
                    Text(LocalizedStringKey(doctorInfo.doctor.specialisation))
                        .font(Font.poppinsCommon)
                        .foregroundColor(Color.textCommon)
                }.padding(.leading, personalInfoPadding)
                
                Spacer()
                
                Image.arrowRight
            }
            .padding([.top, .leading, .trailing], commonPAdding)
            
            Divider()
                .overlay(Color.devider)
                .padding([.trailing, .leading], commonPAdding)
                .padding([.bottom, .top], deviderPadding)
            
            HStack(spacing: 0) {
                HStack(spacing: 0) {
                    Image.calendar.padding(.trailing, imagePadding)
                    Text(LocalizedStringKey(doctorInfo.date))
                        .font(Font.poppinsSmall)
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing: 0) {
                    Image.clock.padding(.trailing, imagePadding)
                    Text(LocalizedStringKey(doctorInfo.time))
                        .font(Font.poppinsSmall)
                        .foregroundColor(.white)
                        .padding(.trailing, 24.5)
                }
            }
            .padding([.bottom, .leading, .trailing], commonPAdding)
        }
        .frame(maxWidth: .infinity, alignment: .top)
        .background(Color.backgroundBlue)
        .cornerRadius(mainCornerRadius)
    }
}

struct DoctorInfo_Previews: PreviewProvider {
    @State static var doctor = DoctorInfoModel.currentDoctorInfo
    static var previews: some View {
        DoctorInfo(doctorInfo: $doctor).padding(20)
    }
}
