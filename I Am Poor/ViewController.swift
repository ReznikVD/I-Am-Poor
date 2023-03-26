//
//  ViewController.swift
//  I Am Poor
//
//  Created by Владислав Резник on 26.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Georgia-Italic", size: 25)
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I Am Poor"
        return label
    }()
    
    private lazy var coalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "coal")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

private extension ViewController {
    func setupUI() {
        view.backgroundColor = .blue
        view.addSubview(titleLabel)
        view.addSubview(coalImageView)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            coalImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            coalImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            coalImageView.widthAnchor.constraint(equalToConstant: 300),
            coalImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}

