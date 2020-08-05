//
//  Drink.swift
//  BlueBottle
//
//  Created by 이재훈 on 2020/07/07.
//  Copyright © 2020 Jaehoon. All rights reserved.
//

import Foundation

struct Drink: Identifiable {
    //struct: 데이터를 저장하기 위한 함수
    enum Category: String, CaseIterable {
        case feature = "Featured"
        case tip = "Tip"
        case toShare = "To Share"
        case espresso = "Espresso"
        case coldbrew = "Cold Brew"
        case teaAndMore = "Tea and More"
    }
    // enum: 분류하기 위한 함수
    
    var id = UUID()
    
    let name: String
    let subtitle: String
    let imageURL: String
    let discription: String
    let preparation: String
    let calories: String
    let price: String
    
    let category: Category
    
    var available = true
    
    static func fetchDrinks() -> [Drink] {
        //input() -> output[array]
        //static func: 주로 많이 쓰이는 함수
        return [
            Drink(name: "Cappuccino", subtitle: "Espresso balanced with a short pour of velvety steamed milk; sometimes called a “flat white”", imageURL: "BlueBottle.Cappuccino", discription: "Our cappuccino is made in the modern style, balancing our full-bodied espresso with velvety steamed milk-not the stiff foam cap of yore. In specialty coffee circles this newer style is sometimes called a “flat white.” But we consider it the new cappuccino standard.", preparation: "Espresso", calories: "45 - 140", price: "5", category: .espresso),
            
            Drink(name: "Caffè Latte", subtitle: "Espresso sweetened with a long pure of steamed milk", imageURL: "BlueBottle.CaffeLatte", discription: "One of our most popular drinks, our latte turns our assertive, chocolatey Hayes Valley Espresso velvety-sweet with a long pour of densely steamed milk.", preparation: "Espresso", calories: "100 - 230", price: "5.25", category: .espresso),
            
            Drink(name: "Gibraltar", subtitle: "Espresso topped off with steamed milk-our version of a cortado", imageURL: "BlueBottle.Gibraltar", discription: "A Blue Bottle original, our Gibraltar is named for the beveled glass in which it’s served. An espresso topped off with steamed milk, our version of a Spanish cortado is built for immediate quaffing.", preparation: "Espresso", calories: "40 - 80", price: "4.25", category: .espresso, available: false),
            
            Drink(name: "Caffè Mocha", subtitle: "Espresso with steamed milk and chocolate ganache", imageURL: "BlueBottle.CaffeMocha", discription: "The tradition of combining coffee, coffee, chocolate, and milk or cream dates back to eighteenth-century Turin’s Caffè al Bicerin. We source our chocolate from local purveyors, a different one in each city.", preparation: "Espresso", calories: "210 - 360", price: "6.25", category: .espresso),
            
            Drink(name: "Shakerato", subtitle: "Espresso, milk, vanilla, and cane sugar hand-shaken over ice until chilled and frothy", imageURL: "BlueBottle.Shakerato", discription: "A spin on a classic Italian iced-coffee treat, our seasonal shakerato contains espresso and milk lightly sweetened with earthy-sweet muscovado sugar, hand-shaken over ice until chilled and frothy.", preparation: "Espresso", calories: "60 - 160", price: "6.50", category: .espresso),
            
            Drink(name: "Americano", subtitle: "Espresso pulled over hot water", imageURL: "BlueBottle.Americano", discription: "Similar in strength to a pour over, our Americano also boasts the rich flavor of our bold, ristretto-style espresso.", preparation: "Espresso", calories: "0 - 70", price: "3.50", category: .espresso),
            
            Drink(name: "New Orleans-Style Iced Coffee", subtitle: "With milk, cane sugar, and roasted chicory", imageURL: "BlueBottle.NewOrleans", discription: "New Orleans-style Iced Coffee is a sweet, creamy, decadent iced coffee that’s cold-brewed with roasted chicory, then cut with your choice of milk and cane sugar.", preparation: "Cold Brew", calories: "60 -120", price: "5", category: .feature),
            
            Drink(name: "Single Origin Cold Brew Can", subtitle: "A sippable pure iced coffee from Colombia", imageURL: "BlueBottle.ColdBrewCan", discription: "This Colombia single origin forms the backbone of our cafes’ espresso. When cold-brewed over many hours, this sippable coffee shines alone.", preparation: "", calories: "0", price: "4", category: .coldbrew)
        ]
    }
    
    static let advise: String = "Please be advised our food and drinks may contain allergens because we use shared equipment to store, prepare, and serve them. 2,000 calories a day is used for general nutrition advice, but calorie needs vary."
}
