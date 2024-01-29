//
//  RecipeDetailView.swift
//  RecipeApp2
//
//  Created by Joao Leal on 1/28/24.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
            
            VStack (alignment: .leading){
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach (recipe.ingredients, id: \.self) { item in
                        Text("•  "  + item)
                            
                    }
                }
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach (recipe.directions, id: \.self ) { item in
                    Text(item) }
                }
                
            }
            
        }
    }
}

let model = RecipeModel()

#Preview {
    RecipeDetailView(recipe: model.recipes[0])
}
