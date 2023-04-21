//
//  TurnAroundEventView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-21.
//

import SwiftUI

struct TurnAroundEventView: View {
    
    @ObservedObject private var viewModel: TurnAroundEventViewModel
    
    private var tintColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Text(viewModel.event.title)
                .bold()
                .font(.title3)
                .lineLimit(1)
                .minimumScaleFactor(0.75)
                .foregroundColor(tintColor)
                .frame(maxWidth: .infinity, alignment: .leading)
            if (viewModel.event.hasBoolInput) {
                Toggle(isOn: $viewModel.event.isFinished) {
                    HStack {
                        Text(viewModel.event.subtitle)
                            .font(.subheadline)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                    }
                }
                .toggleStyle(SwitchToggleStyle(tint: tintColor))
            } else if (viewModel.event.hasDateInput)  {
                if let submissionDate = viewModel.event.submissionDate {
                    DatePicker(
                        selection: Binding(get: {
                            submissionDate
                        }, set: { newValue in
                            viewModel.event.submissionDate = newValue
                        }),
                        displayedComponents: [.date, .hourAndMinute]
                    ) {
                        Text(viewModel.event.subtitle)
                            .font(.subheadline)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                } else {
                    HStack {
                        Text(viewModel.event.subtitle)
                            .font(.subheadline)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Button {
                            viewModel.event.submissionDate = .now
                        } label: {
                            Text("Set")
                                .font(.body)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                                .frame(width: 100.0)
                                .frame(alignment: .leading)
                                .foregroundColor(tintColor)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            } else {
                Text("Hello, World! + \(viewModel.event.id)")
                    .background(tintColor)
            }
        }
    }
    
    init(withEvent event: INTurnAroundPlan.INTurnAroundEvent, andTintColor tintColor: Color) {
        self.viewModel = TurnAroundEventViewModel(withEvent: event)
        self.tintColor = tintColor
    }
    
}

//struct TurnAroundEventView_Previews: PreviewProvider {
//    static var previews: some View {
//        TurnAroundEventView()
//    }
//}
