//
//  UniversalButtons.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import Foundation
import SwiftUI


struct TabButton: View {
    var iconName: String
    var selected: Bool
    var function: () -> Void
    
    var body: some View {
        Button(action: {
            self.function()
        }, label: {
            Image(systemName: iconName)
                .font(.system(size: 25, weight: .regular, design: .default))
                // If currently selected, show the icon as black, else gray
                .foregroundColor(selected ? .black : .gray)
        })
    }
}

struct SpecialTabButton: View {
    var iconName: String
    var function: () -> Void
    
    var body: some View {
        Button(action: {
            self.function()
        }, label: {
            Image(systemName: iconName)
                .font(.system(size: 25, weight: .regular, design: .default))
                .foregroundColor(Color("BackgroundColour1"))
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("Colour3"))
                .cornerRadius(25)
                .padding(.bottom, 4)
        })
    }
}

struct CategoryRect: View {
    var title: String
    var function: () -> Void
    var body: some View {
        Button(action: {
            self.function()
        }, label: {
            ZStack {
                Rectangle()
                    .fill(Color("Colour3"))
                    .opacity(0.5)
                    .background(TransparantBackground())
                    .cornerRadius(30)
                    .frame(minHeight: 100, idealHeight: 150)
                VStack {
                    HStack {
                        Text(title)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("InverseColour"))
                            .padding(.init(top: 15, leading: 30, bottom: 15, trailing: 15))
                        Spacer()
                    }
                    Spacer()
                }
            }
        })
    }
}

struct UniversalButtons_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
