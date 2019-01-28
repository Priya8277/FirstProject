//
//  ViewController.swift
//  LocalNotificationApp
//
//  Created by Priya on 1/28/19.
//  Copyright © 2019 Priya. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class ViewController: UIViewController {

    var badgeCount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       
    }
        // Do any additional setup after loading the view, typically from a nib.
    @IBAction func sendnotify(_ sender: Any) {
         getnotification()
    }
    
    func getnotification()  {
        
        //creating the notification content
        let content = UNMutableNotificationContent()
        
        //adding title, subtitle, body and badge
        content.title = "Hey this is Simplified iOS"
        content.subtitle = "iOS Development is fun"
        content.body = "We are learning about iOS Local Notification"
        content.badge = 1
        
        //getting the notification trigger
        //it will be called after 5 seconds
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
        
        //getting the notification request
        let request = UNNotificationRequest(identifier: "SimplifiedIOSNotification", content: content, trigger: trigger)
        
        //adding the notification to notification center
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    


}

