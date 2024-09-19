//
//  CryptoTableViewCell.swift
//  CryptoRxMVVM
//
//  Created by Erberk Yaman on 19.09.2024.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet weak var cryptoNameLabel: UILabel!
    @IBOutlet weak var cryptoPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public var item : CryptoModel! {
        didSet {
            self.cryptoNameLabel.text = item.currency
            self.cryptoPriceLabel.text = item.price
        }
    }

}
