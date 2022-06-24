//
//  MineViewController.swift
//  MallSwiftTest
//
//  Created by yushengliu on 2022/6/18.
//

import UIKit

class MineViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createLoginButton()
    }
    

    
    func  createLoginButton()
    {
        let  button = UIButton(type:.custom)
        button.setTitle("登陆", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25);
        button.setTitleColor(UIColor.hexColor(0x333333), for: .normal)
        self.view.addSubview(button)

        button.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(100)
            make.center.equalToSuperview()
        }
        
    }
    
    @objc func loginButtonAction()-> Void
    {
        
        print("loginButtonAction")
        
        let loginVC = LoginViewController()
        loginVC.hidesBottomBarWhenPushed = true

        self.navigationController?.pushViewController(loginVC, animated: true)
        
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
