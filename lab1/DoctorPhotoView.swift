//
//  DoctorPhoto.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct DoctorPhotoView: View {
    var image: Image
    var frameSize: CGFloat = 58
    
    var body : some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: frameSize, height: frameSize)
            .clipped()
            .mask(Circle())
            .background(Circle().fill(Color.white))
    }
}

struct DoctorPhoto_Previews: PreviewProvider {
    static var previews: some View {
        DoctorPhotoView(image: .firstDoctor)
    }
}
