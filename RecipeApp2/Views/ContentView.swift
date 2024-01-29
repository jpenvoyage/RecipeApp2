//
//  ContentView.swift
//  RecipeApp2
//
//  Created by Joao Leal on 1/28/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
            List(model.recipes) { r in
                
                HStack {
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipShape(Capsule())
                    Text(r.name)
                }
            }
    }
}

#Preview {
    ContentView()
}
