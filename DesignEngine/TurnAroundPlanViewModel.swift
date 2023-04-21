//
//  TurnAroundPlanView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-21.
//

import SwiftUI

extension TurnAroundPlanView {
    
    final class TurnAroundPlanViewModel: ObservableObject {
        
        private(set) var turnaroundPlan: INTurnAroundPlan
        
        var title: String {
            return turnaroundPlan.title
        }
        
        var placeholderText: String {
            return turnaroundPlan.placeholderText
        }
        
        var tintColor: Color {
            return Color(hex: turnaroundPlan.tintColor)
        }
        
        var events: [INTurnAroundPlan.INTurnAroundEvent] {
            return turnaroundPlan.events
        }
        
        init(withTurnAroundPlan turnaroundPlan: INTurnAroundPlan) {
            self.turnaroundPlan = turnaroundPlan
        }
        
    }
    
}
