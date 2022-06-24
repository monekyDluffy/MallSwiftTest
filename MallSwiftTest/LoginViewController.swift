//
//  LoginViewController.swift
//  MallSwiftTest
//
//  Created by yushengliu on 2022/6/18.
//

import UIKit
import SnapKit

protocol ValidatesPhoneNumber{
    func validatePhoneNumber(_ phoneNumber: String)-> Bool
}


protocol ValidatePassword{
    func validatePassword(_ password: String)-> Bool
}


extension ValidatePassword
{
    func validatePhoneNumber(_ phoneNumber: String)-> Bool{
        if phoneNumber.count != 11
        {
            return false
        }
        return true
    }
}


extension ValidatePassword {
    func validatePassword(_ password: String)-> Bool
    {
        if password.count < 6 || password.count > 12
        {
            return false
        }
        return true
        
    }
}


class LoginViewController: BaseViewController,ValidatePassword,ValidatesPhoneNumber {

    var  phonetextfield: UITextField!
    var  passwordTextField :UITextField!
//    var  temppasstextField :UITextField

    override func viewDidLoad() {
        super.viewDidLoad()
        
        edgesForExtendedLayout = UIRectEdge.init(rawValue: 0)
       
        let loginView = UIImageView(image: UIImage(named: "logo"))
        view.addSubview(loginView)
        loginView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.centerX.equalToSuperview()
        }
        
        
        
        let phoneiconView = UIImageView(image: UIImage(named: "icon_phone"))
        
        phonetextfield = UITextField()
        phonetextfield.leftView = phoneiconView
        phonetextfield.leftViewMode = .always
        phonetextfield.layer.borderColor = UIColor.hexColor(0x333333).cgColor
        phonetextfield.placeholder = "请输入手机号"
        phonetextfield.layer.borderWidth = 1
        phonetextfield.layer.cornerRadius = 5
        phonetextfield.layer.masksToBounds = true
        
        
        
        view.addSubview(phonetextfield)
        phonetextfield.snp.makeConstraints { make in
            make.top.equalTo(loginView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
        }
//
        
        
        
        let icon_pwdiconView = UIImageView(image: UIImage(named: "icon_pwd"))
        passwordTextField = UITextField()
        passwordTextField.leftView = icon_pwdiconView
        passwordTextField.leftViewMode = .always
        passwordTextField.layer.borderColor = UIColor.hexColor(0x333333).cgColor
        passwordTextField.placeholder = "请输入密码"
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.layer.masksToBounds = true
        passwordTextField.isSecureTextEntry = true
        
        self.view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(phonetextfield.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
        }

        
        
        let  loginbutton = UIButton(type: .custom)
        loginbutton .setTitle("登录", for: .normal)
        loginbutton.setTitleColor(.white, for: .normal)
        loginbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginbutton.setBackgroundImage(UIColor.hexColor(0xf8892e).toImage(), for: .normal)
        loginbutton.layer.cornerRadius = 5
        loginbutton.layer.masksToBounds = true
        view.addSubview(loginbutton)
        loginbutton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
        }
        loginbutton .addTarget(self, action: #selector(didClickLoginButton), for: .touchUpInside)
        
        
    }
    
   @objc func didClickLoginButton()
    {
        print("didClickLoginButton")
        
        if validatePhoneNumber(phonetextfield.text ?? "") && validatePassword(passwordTextField.text ?? "")
        {
            return
        }
        else
        {
            showToast()
        }
        
        
    }
    
    func showToast()
    {
        let alertVC = UIAlertController(title: "提示", message: "用户名或则密码错误", preferredStyle: .alert)
        
        present(alertVC, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            alertVC.dismiss(animated: true)
        }
    }
}
