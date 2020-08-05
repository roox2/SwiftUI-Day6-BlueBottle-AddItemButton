//
//  DrinkRow.swift
//  BlueBottle
//
//  Created by 이재훈 on 2020/07/08.
//  Copyright © 2020 Jaehoon. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    let drink: Drink
    
    var body: some View {
        Image(drink.imageURL)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                VStack {
                    Text(drink.name)
                        .font(.headline)
                        .padding(.vertical, 4)
                    
                    Text(drink.subtitle)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                        .padding(.vertical, 4)
                    
                    Spacer()
                }
                .padding(20))
    }
    
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(drink: Drink.fetchDrinks()[0])
        //코딩에서는 순서가 0부터 시작함(첫번째 array를 불러옴)
    }
}
