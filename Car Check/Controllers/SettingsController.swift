//
//  SettingsController.swift
//  ShopList
//
//  Created by Illia Romanenko on 22.04.22.
//

import UIKit
import Firebase

class SettingsController: UIViewController {
    private var points = CCSettingPoint.getMenu()
    
    private var tableView: UITableView {
        let table = UITableView(frame: self.view.frame, style: .insetGrouped)
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: SettingCell.id, bundle: nil), forCellReuseIdentifier: SettingCell.id)
        table.register(UINib(nibName: ProfileCell.id, bundle: nil), forCellReuseIdentifier: ProfileCell.id)
        table.sectionFooterHeight = 20
        table.backgroundColor = .clear
        return table
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        view.backgroundColor = .white
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(tableView)
    }
}

extension SettingsController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return points.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return points[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var settingCell: UITableViewCell
        
        let point = points[indexPath.section][indexPath.row]
        switch point {
        case .profile:
            settingCell = tableView.dequeueReusableCell(withIdentifier: ProfileCell.id, for: indexPath)
        case .autoDelete, .useTimePush, .morningTime, .version, .separateList, .language, .premium:
            settingCell = tableView.dequeueReusableCell(withIdentifier: String(describing: SettingCell.self), for: indexPath) as! SettingCell
            
            (settingCell as! SettingCell).setupWith(point)
            
            
        }
        
        return settingCell
    }
}

extension SettingsController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
