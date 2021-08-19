//
//  ContentView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//

//TODO
// Make circles move slighty over time
// Update logo to make handles 45 deg

import SwiftUI

struct ContentView: View {
    // This var is used to select the tabs
    @State var selectedIndex = 0
    @State var showAddScreen = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                BackgroundView(showCircles: true)
                AddItemView(showScreen: $showAddScreen)
                
                switch selectedIndex {
                case 1:
                    SearchView()
                case 3:
                    SearchView()
                case 4:
                    SearchView()
                default:  // case 0
                    HomeView(height: geometry.size.height)
                }
            
                TabBar(selectedIndex: $selectedIndex,
                       showAddScreen: $showAddScreen)
            }
        }
    }
}

struct TabBar: View {
    
    @Binding var selectedIndex: Int
    @Binding var showAddScreen: Bool
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                ForEach(0..<5, id: \.self) {
                    number in
                    
                    Spacer()
                    TabIcon(number: number, selectedIndex: $selectedIndex, showAddScreen: $showAddScreen)
                    Spacer()
                }
            }
            .padding(.top, 3)
            .background(TransparantBackground())
        }
    }
}

struct TabIcon: View {
    var number: Int
    @Binding var selectedIndex: Int
    @Binding var showAddScreen: Bool
    
    let icons = [
        "house.fill",
        "magnifyingglass.circle.fill",
        "plus",
        "message.fill",
        "person.circle.fill"]
    
    var body: some View {
        // If middle icon
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
