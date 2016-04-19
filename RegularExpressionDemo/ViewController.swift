//
//  ViewController.swift
//  RegularExpressionDemo
//
//  Created by ying on 16/4/19.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
    
    /*
    //用户名验证（允许使用小写字母、数字、下滑线、横杠，一共3~16个字符）
    let userName = "^[a-z0-9_-]{3,16}$"
    
    //Email验证
    ^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$
    
    //手机号码验证
    ^1[0-9]{10}$
    
    //URL验证
    ^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$
    
    //IP地址验证
    ^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$
    
    //html标签验证
    ^<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)$
 */

    @IBOutlet weak var inputMail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func verifyEmailAddress(sender: UIButton) {
        let matcher = RegularExpressionTool(mailPattern)
        if let email = inputMail.text
        {
            if matcher.match(email)
            {
                print("邮箱地址格式正确")
            }
            else
            {
                print("邮箱地址格式错误")
            }
        }
    }

}

