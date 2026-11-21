//
//  SwiftUIView.swift
//  ReusableUI
//
//  Created by Irfan on 21/11/26.
//

import SwiftUI

public struct PrimaryButton: View {
    
    private let title : String
    private let backgroundColor: Color
    private let cornerRadius: CGFloat
    private let isLoading: Bool
    private let isDisabled: Bool
    private let action: () -> Void
    
    public init(title: String, backgroundColor: Color = .blue, cornerRadius: CGFloat = 12, isLoading: Bool = false, isDisabled: Bool = false, action: @escaping ()->Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.isLoading = isLoading
        self.isDisabled = isDisabled
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if isLoading {
                    ProgressView()
                        .tint(.white)
                    
                } else {
                    Text(title)
                        .font(.headline)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .foregroundStyle(.white)
            .background(backgroundColor)
            .clipShape(
                RoundedRectangle(cornerRadius:cornerRadius)
            )
            .opacity(isDisabled ? 0.5 : 1)
            
        }
        .disabled(isLoading || isDisabled)
        .accessibilityLabel(title)
        .accessibilityAddTraits(isLoading ? [] : .isButton)
    }
}

#Preview {
    VStack(spacing: 20) {
        PrimaryButton(title: "Login") {
            print("Login Tapped")
        }
        
        PrimaryButton(title: "Delete", backgroundColor: .red, cornerRadius:8) {
            print("Delete tapped")
        }
        
        PrimaryButton(title: "Processing", isLoading: true) {}
        
        PrimaryButton(title: "Continue", isDisabled: true) {}
        
        
    }
    .padding()
}
