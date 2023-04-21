//
//  TurnAroundEventViewModel.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-21.
//

import SwiftUI

extension TurnAroundEventView {
    
    final class TurnAroundEventViewModel: ObservableObject {
        
        @Published var event: INTurnAroundPlan.INTurnAroundEvent
        
        init(withEvent event: INTurnAroundPlan.INTurnAroundEvent) {
            self.event = event
        }
        
    }
    
}
