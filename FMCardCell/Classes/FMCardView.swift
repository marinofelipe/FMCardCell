//
//  FMCardView.swift
//  Pods
//
//  Created by Felipe Lefèvre Marino on 4/8/17.
//
//

import UIKit

class FMCardView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var cornerRadius: CGFloat = 5
    
    var shadowOffsetWidth: Int = 0
    var shadowOffsetHeight: Int = 2
    var shadowColor: UIColor? = UIColor.black
    var shadowOpacity: Float = 0.5
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = frame
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        backgroundColor = UIColor.white
        
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)

        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
        
        addTextContent()
    }
    
    func addTextContent() {
        let label = UILabel.init(frame: CGRect(x: self.bounds.origin.x + 10, y: self.bounds.origin.y + 10, width: 200, height: 30))
        label.text = "Titulo do Card"
        
        addSubview(label)
    }


}
