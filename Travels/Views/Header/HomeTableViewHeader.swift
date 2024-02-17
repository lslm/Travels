//
//  HomeTableViewHeader.swift
//  Travels
//
//  Created by Lucas Santos on 16/02/24.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: Outlets
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerBackgroundView: UIView!
    @IBOutlet weak var bannerCaptionView: UIView!
    @IBOutlet weak var BannerImageView: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    
    func configureHeaderView() {
        headerBackgroundView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        bannerView.layer.cornerRadius = 12
        bannerView.layer.masksToBounds = true
        headerBackgroundView.layer.cornerRadius = 150
        headerBackgroundView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
