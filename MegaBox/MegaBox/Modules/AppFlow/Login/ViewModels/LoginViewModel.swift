//
//  LoginViewModel.swift
//  MegaBox
//
//  Created by 이예지 on 9/28/25.
//

import Foundation

@Observable
class LoginViewModel: ObservableObject {
    
    var model: LoginModel
    
    init() {
        self.model = LoginModel(id: "", password: "")
    }
    
}
