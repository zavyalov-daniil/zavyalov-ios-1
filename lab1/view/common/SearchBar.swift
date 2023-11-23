//
//  SearchBar.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct SearchBar: View {
    var cornerRadius: CGFloat = 12
    var barPadding: CGFloat = 16
    var body : some View {
        HStack(alignment: .center, spacing: 12) {
            Image.searchNormal
            Text("searchDoctor")
                .font(Font.poppinsMiddle)
                .foregroundColor(.textGray)
        }
        .padding(barPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.backgroundGray)
        .cornerRadius(cornerRadius)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SearchBar()
        }.padding(20)
    }
}
