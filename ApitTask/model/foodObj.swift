//
//  foodObj.swift
//  ApitTask
//
//  Created by Amr on 10/2/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import Foundation

class foodObj{
    
    var dateModified : AnyObject!
    var idMeal : String!
    var strArea : String!
    var strCategory : String!
    var strIngredient1 : String!
    var strIngredient10 : String!
    var strIngredient11 : String!
    var strIngredient12 : String!
    var strIngredient13 : String!
    var strIngredient14 : String!
    var strIngredient15 : String!
    var strIngredient16 : String!
    var strIngredient17 : String!
    var strIngredient18 : String!
    var strIngredient19 : String!
    var strIngredient2 : String!
    var strIngredient20 : String!
    var strIngredient3 : String!
    var strIngredient4 : String!
    var strIngredient5 : String!
    var strIngredient6 : String!
    var strIngredient7 : String!
    var strIngredient8 : String!
    var strIngredient9 : String!
    var strInstructions : String!
    var strMeal : String!
    var strMealThumb : String!
    var strMeasure1 : String!
    var strMeasure10 : String!
    var strMeasure11 : String!
    var strMeasure12 : String!
    var strMeasure13 : String!
    var strMeasure14 : String!
    var strMeasure15 : String!
    var strMeasure16 : String!
    var strMeasure17 : String!
    var strMeasure18 : String!
    var strMeasure19 : String!
    var strMeasure2 : String!
    var strMeasure20 : String!
    var strMeasure3 : String!
    var strMeasure4 : String!
    var strMeasure5 : String!
    var strMeasure6 : String!
    var strMeasure7 : String!
    var strMeasure8 : String!
    var strMeasure9 : String!
    var strSource : String!
    var strTags : AnyObject!
    var strYoutube : String!
    
    convenience init(fromDictionary dictionary: [String:Any]){
        self.init()
        dateModified = dictionary["dateModified"] as? AnyObject
        idMeal = dictionary["idMeal"] as? String
        strArea = dictionary["strArea"] as? String
        strCategory = dictionary["strCategory"] as? String
        strIngredient1 = dictionary["strIngredient1"] as? String
        strIngredient10 = dictionary["strIngredient10"] as? String
        strIngredient11 = dictionary["strIngredient11"] as? String
        strIngredient12 = dictionary["strIngredient12"] as? String
        strIngredient13 = dictionary["strIngredient13"] as? String
        strIngredient14 = dictionary["strIngredient14"] as? String
        strIngredient15 = dictionary["strIngredient15"] as? String
        strIngredient16 = dictionary["strIngredient16"] as? String
        strIngredient17 = dictionary["strIngredient17"] as? String
        strIngredient18 = dictionary["strIngredient18"] as? String
        strIngredient19 = dictionary["strIngredient19"] as? String
        strIngredient2 = dictionary["strIngredient2"] as? String
        strIngredient20 = dictionary["strIngredient20"] as? String
        strIngredient3 = dictionary["strIngredient3"] as? String
        strIngredient4 = dictionary["strIngredient4"] as? String
        strIngredient5 = dictionary["strIngredient5"] as? String
        strIngredient6 = dictionary["strIngredient6"] as? String
        strIngredient7 = dictionary["strIngredient7"] as? String
        strIngredient8 = dictionary["strIngredient8"] as? String
        strIngredient9 = dictionary["strIngredient9"] as? String
        strInstructions = dictionary["strInstructions"] as? String
        strMeal = dictionary["strMeal"] as? String
        strMealThumb = dictionary["strMealThumb"] as? String
        strMeasure1 = dictionary["strMeasure1"] as? String
        strMeasure10 = dictionary["strMeasure10"] as? String
        strMeasure11 = dictionary["strMeasure11"] as? String
        strMeasure12 = dictionary["strMeasure12"] as? String
        strMeasure13 = dictionary["strMeasure13"] as? String
        strMeasure14 = dictionary["strMeasure14"] as? String
        strMeasure15 = dictionary["strMeasure15"] as? String
        strMeasure16 = dictionary["strMeasure16"] as? String
        strMeasure17 = dictionary["strMeasure17"] as? String
        strMeasure18 = dictionary["strMeasure18"] as? String
        strMeasure19 = dictionary["strMeasure19"] as? String
        strMeasure2 = dictionary["strMeasure2"] as? String
        strMeasure20 = dictionary["strMeasure20"] as? String
        strMeasure3 = dictionary["strMeasure3"] as? String
        strMeasure4 = dictionary["strMeasure4"] as? String
        strMeasure5 = dictionary["strMeasure5"] as? String
        strMeasure6 = dictionary["strMeasure6"] as? String
        strMeasure7 = dictionary["strMeasure7"] as? String
        strMeasure8 = dictionary["strMeasure8"] as? String
        strMeasure9 = dictionary["strMeasure9"] as? String
        strSource = dictionary["strSource"] as? String
        strTags = dictionary["strTags"] as? AnyObject
        strYoutube = dictionary["strYoutube"] as? String
    }
}
