//
//  UniversalButtons.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import Foundation
import SwiftUI


struct TabButtonLabelView: View {
    var iconName: String
    var selected: Bool
    
    
    var body: some View {
        Image(systemName: iconName)
            .font(.system(size: 25, weight: .regular, design: .default))
            // If currently selected, show the icon as black, else gray
            .foregroundColor(selected ? .black : .gray)
    }
}

struct SpecialTabButtonLabelView: View {
    var iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.system(size: 25, weight: .regular, design: .default))
            // If currently selected, show the icon as black, else gray
            .foregroundColor(Color("middleTabForeground"))
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("middleTabBackground"))
            .cornerRadius(25)
            .padding(.bottom, 4)
    }
}
