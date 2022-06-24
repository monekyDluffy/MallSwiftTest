//
//  BaseViewController.swift
//  MallSwiftTest
//
//  Created by yushengliu on 2022/6/18.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.init(hexValue: 0xffffff, alphaValue: 1)
        edgesForExtendedLayout = UIRectEdge.init(rawValue: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
