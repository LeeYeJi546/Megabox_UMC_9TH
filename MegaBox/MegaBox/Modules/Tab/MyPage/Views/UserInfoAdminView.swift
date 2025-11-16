//
//  UserInfoAdminView.swift
//  MegaBox
//
//  Created by 이예지 on 9/28/25.
//

import SwiftUI

struct UserInfoAdminView: View {
    @Environment(\.dismiss) var dismiss
    
    @AppStorage("userId") private var userId: String = ""
    @AppStorage("userNickname") private var userNickname: String = ""
    @State private var nickName: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 26) {
                navigationBar
                
                textContents
                    .padding(.top, geometry.size.height * 0.05)
                
                userInfoContents
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
    
    private var navigationBar: some View {
        GeometryReader { geometry in
            HStack {
                Image(.leftBtn)
                
                Text("회원정보 관리")
                    .font(.PretendardMedium16)
                    .padding(.leading, geometry.size.width * 0.3)
                
                Spacer()
            }
        }
        .frame(height: 44)
    }
    
    private var textContents: some View {
        Text("기본정보")
            .font(.PretendardBold18)
            .foregroundStyle(Color.black)
    }
    
    private var userInfoContents: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 4) {
                Text("\(userId)")
                    .font(.PretendardMedium18)
                
                Divider()
            }
            
            VStack(spacing: 4) {
                HStack {
                    TextField("\(userId)", text: $nickName)
                        .font(.PretendardMedium18)
                        .textInputAutocapitalization(.never)
                    
                    Spacer()
                    
                    Button(action: {
                        userNickname = nickName
                    }) {
                        Text("변경")
                            .font(.PretendardMedium10)
                            .foregroundStyle(Color.gray03)
                            .frame(width: 38, height: 20)
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color.clear)
                                    .stroke(Color.gray03, lineWidth: 1)
                            )
                    }
                    
                }
                Divider()
            }
        }
    }
}

#Preview {
    UserInfoAdminView()
}
