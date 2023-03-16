//
//  ViewController.swift
//  CustomUIActivity
//
//  Created by youjie on 2023/3/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /// 使用自定义的UIActivity
    @IBAction func shareAction(_ sender: Any) {
        /// share
        let email = CustomShareActivity(type: UIActivity.ActivityType("com.example.email"), title: "邮件", image: UIImage(named: "share_action_email"))
        let message = CustomShareActivity(type: UIActivity.ActivityType("com.example.message"), title: "信息", image: UIImage(named: "share_action_messenger"))
        let wechat = CustomShareActivity(type: UIActivity.ActivityType("com.example.wechat"), title: "微信", image: UIImage(named: "share_action_wechat"))
        let whatsapp = CustomShareActivity(type: UIActivity.ActivityType("com.example.whatsapp"), title: "WhatsApp", image: UIImage(named: "share_action_whatsApp"))

        /// action
        
        let print = CustomActionActivity(type: UIActivity.ActivityType("com.example.print"), title: "打印", image: UIImage(named: "share_action_print"))
        let save = CustomActionActivity(type: UIActivity.ActivityType("com.example.save"), title: "保存到文件", image: UIImage(named: "share_action_saveTofile"))
        
        let activity = UIActivityViewController.init(activityItems: [], applicationActivities: [email, message, wechat, whatsapp, print, save])
        activity.completionWithItemsHandler = { (activityType, completed , returnedItems, activityError) in
            /// do something
        }
        if UIApplication.shared.applicationState == .active {
            self.present(activity, animated: true, completion: nil)
        }
    }
    
    /// 使用系统的UIActivity
    @IBAction func systemShareAction(_ sender: Any) {
        
        let shareText = String(format: "自定义分享面板")
        let shareItem = [
            shareText
        ] as [Any]
        
        let activity = UIActivityViewController(activityItems: shareItem, applicationActivities: nil)
        /// 屏蔽部分应用
//        activity.excludedActivityTypes = [
//            .print,
//            .addToReadingList,
//            .openInIBooks,
//            .saveToCameraRoll
//        ]
        self.present(activity, animated: true, completion: nil)

    }

}

