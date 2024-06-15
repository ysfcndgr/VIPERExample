//
//  MainRouter.swift
//  VIPEREXAMPLE
//
//  Created by Can on 14.06.2024.
//

import UIKit

protocol MainRouterProtocol {
    var presenter: MainPresenterProtocol? { get set }
}

final class MainRouter: MainRouterProtocol {
    var presenter: MainPresenterProtocol?
}
