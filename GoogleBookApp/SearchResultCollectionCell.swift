//
//  SearchResultCollectionCell.swift
//  GoogleBookApp
//
//  Created by sungjae on 2023/02/05.
//

import Foundation
import UIKit

class SearchResultCollectionCell: UICollectionViewCell {
  
  @IBOutlet weak var bookImage: UIImageView!
  @IBOutlet weak var bookTitle: UILabel!
  @IBOutlet weak var bookDescription: UILabel!
  
  override class func awakeFromNib() {
    super.awakeFromNib()
  }
  
}
