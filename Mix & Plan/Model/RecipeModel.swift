//
//  Recipe.swift
//  mc2cooking
//
//  Created by fathur rohman on 16/07/19.
//  Copyright © 2019 fathur rohman. All rights reserved.
//
import Foundation

// Query service creates Recipe objects
class RecipeModel {
    
    let id:String
    let name: String
    let contributor: String
    let imageURL: URL
    var downloaded = false
    let instruction:[String]
    var ingredient:[IngredientModel] = []
    
    init(id:String, name: String, contributor: String, imageURL: URL,
         instruction:[String]) {
        self.id = id
        self.name = name
        self.contributor = contributor
        self.imageURL = imageURL
        self.instruction = instruction
    }
    
}
