//
//  CustomButton.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import SwiftUI

private struct ButtonWrapper: ViewModifier {
    
    let image: String?
    let backgroundColor: Color
    let action: () -> Void
    
    func body(content: Content) -> some View {
        Button(action: action, label: {
            HStack {
                Image(systemName: image ?? "")
                content
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .padding()
            }
        })
        .frame(maxWidth: .infinity)
        .frame(height: 44)
        .background(Color.brandGreen)
        .clipShape(.rect(cornerRadius: 8))
        .padding()
    }
}

extension View {
    func wrapToButton(iamge: String?, backgroundColor: Color, action: @escaping () -> Void) -> some View {
        modifier(ButtonWrapper(image: iamge, backgroundColor: backgroundColor, action: action))
    }
}
