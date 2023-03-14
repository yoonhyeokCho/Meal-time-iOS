//
//  RestaurantViewModel.swift
//  Meal-time
//
//  Created by yoonhyeok on 2023/03/14.
//

import Foundation

class RestaurantViewModel: ObservableObject{
    func fetchData(){
        RestaurantParser.fetchData()
    }
}
