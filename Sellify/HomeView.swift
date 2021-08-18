//
//  HomeView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            NavigationView {
                VStack{
                    Text("Home screen")
                }
                .navigationTitle("Home")
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
