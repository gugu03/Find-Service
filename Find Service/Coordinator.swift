//
//  Coordinator.swift
//  Find Service
//
//  Created by Luis Gustavo Oliveira Silva on 17/03/20.
//  Copyright © 2020 Luis Gustavo Oliveira Silva. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
