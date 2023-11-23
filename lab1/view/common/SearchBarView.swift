//
//  SearchBar.swift
//  lab1
//
//  Created by dezavv on 11/16/23.
//

import Foundation
import SwiftUI

struct SearchBarView: View {
    var cornerRadius: CGFloat = 12
    var barPadding: CGFloat = 16
    var stackSpacing: CGFloat = 12
    var body : some View {
        HStack(alignment: .center, spacing: stackSpacing) {
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

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SearchBarView()
        }.padding(20)
    }
}
