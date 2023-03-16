//
//  CustomActionActivity.swift
//  CustomUIActivity
//
//  Created by youjie on 2023/3/16.
//

import UIKit

class CustomActionActivity: UIActivity {
    
    var type: UIActivity.ActivityType?
    var title: String?
    var image: UIImage?
    
    init(type: UIActivity.ActivityType?,
         title: String?,
         image: UIImage?) {
        self.type = type
        self.title = title
        self.image = image
    }
    
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
    }
    
    override class var activityCategory: UIActivity.Category {
        get {
            return .action
        }
    }
    
    override var activityType: UIActivity.ActivityType? {
        return self.type
    }
    
    override var activityTitle: String? {
        return self.title
    }
    
    override var activityImage: UIImage? {
        return self.image
    }
    
    override func perform() {
        activityDidFinish(true)
    }
}
