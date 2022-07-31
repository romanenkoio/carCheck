//
//  InfoPageController.swift
//  Car Check
//
//  Created by Illia Romanenko on 26.07.22.
//

import UIKit

protocol PageUpdatable: AnyObject {
    func update(with index: Int)
}

class InfoPageController: UIPageViewController {
    var controllers = [ServicesController(), FilesController()]
    
    weak var updateDelegate: PageUpdatable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        if let firstViewController = controllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true)
        }
    }
}

extension InfoPageController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = controllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        
        guard previousIndex >= 0 else {
            return controllers.last
        }
        
        guard controllers.count > previousIndex else {
            return nil
        }
        
        updateDelegate?.update(with: previousIndex)
        return controllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = controllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = controllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return controllers.first
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        updateDelegate?.update(with: nextIndex)
        return controllers[nextIndex]
    }
}
