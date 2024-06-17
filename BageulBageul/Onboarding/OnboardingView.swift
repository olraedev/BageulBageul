//
//  OnboardingView.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            Color.backgroundPrimary
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("새싹톡을 사용하면 어디서나\n팀을 모을 수 있습니다")
                    .font(.customTitle1)
                    .multilineTextAlignment(.center)
                    .padding(.top, 64)
                
                Spacer()
                
                Image("onboarding", bundle: nil)
                
                Spacer()
                
                Text("시작하기")
                    .font(.customTitle2)
                    .foregroundStyle(.brandWhite)
                    .wrapToButton(iamge: nil, backgroundColor: .brandGreen) {
                        print("clicked")
                    }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
