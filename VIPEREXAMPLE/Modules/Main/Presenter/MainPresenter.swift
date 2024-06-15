//
//  MainPresenter.swift
//  VIPEREXAMPLE
//
//  Created by Can on 14.06.2024.
//

import Foundation

protocol MainPresenterProtocol {
    var view: MainVCProtocol? { get set }
    var interactor: MainInteractorProtocol? { get set }
    var router: MainRouterProtocol? { get set }
    
    func willFetch()
    func didFetched()
}

final class MainPresenter: MainPresenterProtocol {
    var view: MainVCProtocol?
    var interactor: MainInteractorProtocol?
    var router: MainRouterProtocol?
    
    func willFetch() {
        interactor?.fetch()
    }
    func didFetched() {
        view?.updateUI()
    }
}
