//
//  ViewController.swift
//  Travels
//
//  Created by Lucas Santos on 16/02/24.
///

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var travelsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119/255.0, alpha: 1)
    }
    
    func configureTableView() {
        travelsTableView.register(
            UINib(nibName: "TravelTableViewCell", bundle: nil),
            forCellReuseIdentifier: "TravelTableViewCell"
        )
        travelsTableView.dataSource = self
        travelsTableView.delegate = self
        travelsTableView.sectionHeaderTopPadding = 0
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelsSection?[section].rowNumber ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let travelCell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell") as? TravelTableViewCell else {
            fatalError("Unable to create TravelTableViewCell")
        }
        
        let viewModel = travelsSection?[indexPath.section]
        switch viewModel?.type {
        case .highlights:
            travelCell.configureCell(for: viewModel?.travels[indexPath.row])
            return travelCell
        default:
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self)?.first as? HomeTableViewHeader
        headerView?.configureHeaderView()
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300 
    }
}
