//
//  SearchView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
            NavigationView {
                ZStack {
                    BackgroundView()
                    ScrollView {
                        VStack{
                            ForEach(0..<100) {
                                Text("Content \($0)")
                            }
                        }
                        .navigationTitle("Search")
                        .foregroundColor(Color("textColour"))
                    }
                }
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environment(\.colorScheme, .dark)
    }
}
