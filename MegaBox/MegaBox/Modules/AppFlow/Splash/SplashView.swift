//
//  SplashView.swift
//  MegaBox
//
//  Created by 이예지 on 9/26/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color.white
                .ignoresSafeArea()
            
            Image(.megaBoxLogo)
        }
    }
}

#Preview {
    SplashView()
}
