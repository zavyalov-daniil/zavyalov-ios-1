//
//  DoctorPhoto.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct DoctorPhoto: View {
    var imageName: String
    
    var body : some View {
        
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 58, height: 72)
            .clipped()
            .mask(Circle())
            .background(Circle().fill(Color.white))
    }
}

struct DoctorPhoto_Previews: PreviewProvider {
    static var previews: some View {
        DoctorPhoto(imageName: "Doc")
    }
}
