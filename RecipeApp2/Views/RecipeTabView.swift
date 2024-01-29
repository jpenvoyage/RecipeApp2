//
//  RecipeTabView.swift
//  RecipeApp2
//
//  Created by Joao Leal on 29/01/2024.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            
            Text("Featured View")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
        }
        .environmentObject(RecipeModel())
    }
}

#Preview {
    RecipeTabView()
}
