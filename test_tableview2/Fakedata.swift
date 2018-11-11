//
//  Fakedata.swift
//  Esercizio_tableview
//
//  Created by federico SPAGOCCI on 02/11/2018.
//  Copyright © 2018 Inoob_Spagocci. All rights reserved.
//

import Foundation

struct Recipe {
    
    var title:String?
    var ingredients:String?
    var methods:String?
    var tips:String?
}

struct Ricettario{
    var recipeList:[Recipe] = []
  mutating  func GetRecipes() -> [Recipe]{
    
    
        recipeList.append(Recipe(title: "Clear liquid by agar filtration", ingredients: "1000 g cloudy liquid or purée 0.7-1.8 g agar (0.07-0.18%)", methods: "Strain liquid to remove particles. Bring to simmer, add agar and stir to dissolve. Let cool and freeze. Line a strainer with a cheese cloth or a coffee filter and place the strainer over a bowl. Place the frozen block in the strainer and allow the clear liquid to drain out of the agar network. An agar filtration typically takes 8 hours compared to 2-3 days for a gelatin filtration.", tips:" Circumvent freezing and speed up process by vacuuming the set agar gel, then filter to obtain clear juice in no time."))
    
     recipeList.append(Recipe(title: "Federicoalforno", ingredients: "1000 g cloudy liquid or purée 0.7-1.8 g agar (0.07-0.18%)", methods: "Strain liquid to remove particles. Bring to simmer, add agar and stir to dissolve. Let cool and freeze. Line a strainer with a cheese cloth or a coffee filter and place the strainer over a bowl. Place the frozen block in the strainer and allow the clear liquid to drain out of the agar network. An agar filtration typically takes 8 hours compared to 2-3 days for a gelatin filtration.", tips:" Circumvent freezing and speed up process by vacuuming the set agar gel, then filter to obtain clear juice in no time."))
       return recipeList
    }
    
    
}

struct libro {
    var titolo: String
    var autore: String
    
}

struct libreria {
  var elencoLibri: [libro] = []
    
     func GetElencoLibri() -> [libro]{
        //    Popolo la libreria con 4 libri esempio come base dati fake
      let librouno = libro(titolo: "librouno", autore: "uno")
        
        return [librouno]
        
    }
    
    func count() -> Int {
        return elencoLibri.count
        
    }
    
}


