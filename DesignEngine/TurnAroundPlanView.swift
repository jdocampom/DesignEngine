//
//  TurnAroundPlanView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-21.
//

import SwiftUI

struct TurnAroundPlanView: View {
    
    @ObservedObject private var viewModel: TurnAroundPlanViewModel
    
    var body: some View {
        NavigationView {
            if viewModel.events.isEmpty {
                Text(viewModel.placeholderText)
                    .bold()
                    .font(.title3)
                    .navigationTitle(viewModel.title)
                    .navigationBarTitleDisplayMode(.inline)
            } else {
                HStack {
                    Text("A")
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                    HStack {
                        Text("B")
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            
                        Text("C")
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                    }
                }
//                List(viewModel.events, id: \.id) { event in
//                    TurnAroundEventView(withEvent: event, andTintColor: viewModel.tintColor)
//                }
                .navigationTitle(viewModel.title)
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
    
    init(withTurnAroundPlan turnAroundPlan: INTurnAroundPlan) {
        self.viewModel = TurnAroundPlanViewModel(withTurnAroundPlan: turnAroundPlan)
    }
    
}

//struct TurnAroundPlanView_Previews: PreviewProvider {
//    static var previews: some View {
//        TurnAroundPlanView()
//    }
//}
