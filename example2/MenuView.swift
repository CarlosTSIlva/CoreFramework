//
//  MenuView.swift
//  Example
//
//  Created by Carlos Silva on 10/07/25.
//

import Foundation
import UIKit
import CoreFramework

class MenuView: UIView {
    var didTapOnboarding: (() -> Void)?
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Example Menu"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let onboardingButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Onboarding", for: .normal)
        button.layer.cornerRadius = Metrics.medium
        button.tintColor = .white
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(didTapOnboardingButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    private func setupUI() {
        addSubview(titleLabel)
        addSubview(onboardingButton)
        addSubview(testCheckboxbutton)
        addSubview(testCustomButton)
        setupConstraints()
    }
    
    private let checkBox = ToggleCheckbox()
    private let testCheckboxbutton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Test Checkbox button", for: .normal)
        button.layer.cornerRadius = Metrics.medium
        button.backgroundColor = .red
        button.tintColor = .white
        button.addTarget(self, action: #selector(didTapCheckoutboxbutton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let testCustomButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Test Custom button2", for: .normal)
        button.layer.cornerRadius = Metrics.medium
        button.backgroundColor = .red
        button.tintColor = .white
        button.addTarget(self, action: #selector(didTapCustombutton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    

    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            onboardingButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            onboardingButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            onboardingButton.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),
            onboardingButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            onboardingButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Metrics.medium),
            
            testCheckboxbutton.topAnchor.constraint(equalTo: onboardingButton.bottomAnchor, constant: Metrics.medium),
            testCheckboxbutton.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),
            testCheckboxbutton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            testCheckboxbutton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Metrics.medium),
            
            testCustomButton.topAnchor.constraint(equalTo: testCheckboxbutton.bottomAnchor, constant: Metrics.medium),
            testCustomButton.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),
            testCustomButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            testCustomButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Metrics.medium),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func didTapOnboardingButton() {
        didTapOnboarding?()
    }
    
    @objc
    private func didTapCustombutton() {
        let  checkboxViewController = ButtonTestViewController()
        if let parentViewController = self.window?.rootViewController {
            parentViewController.present(checkboxViewController, animated: true)
        }
    }
    
    @objc
    private func didTapCheckoutboxbutton() {
        let  checkboxViewController = CheckBoxViewController()
        if let parentViewController = self.window?.rootViewController {
            parentViewController.present(checkboxViewController, animated: true)
        }
    }
}
