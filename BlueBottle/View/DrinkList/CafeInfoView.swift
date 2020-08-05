//
//  CafeInfoView.swift
//  BlueBottle
//
//  Created by 이재훈 on 2020/07/18.
//  Copyright © 2020 Jaehoon. All rights reserved.
//

import SwiftUI

struct CafeInfoView: View {
    @Binding var drinks: [Drink]
    //Binding으로 CafeInfoView와 DrinkList 연결
    @State var selectedCategory: Drink.Category = .feature
    
    let categories = Drink.Category.allCases
    
    var body: some View {
        VStack {
            HStack {
                Text("California Street")
                    .font(.title)
                
                Image(systemName: "chevron.down")
                    .foregroundColor(.blue)
            }
            
            Text("Mobile Order Available")
                .font(.subheadline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.rawValue) { category in
                        Text(category.rawValue)
                            //Hide Scrollbar -> ScrollView(showsIndicators: false) { }
                            .font(Font.body.smallCaps())
                            .foregroundColor(category == self.selectedCategory ? Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)) : Color(#colorLiteral(red: 0.7087258697, green: 0.7087258697, blue: 0.7087258697, alpha: 1)))
                            .padding(.horizontal, 8)
                            .onTapGesture {
                                let filteredDrinks = Drink.fetchDrinks().filter {
                                    $0.category == category
                                }
                                //"$" -> Drink.fetchDrinks()의 각각을 의미
                                //"$0."==drink.
                                self.drinks = filteredDrinks
                                self.selectedCategory = category
                        }
                    }
                }
            }
        }
        .padding(.all, 12)
    }
}
