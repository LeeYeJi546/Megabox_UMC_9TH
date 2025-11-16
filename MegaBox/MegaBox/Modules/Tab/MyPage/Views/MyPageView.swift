//
//  UserInfoView.swift
//  MegaBox
//
//  Created by 이예지 on 9/28/25.
//

import SwiftUI

struct MyPageView: View {
    @State private var router = NavigationRouter()
    
    @AppStorage("userId") private var userId: String = ""
    @AppStorage("userNickname") private var userNickname: String = ""
    
    var body: some View {
        NavigationStack(path: $router.path) {
            GeometryReader { geometry in
                VStack(spacing: 33) {
                    topContents
                    
                    middleContents
                    
                    bottomContents
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.top, geometry.size.height * 0.1)
            }
        }
    }
    
    private var topContents: some View {
        VStack(spacing: 15) {
            HStack(alignment: .top) {
                userInfo
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("회원정보")
                        .font(.PretendardSemiBold14)
                        .foregroundStyle(Color.white)
                        .padding(.horizontal, 11.5)
                        .padding(.vertical, 4)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundStyle(Color.gray07)
                        )
                }
            }
            Button(action: {
                
            }) {
                HStack(alignment: .center, spacing: 8) {
                    Text("클럽 멤버십")
                        .font(.PretendardSemiBold16)
                        .padding(.leading, 8)
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 5, height: 10)
                    
                    Spacer()
                }
                .foregroundStyle(Color.white)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.gradient01, Color.gradient02, Color.gradient03]), startPoint: .leading, endPoint: .trailing)
                        )
                )
            }
        }
    }
    
    private var userInfo: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 5) {
                Text(userNickname.isEmpty ? "\(userId)님" : "\(userNickname)님")
                    .font(.PretendardBold24)
                
                Text("WELCOME")
                    .font(.PretendardMedium14)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundStyle(Color.tag)
                    )
            }
            HStack {
                Text("멤버십 포인트")
                    .font(.PretendardSemiBold14)
                    .foregroundStyle(Color.gray04)
                
                Text("120P")
                    .font(.PretendardMedium14)
                    .foregroundStyle(Color.black)
            }
        }
    }
    
    private var middleContents: some View {
        HStack(alignment: .center, spacing: 43) {
            VStack(alignment: .center, spacing: 9) {
                Text("쿠폰")
                    .font(.PretendardSemiBold16)
                    .foregroundStyle(Color.gray02)
                    .frame(width: 73)
                
                Text("2")
                    .font(.PretendardSemiBold18)
                    .foregroundStyle(Color.black)
            }
                        
            Divider()
                .frame(height: 31)
                .foregroundStyle(Color.gray02)
                        
            VStack(alignment: .center, spacing: 9) {
                Text("스토어 교환권")
                    .font(.PretendardSemiBold16)
                    .foregroundStyle(Color.gray02)
                    .frame(width: 73)
                
                Text("0")
                    .font(.PretendardSemiBold18)
                    .foregroundStyle(Color.black)
            }
            
            Divider()
                .frame(height: 31)
                .foregroundStyle(Color.gray02)
                        
            VStack(alignment: .center, spacing: 9) {
                Text("모바일 티켓")
                    .font(.PretendardSemiBold16)
                    .foregroundStyle(Color.gray02)
                    .frame(width: 73)
                
                Text("0")
                    .font(.PretendardSemiBold18)
                    .foregroundStyle(Color.black)
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 17)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.clear)
                .stroke(Color.gray02, lineWidth: 1)
        )
    }
    
    private var bottomContents: some View {
        HStack {
            VStack {
                Image(.film)
                    .resizable()
                    .frame(width: 36, height: 36)
                
                Text("영화별예매")
                    .font(.PretendardMedium16)
                    .foregroundStyle(Color.black)
            }
            
            Spacer()
            
            VStack {
                Image(.theater)
                    .resizable()
                    .frame(width: 36, height: 36)
                
                Text("극장별예매")
                    .font(.PretendardMedium16)
                    .foregroundStyle(Color.black)
            }
            
            Spacer()
            
            VStack {
                Image(.specialHall)
                    .resizable()
                    .frame(width: 36, height: 36)
                
                Text("특별관예매")
                    .font(.PretendardMedium16)
                    .foregroundStyle(Color.black)
            }
            
            Spacer()
            
            VStack {
                Image(.mobileOrder)
                    .resizable()
                    .frame(width: 36, height: 36)
                
                Text("모바일오더")
                    .font(.PretendardMedium16)
                    .foregroundStyle(Color.black)
            }
        }
    }
}

#Preview {
    MyPageView()
}
