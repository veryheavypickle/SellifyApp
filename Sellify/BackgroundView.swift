//
//  SwiftUIView.swift
//  Sellify
//
//  Created by Xavier Carroll on 18/8/21.
//

import SwiftUI
import VisualEffects

struct BackgroundView: View {
    var showCircles: Bool
    static var screenWidth = UIScreen.main.bounds.size.width
    static var screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        //Background colour
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColour1"), Color("backgroundColour2")]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()
            if showCircles {
                Circles()
            }
        }
    }
}

struct TransparantBackground: View {
    var body: some View {
        VisualEffectBlur(blurStyle: .systemUltraThinMaterial,
                         vibrancyStyle: .fill) {}
            .ignoresSafeArea()
    }
}

struct TransparantBackgroundHeavy: View {
    var body: some View {
        VisualEffectBlur(blurStyle: .systemMaterial,
                         vibrancyStyle: .fill) {}
            .ignoresSafeArea()
    }
}

struct Circles: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    var body: some View {
        let small = screenWidth * 0.4
        let halfSmall = small/2
        let big = screenWidth * 0.5
        let halfBig = big/2
        MovingBackgroundCircle(endX: screenWidth - halfSmall - 10, x: screenWidth + halfSmall + 10, y: small, height: small)
            .foregroundColor(Color("middleTabBackground"))
        MovingBackgroundCircle(endX: halfBig + 10, x: -halfBig, y: big, height: big)
            .foregroundColor(Color("Colour2"))
            
    }
}

struct MovingBackgroundCircle: View {
    var endX: CGFloat
    @State var x: CGFloat
    var y: CGFloat
    var height: CGFloat
    var body: some View {
        Circle()
            .frame(width: height, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .position(x: x, y: y)
            .onAppear() {
                let baseAnimation = Animation.easeIn(duration: 0.5)
                
                withAnimation(baseAnimation) {
                    x = endX
                }
                
            }
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
        BackgroundView(showCircles: true)
            //.environment(\.colorScheme, .dark)
    }
}
