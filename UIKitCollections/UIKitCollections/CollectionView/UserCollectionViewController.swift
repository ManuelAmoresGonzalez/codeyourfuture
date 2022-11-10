//
//  UserCollectionViewController.swift
//  CollectionsExample
//
//  Created by Leyner Jesus Castillo Guedez on 28/10/22.
//

import UIKit

class UserCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet private(set) weak var userCollectionView: UICollectionView!
    

    private var users = [UserDataModel(name: "Johana", jobDescription: "iOS Developer 1, iOS Developer 2, iOS Developer 3, iOS Developer 4, iOS Developer 5, iOS Developer 6, iOS Developer 7"), UserDataModel(name: "Daniel", jobDescription: "iOS Developer 2"), UserDataModel(name: "Krause", jobDescription: "iOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "iOS Developer 4"), UserDataModel(name: "Alejo", jobDescription: "iOS Developer 5"), UserDataModel(name: "Johana", jobDescription: "iOS Developer 1, iOS Developer 2, iOS Developer 3, iOS Developer 4, iOS Developer 5, iOS Developer 6, iOS Developer 7"), UserDataModel(name: "Daniel", jobDescription: "iOS Developer 2"), UserDataModel(name: "Krause", jobDescription: "iOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "iOS Developer 4"), UserDataModel(name: "Alejo", jobDescription: "iOS Developer 5"), UserDataModel(name: "Johana", jobDescription: "iOS Developer 1, iOS Developer 2, iOS Developer 3, iOS Developer 4, iOS Developer 5, iOS Developer 6, iOS Developer 7"), UserDataModel(name: "Daniel", jobDescription: "iOS Developer 2"), UserDataModel(name: "Krause", jobDescription: "iOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "iOS Developer 4"), UserDataModel(name: "Alejo", jobDescription: "iOS Developer 5"), UserDataModel(name: "Johana", jobDescription: "iOS Developer 1, iOS Developer 2, iOS Developer 3, iOS Developer 4, iOS Developer 5, iOS Developer 6, iOS Developer 7"), UserDataModel(name: "Daniel", jobDescription: "iOS Developer 2"), UserDataModel(name: "Krause", jobDescription: "iOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "iOS Developer 4"), UserDataModel(name: "Alejo", jobDescription: "iOS Developer 5")]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserCollectionView()
    }

    private func setupUserCollectionView() {
        userCollectionView.dataSource = self
        userCollectionView.delegate = self
    }

    private func fetchEmployees() {
        // Cargar desde el server los empleados
        // Asignamos a nuestro array
        userCollectionView.reloadData()
    }

    // MARK: - UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        users.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UserCollectionViewCell.identifier, for: indexPath) as? UserCollectionViewCell else {
            return UICollectionViewCell()
        }

        let user = users[indexPath.item]
        cell.render(name: user.name, jobDescription: user.jobDescription, imageURL: nil)
        cell.contentView.backgroundColor = UIColor.gray

        return cell
    }

    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 2
        let height = UIScreen.main.bounds.height /* - safe area size */  / 2
        let size = CGSize(width: width, height: height)
        return size
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
}
