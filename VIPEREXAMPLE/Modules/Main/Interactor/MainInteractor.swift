//
//  MainInteractor.swift
//  VIPEREXAMPLE
//
//  Created by Can on 14.06.2024.
//

import Foundation

protocol MainInteractorProtocol {
    var presenter: MainPresenterProtocol? { get set }
    
    func fetch()
}

final class MainInteractor: MainInteractorProtocol {
    var presenter: MainPresenterProtocol?
    
    func fetch() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.presenter?.didFetched()
        }
    }
}
