//
//  AppDelegate.swift
//  HelloPush
//
//  Created by David Young-chan Kay on 3/9/15.
//  Copyright (c) 2015 David Young-chan Kay. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var soundMaker: SoundMaker?

  func application(application: UIApplication,
      didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
    //    var datastring = NSString(data: deviceToken, encoding: U)
        //println("didRegisterForRemoteNotificationsWithDeviceToken:" + datastring)
        println("didRegisterForRemoteNotificationsWithDeviceToken: %@", deviceToken)
  }

  func application(application: UIApplication,
      didFailToRegisterForRemoteNotificationsWithError error: NSError) {
        //println("didFailToRegisterForRemoteNotificationsWithError: " + error)
        println("didFailToRegisterForRemoteNotificationsWithError: ")

  }

  func application(application: UIApplication,
      didReceiveRemoteNotification userInfo: [NSObject : AnyObject],
      fetchCompletionHandler handler: (UIBackgroundFetchResult) -> Void) {
        println("didReceiveRemoteNotification")

        soundMaker!.play()
        
        handler(UIBackgroundFetchResult.NewData);
  }

  func application(application: UIApplication,
      handleActionWithIdentifier identifier: String?,
      forRemoteNotification userInfo: [NSObject : AnyObject],
      completionHandler completionHandler: () -> Void) {
        println("handleAction forRemoteNotification")
        soundMaker!.play()

        completionHandler();
  }

  func application(application: UIApplication,
      didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
        println("didReceiveRemoteNotification")
        soundMaker!.play()
  }


  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    // Override point for customization after application launch.

    soundMaker = SoundMaker()

    application.registerForRemoteNotifications()

       // Grab the path, make sure to add it to your project!

    return true
  }

  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

