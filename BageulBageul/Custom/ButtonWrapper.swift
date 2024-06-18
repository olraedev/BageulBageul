//
//  CustomButton.swift
//  BageulBageul
//
//  Created by SangRae Kim on 6/17/24.
//

import SwiftUI

private struct ButtonWrapper: ViewModifier {
    
    let image: String?
    let foregroundColor: Color
    let backgroundColor: Color
    let action: () -> Void
    
    func body(content: Content) -> some View {
        Button(action: action, label: {
            HStack(alignment: .center, spacing: 5) {
                Image(systemName: image ?? "")
                    .font(.customTitle2)
                
                content
                    .font(.customTitle2)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 44)
        })
        .frame(maxWidth: .infinity)
        .frame(height: 44, alignment: .center)
        .background(backgroundColor)
        .foregroundStyle(foregroundColor)
        .clipShape(.rect(cornerRadius: 8))
        .padding(.horizontal)
    }
}

extension View {
    func wrapToButton(image: String?, foregroundColor: Color, backgroundColor: Color, action: @escaping () -> Void) -> some View {
        modifier(ButtonWrapper(image: image, foregroundColor: foregroundColor, backgroundColor: backgroundColor, action: action))
    }
}
