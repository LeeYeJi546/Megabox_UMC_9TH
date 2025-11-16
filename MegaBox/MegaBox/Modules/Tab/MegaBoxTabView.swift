//
//  MegaBoxTabView.swift
//  MegaBox
//
//  Created by 이예지 on 9/29/25.
//

import SwiftUI

struct MegaBoxTabView: View {
    var body: some View {
        TabView {
            Tab("홈", image: "home") {
                HomeView()
            }
            
            Tab("바로 예매", image: "reservationNow") {
                ReservationView()
            }
            
            Tab("모바일 오더", image: "order") {
                OrderView()
            }
            
            Tab("마이 페이지", image: "myPage") {
                MyPageView()
            }
        }
        .tint(Color.black)
    }
}

#Preview {
    MegaBoxTabView()
}
