//
//  TextInputView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import InkTouchHelpers
import SwiftUI

struct TextInputView: View {
    
    private let outerCornerRadius: CGFloat = 10
    
    private let borderWidth: CGFloat = 2
    
    private let outerHorizontalPadding: CGFloat = 15
    
    private let outerVerticalPadding: CGFloat = 5
    
    private var placeholderText: String
    
    private var textBinding: Binding<String>
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.systemBackground
            RoundedRectangle(cornerRadius: outerCornerRadius)
                .foregroundColor(.brandPrimary)
                .padding(.horizontal, outerHorizontalPadding)
                .padding(.vertical, outerVerticalPadding)
            RoundedRectangle(cornerRadius: outerCornerRadius - borderWidth)
                .foregroundColor(.systemBackground)
                .padding(.horizontal, outerHorizontalPadding + borderWidth)
                .padding(.vertical, outerVerticalPadding + borderWidth)
            HStack {
                Spacer(minLength: 2 * outerVerticalPadding)
                TextField(placeholderText, text: textBinding)
                    .foregroundColor(.primary)
                    .padding(.horizontal, outerHorizontalPadding + (2 * borderWidth))
                    .padding(.vertical, outerVerticalPadding + (2 * borderWidth))
                    .multilineTextAlignment(.leading)
                    .autocapitalization(.allCharacters)
                    .autocorrectionDisabled()
                    .keyboardType(.asciiCapable)
                Spacer(minLength: 2 * outerVerticalPadding)
            }
        }
        .frame(height: .largeRowHeight)
    }
    
    init(
        withPlaceholder placeholder: String,
        andText text: Binding<String>
    ){
        placeholderText = placeholder
        textBinding = text
    }
    
}

struct TextInputView_Previews: PreviewProvider {

    private static var mockTest = "Test"

    static var previews: some View {
        Group {
            TextInputView(withPlaceholder: "", andText: .constant(mockTest))
                .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
        }
    }

}


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
