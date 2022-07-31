//
//  FilesController.swift
//  Car Check
//
//  Created by Illia Romanenko on 26.07.22.
//

import UIKit

class FilesController: UIViewController {
    static let id = String(describing: FilesController.self)
    
    private var tableView: UITableView {
        let table = UITableView()
        table.frame = self.view.frame
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: CarCell.id, bundle: nil), forCellReuseIdentifier: CarCell.id)
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

extension FilesController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carCell = tableView.dequeueReusableCell(withIdentifier: CarCell.id, for: indexPath) as! CarCell
        return carCell
    }
}

extension FilesController: UITableViewDelegate {
    
}
