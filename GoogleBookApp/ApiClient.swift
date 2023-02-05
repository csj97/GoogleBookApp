//
//  NetworkService.swift
//  GoogleBookApp
//
//  Created by sungjae on 2023/02/05.
//

import Alamofire

class ApiClient {
  var googleApiBaseURL: String = "https://www.googleapis.com/books/v1/volumes?"
  var searchBook: String?
  
  func getGoogleBook(searchBook: String, completionHandler: @escaping() -> Void) {
    
    let param = [ "q": searchBook ]
//    AF.request(googleApiBaseURL,
//               method: .get,
//               parameters: param)
//      .response { response in
//        switch response.result {
//        case .success(let data):
//          do {
//            let decoder = JSONDecoder()
//            let result = try decoder.decode(CityCovidOverview.self, from: data)
//            completionHandler(.success(result))
//          } catch {
//            completionHander(.failure(error))
//          }
//        case .failure(let error):
//          print(error)
//        }
//      }
  }
  
}
