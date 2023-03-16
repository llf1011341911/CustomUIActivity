//
//  PrintActivity.swift
//  ShareExtensionDemo
//
//  Created by youjie on 2023/3/15.
//

import UIKit

class PrintActionActivity: UIActivity {

    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
    }
    
    override class var activityCategory: UIActivity.Category {
        get {
            return .action
        }
    }
    
    override var activityType: UIActivity.ActivityType? {
        return UIActivity.ActivityType("com.example.print")
    }
    
    override var activityTitle: String? {
        return "打印"
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "share_action_print")
    }
    
    override func perform() {
        activityDidFinish(true)
    }
}
