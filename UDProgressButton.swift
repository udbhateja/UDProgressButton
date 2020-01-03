//
//  UDProgressButton.swift
//
//  Created by Uday on 01/03/19.
//  Copyright © 2019 Uday. All rights reserved.
//

import UIKit

class UDProgressButton: UIButton {
    
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
    
     private func set(enabled: Bool) {
        isUserInteractionEnabled = enabled
        backgroundColor = backgroundColor?.withAlphaComponent(enabled ? 1.0 : 0.5)
    }
    
    //MARK:- Public functions
    public func startAnimating() {
        activityIndicator.frame = bounds
        buttonText = title(for: .normal)
        setTitle("", for: .normal)
        
        activityIndicator.startAnimating()
        set(enabled: false)
    }
    
    public func stopAnimating() {
        setTitle(buttonText ?? "", for: .normal)
        activityIndicator.stopAnimating()
        set(enabled: true)
    } 
}

















