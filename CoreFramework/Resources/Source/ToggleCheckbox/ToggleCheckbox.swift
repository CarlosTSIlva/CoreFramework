//
//  ToggleCheckbox.swift
//  CoreFramework
//
//  Created by Carlos Silva on 15/07/25.
//

import Foundation
import UIKit


public class ToggleCheckbox: UIButton {
    private var isChecked: Bool = false
    private let uncheckedImage = UIImage(named: "uncheckedCheckbox")
    private let checkedImage = UIImage(named: "checkedCheckbox")
    
    public init() {
        super.init(frame: .zero)
        self.setImage(uncheckedImage, for: .normal)
        self.addTarget(self, action: #selector(toggle), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func toggle() {
        isChecked.toggle()
        if isChecked {
            setImage(checkedImage, for: .normal)
        } else {
            self.setImage(uncheckedImage, for: .normal)
        }
    }
    
    public func getIsCheckedState() -> Bool {
        return isChecked
    }
}
