//
//  TravelTableViewCell.swift
//  Travels
//
//  Created by Lucas Santos on 17/02/24.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var travelImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cancelLabel: UILabel!
    
    func configureCell(for travel: Travel?) {
        travelImageView.image = UIImage(named: travel?.asset ?? "")
        titleLabel.text = travel?.title
        subtitleLabel.text = travel?.subtitle
        priceLabel.text = "R$ \(travel?.preco ?? 0)"
        cancelLabel.text = travel?.cancelamento
        
        DispatchQueue.main.async {
            self.backgroundViewCell.addShadow()
        }
    }
}
