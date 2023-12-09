//
//  SampleData.swift
//  lab1
//
//  Created by dezavv on 11/23/23.
//

import Foundation
import SwiftUI

extension DoctorModel {
    static let currentDoctor = DoctorModel(
        image: .firstDoctor,
        name: "name",
        specialisation: "specialisation"
    )
}

extension DoctorInfoModel {
    static let currentDoctorInfo = DoctorInfoModel(
        doctor: DoctorModel.currentDoctor,
        time: "timeInfo",
        date: "dateInfo"
    )
}
