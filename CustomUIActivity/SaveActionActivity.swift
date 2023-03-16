//
//  SaveActionActivity.swift
//  ShareExtensionDemo
//
//  Created by youjie on 2023/3/15.
//

import UIKit

class SaveActionActivity: UIActivity {

    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
    }
    
    override class var activityCategory: UIActivity.Category {
        get {
            return .action
        }
    }
    
    override var activityType: UIActivity.ActivityType? {
        return UIActivity.ActivityType("com.example.save")
    }
    
    override var activityTitle: String? {
        return "保存到文件"
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "share_action_saveTofile")
    }
    
    override func perform() {
        activityDidFinish(true)
    }
}
