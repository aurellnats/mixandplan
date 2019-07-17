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
    
    let id:Int
    let name: String
    let contributor: String
    let imageURL: URL
    var downloaded = false
    let instruction:[String]
    var ingredient:[Ingredient] = []
    
    init(id:Int, name: String, contributor: String, imageURL: URL,
         instruction:[String]) {
        self.id = id
        self.name = name
        self.contributor = contributor
        self.imageURL = imageURL
        self.instruction = instruction
    }
    
//    private enum CodingKeys: String, CodingKey
//    {
//        case id, name, contributor, imageURL, downloaded, instruction, ingredient
//    }
    
}
