//
//  SearchView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//  https://www.youtube.com/watch?v=Iv-or6kTNIE

import SwiftUI

struct SearchView: View {
    @Binding var showView: Bool
    @State var searchQuery = ""
    
    var body: some View {
            VStack {
                VStack {
                // Title
                HStack {
                    Text("Search")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .foregroundColor(Color("InverseColour"))
                    Spacer()
                }
                .padding()
                        
                SearchBar(searchQuery: $searchQuery)
            }
                    
            ScrollView(.vertical, showsIndicators: true,
                        content: {
                        VStack (spacing: 15){
                            ForEach(0..<100) { number in
                                Product(title: "Product \(number)")
                    }
                            Empty()
                }
            })
        }.opacity(showView ? 1 : 0)
    }
}

struct SearchView_Prefiews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
