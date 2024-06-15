//
//  MainBuilder.swift
//  VIPEREXAMPLE
//
//  Created by Can on 14.06.2024.
//

import UIKit

final class MainBuilder {
    
    private init() { }
    
    static func build() -> UIViewController {
        let view = MainVC()
        let interactor = MainInteractor()
        let presenter = MainPresenter()
        let router = MainRouter()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        
        return view
    }
}
