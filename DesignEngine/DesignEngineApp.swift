//
//  DesignEngineApp.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import InkTouchHelpers
import UserNotifications
import SwiftUI

@main
struct DesignEngineApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    let plan: INTurnAroundPlan = Bundle.main.decodeJSON("turnaround_plan_model.json")
    
    var body: some Scene {
        WindowGroup {
//            TurnAroundPlanView(withTurnAroundPlan: plan)
            ContentView()
        }
    }
    
}
