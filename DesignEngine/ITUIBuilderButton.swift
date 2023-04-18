//
//  ITUIBuilderButton.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-17.
//

import SwiftUI

struct ITUIBuilderButton: View {
    
    private let outerCornerRadius: CGFloat = 10
        
    private let outerHorizontalPadding: CGFloat = 15
    
    private let outerVerticalPadding: CGFloat = 15
    
    var title: String
    var backgroundColor: Color
    var action: () -> Void
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.systemBackground
            RoundedRectangle(cornerRadius: outerCornerRadius)
                .foregroundColor(backgroundColor)
                .padding(.horizontal, outerHorizontalPadding)
                .padding(.vertical, outerVerticalPadding)
            Button {
                action()
            } label: {
                Text(title)
                    .foregroundColor(.white)
            }
        }
        .frame(height: 80)
    }
    
}

struct ITUIBuilderButton_Previews: PreviewProvider {
    static var previews: some View {
        ITUIBuilderButton(title: "", backgroundColor: .red, action: {})
            .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
    }
}
