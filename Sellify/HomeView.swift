//
//  HomeView.swift
//  Sellify
//
//  Created by Xavier Carroll on 18/8/21.
//

import SwiftUI

struct HomeView: View {
    @State var searchQuery = ""
    @Binding var showSearchScreen: Bool
    @Binding var selectedIndex: Int
    var body: some View {
        VStack() {
            SearchButton(function: {
                showSearchScreen = true
                selectedIndex = 1
            })
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                        CategoryRect(title: "", function: {})
                            .padding(.leading)
                            .padding(.trailing)
                        HStack {
                            CategoryRect(title: "", function: {})
                            CategoryRect(title: "", function: {})
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        HStack {
                            CategoryRect(title: "", function: {})
                            CategoryRect(title: "", function: {})
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        Empty()
                        
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
