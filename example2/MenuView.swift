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
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    private func setupUI() {
        addSubview(titleLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
