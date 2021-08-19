//
//  SearchView.swift
//  Sellify
//
//  Created by Xavier Carroll on 17/8/21.
//  https://www.youtube.com/watch?v=Iv-or6kTNIE

import SwiftUI

struct SearchView: View {
    @State var searchQuery = ""
    @State var recentlySearched = getRecentlySearched()
    
    var body: some View {
        VStack {
            SearchBar(searchQuery: $searchQuery)
                .onChange(of: searchQuery, perform: { value in
                    if searchQuery == "" {
                        updateRecentlySearched()
                    }
                })
                    
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack (spacing: 15){
                    ForEach(recentlySearched, id: \.self) { recent in
                        RecentlySearchedView(title: recent)
                    }
                    Button(action: {
                        deleteSearchHistory()
                        updateRecentlySearched()
                    }, label: {
                        Text("Clear search history")
                    })
                Empty()
                }
            })
        }.background(TransparantBackground())
    }
    
    func updateRecentlySearched() -> Void {
        recentlySearched = getRecentlySearched()
    }
}

struct SearchView_Prefiews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}

func getRecentlySearched() -> [String] {
    var recents: [String]
    recents = UserDefaults.standard.stringArray(forKey: "RecentSearches") ?? [""]
    // If recents is not valid, return empty string array
    return recents
}

func search(searchTerm: String) {
    if searchTerm != "" {
        var recents = getRecentlySearched()
        recents.insert(searchTerm, at: 0)
        var recentsSized: [String] = []
        if recents.count > 10 {
            for i in 0..<10 {
                recentsSized.append(recents[i])
            }
        } else {
            recentsSized = recents
        }
        UserDefaults.standard.set(recentsSized, forKey: "RecentSearches")
    }
}

func deleteSearchHistory() -> Void {
    let empty: [String] = []
    UserDefaults.standard.set(empty, forKey: "RecentSearches")
}
