//
//  MessageActivity.swift
//  ShareExtensionDemo
//
//  Created by youjie on 2023/3/15.
//

import UIKit

class MessageActivity: UIActivity {

    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
        
    }
    
    override class var activityCategory: UIActivity.Category {
        get {
            return .share
        }
    }
    
    override var activityType: UIActivity.ActivityType? {
        return UIActivity.ActivityType("com.example.message")
    }
    
    override var activityTitle: String? {
        return "信息"
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "share_action_messenger")
    }
    
    override func perform() {
        activityDidFinish(true)
    }
}
