//
//  SelectAuthView.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import SwiftUI
import ComposableArchitecture

struct SelectAuthView: View {
    
    @Perception.Bindable var store: StoreOf<SelectAuthFeature>
    
    var body: some View {
        WithPerceptionTracking {
            VStack(spacing: 16) {
                Spacer()
                
                Text("Apple로 계속하기")
                    .wrapToButton(image: "apple.logo", foregroundColor: .brandWhite, backgroundColor: .brandBlack) {
                        store.send(.signInWithAppleButtonTapped)
                    }
                
                Text("카카오톡으로 계속하기")
                    .wrapToButton(image: "message.fill", foregroundColor: .brandBlack, backgroundColor: .kakaoYellow) {
                        
                    }
                
                Text("이메일로 계속하기")
                    .wrapToButton(image: "envelope.fill", foregroundColor: .brandWhite, backgroundColor: .brandGreen) {
                        
                    }
                
                HStack(alignment: .center, spacing: 5) {
                    Text("또는")
                        .font(.customTitle2)
                    
                    Button {
                        
                    } label: {
                        Text("새롭게 회원가입 하기")
                            .font(.customTitle2)
                            .foregroundStyle(.brandGreen)
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SelectAuthView(store: Store(initialState: SelectAuthFeature.State(), reducer: {
        SelectAuthFeature()
    }))
}
