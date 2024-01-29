//
//  ContentView.swift
//  RecipeApp2
//
//  Created by Joao Leal on 1/28/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    
    var body: some View {
        
     
        NavigationView{
            List(model.recipes) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    
                    HStack(spacing: 20.0) {
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
            
        }
    }
    #Preview {
        ContentView()
            .environmentObject(RecipeModel())
    }
    
    
    
    
    
