//
//  RecipeModel.swift
//  RecipeApp2
//
//  Created by Joao Leal on 1/28/24.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
    }
}
