//
//  AddItemView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import SwiftUI

struct AddItemView: View {
    @Binding var showScreen: Bool
    
    var body: some View {
            Spacer().fullScreenCover(isPresented: $showScreen, content: {
                ZStack {
                    BackgroundView(showCircles: false)
                    VStack {
                        Text("Add screen")
                            .foregroundColor(Color("InverseColour"))
                        Spacer()
                        Button(action: {
                            self.showScreen.toggle()
                        }, label: {
                            Text("Hide cover")
                                .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.red)
                                .foregroundColor(Color("InverseColour"))
                                .cornerRadius(12)
                        })
                        Spacer()
                    }
                }
            }).ignoresSafeArea()
    }
}

//struct AddItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        @State var TrueVar = true
//        AddItemView(showScreen: $TrueVar)
//            .environment(\.colorScheme, .dark)
//    }
//}

