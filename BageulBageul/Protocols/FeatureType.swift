//
//  FeatureType.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import ComposableArchitecture

protocol FeatureType {
    associatedtype State: Equatable
    associatedtype Action
}
