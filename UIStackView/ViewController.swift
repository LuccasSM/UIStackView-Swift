//
//  ViewController.swift
//  UIStackView
//
//  Created by Luccas Santana Marinho on 15/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertView()
    }
    
    func insertView() {
        self.view.addSubview(stack)
        
        NSLayoutConstraint.activate([
            stack.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            stack.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            stack.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            stack.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [buttonOne, buttonTwo, buttonThree])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 20
        
        return stack
    }()
    
    private lazy var buttonOne: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        button.layer.borderColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1.2
        return button
    }()
    
    private lazy var buttonTwo: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        button.layer.borderColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10

        button.layer.borderWidth = 1.2
        return button
    }()
    
    private lazy var buttonThree: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        button.layer.borderColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1.2
        return button
    }()
}
