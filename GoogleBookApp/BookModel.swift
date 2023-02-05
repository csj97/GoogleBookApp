//
//  BookModel.swift
//  GoogleBookApp
//
//  Created by sungjae on 2023/02/05.
//

import Foundation

class BookModel {
  
  struct Book: Codable {
    var kind: String?
    var items: [items]
  }
  
  struct items: Codable {
    
  }
}
