//
//  HomeView.swift
//  Sellify
//
//  Created by Xavier Carroll on 18/8/21.
//

import SwiftUI

struct HomeView: View {
    var height: CGFloat
    @State var searchQuery = ""
    var body: some View {
        VStack() {
            SearchBar(searchQuery: $searchQuery)
            CategoryRect()
                .padding(.leading)
                .padding(.trailing)
            HStack {
                CategoryRect()
                CategoryRect()
            }
            .padding(.leading)
            .padding(.trailing)
            HStack {
                CategoryRect()
                CategoryRect()
            }
            .padding(.leading)
            .padding(.trailing)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            HomeView(height: geometry.size.height)
        }
    }
}
