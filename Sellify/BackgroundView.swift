//
//  SwiftUIView.swift
//  Sellify
//
//  Created by Xavier Carroll on 18/8/21.
//

import SwiftUI

struct BackgroundView: View {
    static var screenWidth = UIScreen.main.bounds.size.width
    static var screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        //Background colour
        LinearGradient(gradient: Gradient(colors: [Color("backgroundColour1"), Color("backgroundColour2")]),
                       startPoint: .top,
                       endPoint: .bottom)
            .ignoresSafeArea()
    }
}


// was a good idea in my head
struct Dots: View {
    var body: some View {
        ForEach(0..<25, id: \.self) {
            number in
            Rectangle()
                .size(width: 5, height: 5)
                .padding(.leading, CGFloat.random(in: 0..<BackgroundView.screenWidth))
                .padding(.top, CGFloat.random(in: 0..<BackgroundView.screenHeight)).foregroundColor(Color("middleTabBackground"))
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
            //.environment(\.colorScheme, .dark)
    }
}
