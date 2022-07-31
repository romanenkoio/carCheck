//
//  CarsController.swift
//  Car Check
//
//  Created by Illia Romanenko on 25.07.22.
//

import UIKit

class CarsController: UIViewController {
    static let id = String(describing: CarsController.self)
    
    private var tableView: UITableView {
        let table = UITableView()
        table.frame = self.view.frame
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: CarCell.id, bundle: nil), forCellReuseIdentifier: CarCell.id)
        return table
    }
    
    private var addButton: UIButton {
        let screen = UIScreen.main.bounds
        let button = UIButton(frame: CGRect(x: 20, y: tableView.frame.maxY - 80, width: screen.width - 40, height: 40))
        button.setTitle("Добавить автомобиль", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
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
        self.view.addSubview(addButton)
    }
}

extension CarsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carCell = tableView.dequeueReusableCell(withIdentifier: CarCell.id, for: indexPath) as! CarCell
        return carCell
    }
}

extension CarsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CarInfoController(nibName: CarInfoController.id, bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
