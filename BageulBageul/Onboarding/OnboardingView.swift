//
//  OnboardingView.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import SwiftUI
import ComposableArchitecture

struct OnboardingView: View {
    
    @Perception.Bindable var store: StoreOf<OnboardingFeature>
    
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
                    .wrapToButton(image: nil, foregroundColor: .brandWhite, backgroundColor: .brandGreen) {
                        store.send(.startButtonTapped)
                    }
                    .padding(.bottom, 24)
            }
        }
        .sheet(item: $store.scope(state: \.destination?.selectAuth, action: \.destination.selectAuth)) { selectAuthStore in
            SelectAuthView(store: selectAuthStore)
                .presentationDetents([.height(290)])
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    OnboardingView(store: Store(initialState: OnboardingFeature.State(), reducer: {
        OnboardingFeature()
    }))
}
