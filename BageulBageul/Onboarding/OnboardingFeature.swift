//
//  OnboardingFeature.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import ComposableArchitecture

@Reducer
struct OnboardingFeature: FeatureType {
    @ObservableState
    struct State: Equatable {
        @Presents var destination: Destination.State?
    }
    
    enum Action {
        case startButtonTapped
        case destination(PresentationAction<Destination.Action>)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .startButtonTapped:
                state.destination = .selectAuth(SelectAuthFeature.State())
                return .none
            
            case .destination:
                return .none
            }
        }
    }
}

extension OnboardingFeature {
    @Reducer(state: .equatable)
    enum Destination {
        case selectAuth(SelectAuthFeature)
    }
}
