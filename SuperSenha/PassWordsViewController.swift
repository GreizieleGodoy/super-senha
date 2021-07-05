//
//  PassWordsViewController.swift
//  SuperSenha
//
//  Created by Greiziele Godoy on 25/05/21.
//

import UIKit

class PassWordsViewController: UIViewController {

    @IBOutlet weak var tfPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
    
    }
    
    func generatePasswords() {
        tfPasswords.scrollRangeToVisible(_NSRange(location: 0, length: 0))
        tfPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tfPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let backButton = UIBarButtonItem(barButtonSystemItem: ., target: self, action: #selector(backAction))
//        navigationItem.leftBarButtonItems = [backButton]
//    }
//
//   @objc func backAction() {
//
//    }

}
