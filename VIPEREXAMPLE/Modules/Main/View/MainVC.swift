//
//  MainVC.swift
//  VIPEREXAMPLE
//
//  Created by Can on 14.06.2024.
//

import UIKit

protocol MainVCProtocol {
    var presenter: MainPresenterProtocol? { get set }
    
    func updateUI()
}

final class MainVC: UIViewController, MainVCProtocol {
    @IBOutlet weak var statusLabel: UILabel!
    
    var presenter: MainPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sendRequest(_ sender: Any) {
        statusLabel.text = "....loading...."
        presenter?.willFetch()
    }
    
    func updateUI() {
        statusLabel.text = "yüklendi."
    }
}
