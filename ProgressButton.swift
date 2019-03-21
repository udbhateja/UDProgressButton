//
//  ProgressButton.swift
//  Tokr
//
//  Created by Uday on 01/03/19.
//  Copyright © 2019 Zapbuild. All rights reserved.
//

import Foundation
import UIKit

class ProgressButton: UIButton {
    
    //MARK:- Properties
    @IBInspectable var progressColor: UIColor = .white {
        didSet {
            activityIndicator.color = progressColor
        }
    }
    
    var style: UIActivityIndicatorView.Style = .white {
        didSet {
            activityIndicator.style = style
        }
    }
    
    private var activityIndicator   : UIActivityIndicatorView!
    private var buttonText          : String?
    
    //MARK:- init methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        activityIndicator = UIActivityIndicatorView(style: style)
        addActivityIndicator()
    }
    
    //MARK:- Private Methods
    private func addActivityIndicator() {
        activityIndicator.alpha = 1.0
        activityIndicator.hidesWhenStopped = true
        
        addSubview(activityIndicator)
        bringSubviewToFront(activityIndicator)
    }
    
    //MARK:- Public functions
    func startAnimating() {
        activityIndicator.frame = bounds
        buttonText = title(for: .normal)
        setTitle("", for: .normal)
        
        activityIndicator.startAnimating()
        isUserInteractionEnabled = false
    }
    
    func stopAnimating() {
        setTitle(buttonText ?? "", for: .normal)
        activityIndicator.stopAnimating()
        isUserInteractionEnabled = true
    }
    
    func set(enabled: Bool) {
        isUserInteractionEnabled = enabled
        backgroundColor = backgroundColor?.withAlphaComponent(enabled ? 1.0 : 0.5)
    }
    
}

















