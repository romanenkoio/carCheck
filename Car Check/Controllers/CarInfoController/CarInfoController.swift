//
//  CarInfoControllerViewController.swift
//  Car Check
//
//  Created by Illia Romanenko on 25.07.22.
//

import UIKit

class CarInfoController: UIViewController {
    static let id = String(describing: CarInfoController.self)

    private var pageController = InfoPageController(transitionStyle: .scroll, navigationOrientation: .horizontal)
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        pageController.updateDelegate = self
        containerView.addSubview(pageController.view)
        pageController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([pageController.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                                     pageController.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                                     pageController.view.topAnchor.constraint(equalTo: containerView.topAnchor),
                                     pageController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)])
        self.addChild(pageController)
        pageController.didMove(toParent: self)
    }
}

extension CarInfoController: PageUpdatable {
    func update(with index: Int) {
        segmentController.selectedSegmentIndex = index
    }
}
