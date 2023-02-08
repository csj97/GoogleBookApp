//
//  ViewController.swift
//  GoogleBookApp
//
//  Created by sungjae on 2023/02/05.
//

import UIKit
import GoogleBooksApiClient

class ViewController: UIViewController {

  @IBOutlet weak var searchTxtField: UITextField!
  @IBOutlet weak var searchResultCollectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func tapOnSearchButton(_ sender: UIButton) {
    guard let searchBook = searchTxtField.text else { return }
    ApiClient.shared.getGoogleBook(searchBook: searchBook) { bookInfo in
//      print(bookInfo.items.first?.volumeInfo.title)
      print(bookInfo)
    }
  }
}

