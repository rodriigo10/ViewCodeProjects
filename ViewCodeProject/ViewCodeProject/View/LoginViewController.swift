
import UIKit
import SnapKit

class LoginViewController: UIViewController {

    var nameLabelEmail: UILabel = {
        let nameLabelEmail = UILabel(frame: .zero)
        nameLabelEmail.text = "Email or Username:"
        nameLabelEmail.textColor = .black
        nameLabelEmail.textAlignment = .left
        return nameLabelEmail
    }()
    
    var textFieldEmail: UITextField = {
        let textFieldEmail = UITextField(frame: .zero)
        textFieldEmail.placeholder = " Insert your username"
        textFieldEmail.textColor = .black
        textFieldEmail.textAlignment = .left
        textFieldEmail.layer.borderWidth = 0.5
        textFieldEmail.layer.cornerRadius = 3
        return textFieldEmail
    }()
    
    var passwordLabel: UILabel = {
        let passwordLabel = UILabel(frame: .zero)
        passwordLabel.text = "Password:"
        passwordLabel.textColor = .black
        passwordLabel.textAlignment = .left
        return passwordLabel
    }()
    
    var passwordTextField: UITextField = {
        let passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = " Insert your password"
        passwordTextField.textColor = .black
        passwordTextField.layer.borderWidth = 0.5
        passwordTextField.layer.cornerRadius = 3
        passwordTextField.isSecureTextEntry = true
        passwordTextField.keyboardType = .numberPad
        return passwordTextField
    }()

    var loginBtn: UIButton = {
        let loginBtn = UIButton(frame: .zero)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.layer.cornerRadius = 3
        loginBtn.backgroundColor = .systemRed
        loginBtn.layer.borderWidth = 0.3
        loginBtn.addTarget(self, action: #selector(button), for: .touchUpInside)
        return loginBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubViews()
        addConstraints()
        print("app ja iniciou")
    }
    
    func addSubViews(){
        view.addSubview(nameLabelEmail)
        view.addSubview(textFieldEmail)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(loginBtn)
    }
    
    func addConstraints(){
        nameLabelEmail.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        
        textFieldEmail.snp.makeConstraints { make in
            make.top.equalTo(nameLabelEmail.snp.bottom).offset(7)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(textFieldEmail.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(7)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        loginBtn.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(80)
            make.height.equalTo(40)
        }
    }
    
    @objc func button(sender: UIButton!) {
        let registerTest = RegisterViewController()
        
        self.navigationController?.pushViewController(registerTest, animated: true)
    }
}
