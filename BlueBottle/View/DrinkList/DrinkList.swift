//
//  DrinkList.swift
//  BlueBottle
//
//  Created by 이재훈 on 2020/07/08.
//  Copyright © 2020 Jaehoon. All rights reserved.
//

import SwiftUI

struct DrinkList: View {
    @State var isShowingDetail: Bool = false
    //View에 영향을 주는 변수는 반드시 앞에 @State를 붙인다
    //Bool은 true, false를 관리한다
    
    @State var drink: Drink = Drink.fetchDrinks()[0]
    //값이 존재하지 않을 확률이 조금이라도 있는 타입은 ?을 붙여야 한다
    //Detail이 영향을 받을 것이기 때문에 @State를 붙인다
    
    @State var drinks = Drink.fetchDrinks()
    
    var body: some View {
        ZStack {
            VStack {
                CafeInfoView(drinks: $drinks)
                    .padding(.top, 16)
                //스크롤 메뉴바 최종생성 및 binding 최종연결 "$drinks"
                
                List(drinks) { drink in
                    DrinkRow(drink: drink)
                        .onTapGesture {
                            self.drink = drink
                            withAnimation {
                                self.isShowingDetail = true
                            }
                            //self.:해당 단어 포함되어 있는 가장 큰 범주 찾기
                            //==:equal, =:applying
                            //animation으로 올라오는 속도 제어
                    }
                }
            }
            
            DrinkDetail(isShown: $isShowingDetail, drink: $drink)
                .offset(x: 0, y: isShowingDetail ? 0 : UIScreen.main.bounds.height)
            //offset에서 밑에 대기하는 화면 움직임 정도 조절
            //isShowingDetail이 true면 0 아니면 height
            //[0:x == true:false]
        }
    }
    init() {
        UITableView.appearance().separatorStyle = .none
    }
}

struct DrinkList_Previews: PreviewProvider {
    static var previews: some View {
        DrinkList()
    }
}
