//
//  AppDelegate.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-19.
//

import InkTouchHelpers
import UserNotifications
import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        configureLocalNotifications()
        return true
    }
    
    /// Configure local notifications permission and its associated `UserDefaults` key.
    private func configureLocalNotifications() {
        ITLocalNotificationsManager.notificationCenter.delegate = self
        ITLocalNotificationsManager.removeAllRequests()
        Task(priority: .userInitiated) {
            do {
                let result = try await ITLocalNotificationsManager.requestPermission()
                print("Authorisation Status: \(result).")
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
    
}


extension AppDelegate: UNUserNotificationCenterDelegate {
    
    /// Asks the delegate how to handle a notification that arrived while the app was running in the foreground.
    /// - Parameters:
    ///   - center: The shared user notification center object that received the notification.
    ///   - notification: The notification that is about to be delivered. Use the information in this object to determine an appropriate course of action.
    /// - Returns: The option for notifying the user.
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification
    ) async -> UNNotificationPresentationOptions {
        return ITLocalNotificationsManager.presentationOptions
    }
    
}
