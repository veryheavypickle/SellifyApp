//
//  ContentView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

import SwiftUI
import VisualEffects

struct ContentView: View {
    // This var is used to select the tabs
    @State var selectedIndex = 0
    @State var showAddScreen = false
    
    let icons = [
        "house.fill",
        "magnifyingglass.circle.fill",
        "plus",
        "message.fill",
        "person.circle.fill"
    ]
    
    var body: some View {
        ZStack {
            AddItemView(showScreen: $showAddScreen)
            
            switch selectedIndex {
            case 1:
                SearchView()
            case 3:
                SearchView()
            case 4:
                SearchView()
            default:  // case 0
                SearchView()
            }
        
            VStack {
                Spacer()
                
                // Tab Bar
                
                ZStack {
                    // Tab bar background
                    VisualEffectBlur(blurStyle: .systemUltraThinMaterial,
                                     vibrancyStyle: .fill) {}
                        .ignoresSafeArea()
                        .frame(height: 56)
                HStack {
                    // For each from 0 to 5
                    // equivilant to for number in range(5)
                    ForEach(0..<5, id: \.self) {
                        number in
                        
                        Spacer()
                        
                        // Button
                        if number == 2 {
                            Button(action: {
                                self.showAddScreen.toggle()
                            }, label: {
                                SpecialTabButtonLabelView(iconName: icons[number])
                            })
                        } else {
                            Button(action: {
                                self.selectedIndex = number
                            }, label: {
                                TabButtonLabelView(iconName: icons[number], selected: self.selectedIndex == number)
                            })
                        }
                        Spacer()
                    }
                }
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
