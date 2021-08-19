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
    @State var showSearchScreen = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                BackgroundView(showCircles: true).zIndex(1)
                AddItemView(showScreen: $showAddScreen).zIndex(2)
                
                switch selectedIndex {
                case 1:
                    Empty().zIndex(2)
                case 3:
                    Empty().zIndex(2)
                case 4:
                    Empty()
                default:  // case 0
                    HomeView(showSearchScreen: $showSearchScreen, selectedIndex: $selectedIndex).zIndex(2)
                }
                SearchView()
                    .zIndex(showSearchScreen ? 2 : 0)
                    .disabled(!showSearchScreen)
                TabBar(selectedIndex: $selectedIndex,
                       showAddScreen: $showAddScreen,
                       showSearchScreen: $showSearchScreen)
                    .zIndex(3)
            }
        }
    }
}

struct TabBar: View {
    
    @Binding var selectedIndex: Int
    @Binding var showAddScreen: Bool
    @Binding var showSearchScreen: Bool
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                ForEach(0..<5, id: \.self) {
                    number in
                    
                    Spacer()
                    TabIcon(number: number, selectedIndex: $selectedIndex, showAddScreen: $showAddScreen, showSearchScreen: $showSearchScreen)
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
    @Binding var showSearchScreen: Bool
    
    let icons = [
        "house.fill",
        "magnifyingglass",
        "plus",
        "message.fill",
        "person.fill"]
    
    var body: some View {
        // if search icon
        if number == 1 {
            TabButton(iconName: icons[number], selected: self.selectedIndex == number, function: {
                    self.selectedIndex = number
                    self.showSearchScreen = true
            })
        } else if number == 2 { // If middle icon
            SpecialTabButton(iconName: icons[number],function: { self.showAddScreen.toggle()
                self.showSearchScreen = false
            })
        } else {
            TabButton(iconName: icons[number], selected: self.selectedIndex == number, function: {
                    self.selectedIndex = number
                    self.showSearchScreen = false
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
