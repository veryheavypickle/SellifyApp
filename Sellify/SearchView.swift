//
//  SearchView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//  https://www.youtube.com/watch?v=Iv-or6kTNIE

import SwiftUI

struct SearchView: View {
    
    @State var searchQuery = ""
    
    var body: some View {
        VStack {
            VStack {
                // Title
                HStack {
                    Text("Search")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .foregroundColor(Color("textColour"))
                    Spacer()
                }
                .padding()
                    
                SearchBar(searchQuery: $searchQuery)
            }
                
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                        VStack (spacing: 15){
                            ForEach(0..<100) { number in
                                Product()
                    }
                }
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            //.environment(\.colorScheme, .dark)
    }
}
