//
//  SwiftUIView.swift
//  ReusableUI
//
//  Created by Irfan on 21/11/26.
//

import SwiftUI

public struct CustomTextField: View {
    private let title: String
    private let placeholder: String
    @Binding private var text: String
    private let isSecure: Bool
    private let errorMessage: String?
    
    public init(title: String, placeholder: String, text: Binding<String>, isSecure:Bool = false,errorMessage: String? = nil) {
        self.title = title
        self.placeholder = placeholder
        self._text = text
        self.isSecure = isSecure
        self.errorMessage = errorMessage
    }
    
    
    public var body: some View {
        VStack(alignment: .leading,spacing:8) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
            
            
            Group {
                if isSecure {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            .padding(12)
            .background(Color(.secondarySystemBackground))
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(
                        errorMessage == nil ? .gray.opacity(0.3) : .red,
                        lineWidth:1
                    )
            }
            
            
            if let errorMessage {
                Text(errorMessage)
                    .font(.caption)
                    .foregroundStyle(.red)
            }
        }
    }
}
