//
//  TextInputView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import SwiftUI

struct InkUIBuilderTextInput: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    private let outerCornerRadius: CGFloat = 10
    
    private let borderWidth: CGFloat = 2
    
    private let outerHorizontalPadding: CGFloat = 15
    
    private let outerVerticalPadding: CGFloat = 5
    
    private var labelText: String
    
    private var placeholderText: String
    
    private var textBinding: Binding<String>
    
    var body: some View {
        
        let backgroundColor: Color = colorScheme == .light ? .white : .black
        
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: outerCornerRadius)
                .foregroundColor(.brandPrimary)
                .padding(.horizontal, outerHorizontalPadding)
                .padding(.vertical, outerVerticalPadding)
            RoundedRectangle(cornerRadius: outerCornerRadius - borderWidth)
                .foregroundColor(backgroundColor)
                .padding(.horizontal, outerHorizontalPadding + borderWidth)
                .padding(.vertical, outerVerticalPadding + borderWidth)
            HStack {
                //                Spacer(minLength: outerHorizontalPadding)
                Text(labelText)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .padding(.leading, outerHorizontalPadding)
                    .frame(width: 100)
                TextField(placeholderText, text: textBinding)
                    .foregroundColor(.primary)
                    .padding(.horizontal, outerHorizontalPadding + (2 * borderWidth))
                    .padding(.vertical, outerVerticalPadding + (2 * borderWidth))
                    .multilineTextAlignment(.trailing)
                    .autocapitalization(.allCharacters)
                    .autocorrectionDisabled()
                    .keyboardType(.asciiCapable)
                Spacer(minLength: outerHorizontalPadding)
            }
        }
        .frame(height: 60.0)
    }
    
    init(
        withLabelText labelText: String,
        andPlaceholder placeholder: String,
        andText text: Binding<String>
    ){
        self.labelText = labelText
        self.placeholderText = placeholder
        self.textBinding = text
    }
    
}

struct InkUIBuilderTextInput_Previews: PreviewProvider {
    
    private static var mockTest = "Test"
    
    static var previews: some View {
        Group {
            InkUIBuilderTextInput(withLabelText: "PNR", andPlaceholder: "Please enter a PNR i.e P3DG45", andText: .constant(""))
                .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
        }
    }
    
}
