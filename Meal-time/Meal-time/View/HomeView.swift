//
//  HomeView.swift
//  Meal-time
//
//  Created by yoonhyeok on 2023/03/13.
//

import SwiftUI

struct HomeView: View{
    var body: some View{
        ZStack{
            Color("AppColor").edgesIgnoringSafeArea(.all)
            VStack{
                Text("Meal Time")
                    .font(.custom("jua",size: 40))
                    .foregroundColor(Color("AppNameColor"))
                    .frame(width: 210, height: 88, alignment: .center)
                    .padding(.bottom,40)
                    
                Text("          카테고리 선택 후 \n랜덤 돌리기 버튼을 클릭하세요")
                    .font(.system(size: 13))
                HStack{
                    Button(action: {
                        print("한식 클릭")
                    }, label:{
                        Text("한식")
                    }).buttonStyle(BtnStyle(type: .selectBtn))
                    Button(action: {
                        print("중식 클릭")
                    }, label:{
                        Text("중식")
                    }).buttonStyle(BtnStyle(type: .selectBtn))
                    Button(action: {
                        print("일식 클릭")
                    }, label:{
                        Text("일식")
                    }).buttonStyle(BtnStyle(type: .selectBtn))
                    Button(action: {
                        print("양식 클릭")
                    }, label:{
                        Text("양식")
                    }).buttonStyle(BtnStyle(type: .selectBtn))
                }.padding(50)
                
                Button(action: {
                    print("버튼 클릭")
                }, label: {
                    Text("랜덤 돌리기")
                }).buttonStyle(BtnStyle(type: .clickBtn))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider{
    static var previews: some View {
        HomeView()
    }
}
