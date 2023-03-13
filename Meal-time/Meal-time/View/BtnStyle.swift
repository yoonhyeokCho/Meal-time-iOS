//
//  BtnStyle.swift
//  Meal-time
//
//  Created by yoonhyeok on 2023/03/13.
//

import SwiftUI

enum ButtonType{
    case selectBtn
    case clickBtn
}

struct BtnStyle : ButtonStyle{
    var type : ButtonType
    func makeBody(configuration: Configuration) -> some View {
        
        if(self.type == .selectBtn){
            configuration
                .label
                .padding()
                .frame(width: 70, height: 30)
                .background(Color("SelectBtnColor"))
                .cornerRadius(20)
        }else{
            configuration
                .label
                .padding()
                .frame(width: 140, height: 50)
                .background(Color("ClickBtnColor"))
                .cornerRadius(10)
        }

    }
}

struct BtnStyle_Previews: PreviewProvider{
    static var previews: some View{
        Button(action: {
            print("click")
        }, label: {
            Text("한식")
        }).buttonStyle(BtnStyle(type: .clickBtn))
    }
}
