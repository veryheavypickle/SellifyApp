//
//  SearchView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            //Background colour
            Color("tabColour")
                .ignoresSafeArea(.all)
            
            NavigationView {
                VStack{
                    Text("Search screen")
                }
                .navigationTitle("Search")
            }
        }
    }
}
