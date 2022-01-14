//
//  AppDelegate.swift
//  DeepLink2
//
//  Created by paige on 2022/01/14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // When application is dead or your app is not using UIWindow 
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        // deeplink2://customerdetail?id=
        print("handling url scheme on application")
        let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let host = urlComponents?.host ?? ""
        print(host)
        if host == "customerdetail" {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "CustomMessageVC") as? CustomMessageVC
//            viewController?.customerId = urlComponents?.queryItems?.first?.value // ?id=""
            let items = urlComponents?.queryItems ?? []
            for item in items {
                if item.name == "id" {
                    viewController?.customerId = item.value
                }
            }
            window?.rootViewController = viewController
        }
        return true
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

