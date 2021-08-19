//
//  UserInterfaces.swift
//  Sellify
//
//  Created by Xavier Carroll on 19/8/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchQuery: String
    var body: some View {
        // Search bar
        HStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color("InverseColour"))
            TextField("Search", text: $searchQuery)
                .foregroundColor(Color("InverseColour"))
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Color("BackgroundColour2"))
        .cornerRadius(8)
        .padding(.horizontal)
    }
}

struct Product: View {
    var title: String
    var body: some View {
        HStack {
            Image(systemName: "house")
                .resizable()
                .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            VStack {
                HStack {
                    Text(title)
                        .foregroundColor(Color("InverseColour"))
                        .font(.title)
                    Spacer()
                }
                HStack {
                    Text("Information about this product")
                        .foregroundColor(Color("InverseColour"))
                    Spacer()
                }
                HStack {
                    ForEach(0..<5) {
                        number in
                        Image(systemName: "star.fill")
                    }
                    Spacer()
                }
                HStack {
                    Text("€100")
                    Spacer()
                }
            }
        }
        .background(TransparantBackgroundHeavy())
        .cornerRadius(10)
    }
}

struct Empty: View{
    var body: some View{
        Rectangle()
            .opacity(0)
            .frame(height: 70)
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
