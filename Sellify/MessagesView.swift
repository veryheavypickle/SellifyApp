//
//  MessagesView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        ZStack {
            //Background colour
            Color("tabColour")
                .ignoresSafeArea(.all)
            
            NavigationView {
                VStack{
                    Text("Messages screen")
                }
                .navigationTitle("Messages")
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
