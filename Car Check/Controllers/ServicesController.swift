//
//  ServicesController.swift
//  Car Check
//
//  Created by Illia Romanenko on 3.08.22.
//

import Foundation
import UIKit

class ServicesController: UIViewController {
    static let id = String(describing: ServicesController.self)
    
    private var tableView: UITableView {
        let table = UITableView()
        table.frame = self.view.frame
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: ServiceCell.id, bundle: nil), forCellReuseIdentifier: ServiceCell.id)
        return table
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(tableView)
    }
}

extension ServicesController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carCell = tableView.dequeueReusableCell(withIdentifier: ServiceCell.id, for: indexPath) as! ServiceCell
        return carCell
    }
    

}

extension ServicesController: UITableViewDelegate {

}
