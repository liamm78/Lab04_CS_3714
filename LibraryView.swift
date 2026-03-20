//
//  LibraryView.swift
//  Lab04
//
//  Created by lending on 3/20/26.
//

// Entiites
struct Author: Codable {
    let authorID: Int
    let firstName: String
    let lastName: String
    let photo: String
    
    var writesIDS: [Int]
}

struct Book: Codable {
    let bookID: Int
    let title: String
    let genre: String
    let numPages: Int
    let copyRight: Bool
    
    var checkoutIDS: [Int]?
    var publishedIDS: [Int]?
    var writesIDS: [Int]?
}

struct Borrower: Codable {
    let borrowerID: Int
    let firstName: String
    let lastName: String
    // Keep track of books they borrowed
    var checkouts: [Int]

    
}

struct Publisher: Codable {
    let publisherID: Int
    let name: String
    let website: String
    
    let publishedIDS: [Int]
}


// Junctions

struct Checkout: Codable {
    let checkoutID: Int
    let bookID: Int
    let borrowerID: Int
    let dueDate: String
}

struct Published: Codable {
    let publishedID: Int
    let bookID: Int
    let publisherID: Int
    let date: String
}

struct Writes: Codable {
    let writeID: Int
    let bookID: Int
    let authorID: Int
}



