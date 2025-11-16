//
//  LoginView.swift
//  MegaBox
//
//  Created by 이예지 on 9/26/25.
//

import SwiftUI

struct LoginView: View {
    @State var viewModel: LoginViewModel
    @AppStorage("userId") private var userId: String = ""
    @AppStorage("userPw") private var userPw: String = ""
   
    var body: some View {
        GeometryReader { geomety in
            VStack {
                topTitle
                    .padding(.bottom, geomety.size.height * 0.16)
                
                mainContents
                    .padding(.bottom, geomety.size.height * 0.03)
                
                posterImage
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
    
    private var topTitle: some View {
            Text("로그인")
                .font(.PretendardSemiBold24)
                .foregroundStyle(Color.black)
    }
    
    private var mainContents: some View {
        VStack(alignment: .center, spacing: 75) {
            textFieldContents
            
            btnContents
        }
    }
    
    private var textFieldContents: some View {
        VStack(alignment: .leading, spacing: 40) {
            VStack(spacing: 4) {
                TextField("아이디", text: $viewModel.model.id)
                    .font(.PretendardMedium16)
                    .textInputAutocapitalization(.never)
                
                Divider()
                    .foregroundStyle(Color.gray02)
            }
            
            VStack(spacing: 4) {
                SecureField("비밀번호", text: $viewModel.model.password)
                    .font(.PretendardMedium16)
                    .textInputAutocapitalization(.never)
                
                Divider()
                    .foregroundStyle(Color.gray02)
            }
        }
    }
    
    private var btnContents: some View {
        VStack {
            Button(action: {
                print("로그인")
                userId = viewModel.model.id
            }) {
                Text("로그인")
                    .font(.PretendardBold18)
                    .foregroundStyle(Color.white)
                    .padding(.vertical, 15)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.purple03)
                    )
            }
            .padding(.bottom, 17)
            
            Button(action: {
                print("회원가입")
            }) {
                Text("회원가입")
                    .font(.PretendardMedium13)
                    .foregroundStyle(Color.gray04)
            }
            .padding(.bottom, 35)
            
            HStack {
                Image(.naver)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Spacer()
                
                Image(.kakao)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Spacer()
                
                Image(.apple)
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .padding(.horizontal, 71)
        }
    }
    
    private var posterImage: some View {
        Image(.umcPoster)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    LoginView(viewModel: LoginViewModel())
}
