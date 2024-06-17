//
//  BageulBageulApp.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/8/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct BageulBageulApp: App {
    var body: some Scene {
        WindowGroup {
            OnboardingView(store: Store(initialState: OnboardingFeature.State(), reducer: {
                OnboardingFeature()
            }))
        }
    }
}
