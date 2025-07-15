//
//  ExampleButtonTestViewController.swift
//  example2
//
//  Created by Carlos Silva on 15/07/25.
//

import Foundation
import CoreFramework
import UIKit

public class ButtonTestViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        guard let startImage = UIImage(systemName: "star") else {
            return
        }
        let buttonWithIcon = CustomButton(title: "Com ícone", icon: startImage, iconPosition: .horizontal)
        let buttonWithouIcon = CustomButton(title: "Sem icone, simples")
        
        buttonWithIcon.translatesAutoresizingMaskIntoConstraints = false
        buttonWithouIcon.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(buttonWithIcon)
        view.addSubview(buttonWithouIcon)
        
        NSLayoutConstraint.activate([
            buttonWithIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonWithIcon.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonWithIcon.heightAnchor.constraint(equalToConstant: 50),
            buttonWithIcon.widthAnchor.constraint(equalToConstant: 300),
            
            buttonWithouIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonWithouIcon.topAnchor.constraint(equalTo: buttonWithIcon.bottomAnchor, constant: 20),
            buttonWithouIcon.heightAnchor.constraint(equalToConstant: 50),
            buttonWithouIcon.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
