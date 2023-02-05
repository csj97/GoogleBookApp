//
//  NetworkService.swift
//  GoogleBookApp
//
//  Created by sungjae on 2023/02/05.
//

import Alamofire

class ApiClient {
  static let shared = ApiClient()
  
  var googleApiBaseURL: String = "https://www.googleapis.com/books/v1/volumes?"
  var searchBook: String?
  
  func getGoogleBook(searchBook: String, completionHandler: @escaping(Book) -> Void) {

    let param = [ "q": searchBook ]

    let connection = AF.request(googleApiBaseURL, method: .get, parameters: param).validate(statusCode: 200..<300)
    
    connection.responseString { response in
      switch response.result {
      case .success(let value):
        let data = value.data(using: .utf8)
        let decoder = JSONDecoder()
        
        guard let data = data,
              let bookData = try? decoder.decode(Book.self, from: data) else {
          return
        }

        completionHandler(bookData)
                
      case .failure(let error):
        print(error.errorDescription ?? "Decoding 에러 발생")
      }
    }
  }
  
}
