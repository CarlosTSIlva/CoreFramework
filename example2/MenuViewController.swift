//
//  MenuViewController.swift
//  Example
//
//  Created by Carlos Silva on 10/07/25.
//

import UIKit
import Foundation
import CoreFramework

public class MenuViewController: UIViewController {
    private let contentView = MenuView()
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupActions()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    private func setupActions() {
        contentView.didTapOnboarding = { [weak self] in
            self?.showOnboarding()
        }
    }
    
    private func showOnboarding() {
        let onboardingView = OnboardingView()
        
        let steps = [
            (UIImage(named: "onboarding1"), "Bem vindo ao onboarding do reminder"),
            (UIImage(named: "image2"), "Para cadastrar seus remedios é super simples"),
            (UIImage(named: "image3"), "Selecionar o horario da primeira dose, e as subsquentes"),
            (UIImage(named: "image4"), "Iremos te lembrar de tomar no horario correto")
            
        ]
        
        onboardingView.presentOnboarding(on: view, with: steps)
    }
}
