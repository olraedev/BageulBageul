//
//  SelectAuthFeature.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import ComposableArchitecture
import AuthenticationServices

@Reducer
struct SelectAuthFeature: FeatureType {
    @ObservableState
    struct State: Equatable {
        
    }
    
    enum Action {
        case signInWithAppleButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .signInWithAppleButtonTapped:
                return .none
            }
        }
    }
}
