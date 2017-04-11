//
//  FMCardCell.swift
//  Pods
//
//  Created by Felipe Lefèvre Marino on 4/8/17.
//
//

import UIKit

@objc public enum FMCardCellType: Int {
    case Single = 1
    case Double = 2
}

@objc public protocol FMCardCellDelegate {
    
    func numberOfCardsInCell() -> FMCardCellType
}

open class FMCardCell: UITableViewCell {
    
    open weak var delegate: FMCardCellDelegate!
    
    open var topMargin: CGFloat = 10.0
    open var rightMargin: CGFloat = 20.0
    open var bottomMargin: CGFloat = 10.0
    open var leftMargin: CGFloat = 20.0
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override open func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override open func layoutSubviews() {
        let cardsCount = delegate.numberOfCardsInCell().rawValue
        
        let width = frame.size.width
        let height = frame.size.height
        
        let originX = bounds.origin.x
        let originY = bounds.origin.y
        
        let horizontalMargins = leftMargin + rightMargin/2
        let verticalMargins = topMargin + bottomMargin

        
        for index in 1...cardsCount {
            let card: FMCardView
            switch index {
            case 1:
                card = FMCardView.init(frame: CGRect(x: originX + leftMargin, y: originY + topMargin, width: width/CGFloat(cardsCount) - horizontalMargins, height: height - verticalMargins))
                break
            default:
                card = FMCardView.init(frame: CGRect(x: originX + width/CGFloat(cardsCount) + rightMargin / 2, y: originY + topMargin, width: width/CGFloat(cardsCount) - horizontalMargins, height: height - verticalMargins))
                break
            }
            
            addSubview(card)
        }
    }

}
