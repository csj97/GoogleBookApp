//
//  BookModel.swift
//  GoogleBookApp
//
//  Created by sungjae on 2023/02/05.
//

import Foundation



// MARK: - Book
struct Book: Codable {
  let kind: String
  let totalItems: Int
  let items: [Item]
}

// MARK: - Item
struct Item: Codable {
  let kind: String
  let id, etag: String
  let selfLink: String
  let volumeInfo: VolumeInfo
  let saleInfo: SaleInfo
  let accessInfo: AccessInfo
  let searchInfo: SearchInfo
}

// MARK: - AccessInfo
struct AccessInfo: Codable {
  let country: String
  let viewability: String
  let embeddable, publicDomain: Bool
  let textToSpeechPermission: String
  let epub, pdf: Epub
  let webReaderLink: String
  let accessViewStatus: String
  let quoteSharingAllowed: Bool
}

// MARK: - Epub
struct Epub: Codable {
  let isAvailable: Bool
  let acsTokenLink: String?
}

// MARK: - SaleInfo
struct SaleInfo: Codable {
  let country: String
  let saleability: String
  let isEbook: Bool
}

// MARK: - SearchInfo
struct SearchInfo: Codable {
  let textSnippet: String
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
  let title: String
  let subtitle: String?
  let authors: [String]
  let publisher: String?
  let publishedDate: String
  let description: String?
  let industryIdentifiers: [IndustryIdentifier]
  let readingModes: ReadingModes
  let pageCount: Int
  let printType: String
  let categories: [String]?
  let averageRating: Double?
  let ratingsCount: Int?
  let maturityRating: String
  let allowAnonLogging: Bool
  let contentVersion: String
  let panelizationSummary: PanelizationSummary
  let imageLinks: ImageLinks?
  let language: String
  let previewLink, infoLink: String
  let canonicalVolumeLink: String
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
  let smallThumbnail, thumbnail: String
}

// MARK: - IndustryIdentifier
struct IndustryIdentifier: Codable {
  let type: String
  let identifier: String
}

// MARK: - PanelizationSummary
struct PanelizationSummary: Codable {
  let containsEpubBubbles, containsImageBubbles: Bool
}

// MARK: - ReadingModes
struct ReadingModes: Codable {
  let text, image: Bool
}

