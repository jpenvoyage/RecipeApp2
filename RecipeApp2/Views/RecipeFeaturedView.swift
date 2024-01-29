//
//  RecipeFeaturedView.swift
//  RecipeApp2
//
//  Created by Joao Leal on 29/01/2024.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Featured Recipes")
                .padding(.top, 40)
               
                .bold()
                .padding(.leading)
                .font(.largeTitle)
            GeometryReader { geo in
                TabView {
                    ForEach (0..<model.recipes.count) { index in
                        if model.recipes[index].featured == true {
                            
                            ZStack{
                                
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                
                                VStack(spacing: 0) {
                                    
                                    Image("lasagna")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text("Lasagna")
                                        .padding(5)
                                }
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center )
                            .cornerRadius(15)
                            .shadow(color: .black, radius: 10, x: -5, y: 5
                            )
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: . leading, spacing: 10) {
                Text("Preparation Time")
                    .font(.headline)
                
                Text("1 Hour")
                    .font(.headline)
                
                Text("Highlights")
                
                Text("Healthy, hearty")
                
            }
            
            .padding(.leading)
        }
    }
}
#Preview {
    RecipeFeaturedView()
        .environmentObject(RecipeModel())
}
