//
//  Book.swift
//  Library of Alexandria
//
//  Created by Kimberley Nikolaevna on 11/3/18.
//  Copyright © 2018 Kimberley Chan. All rights reserved.
//

import UIKit

class Book: NSObject {
    
    var bookTitle: String
    var bookISBN: String
    var bookAuthor: String
    var bookPublisher: String
    var bookEdition: String
    var bookYearOfPublication: String
    var bookGenre: String
    var bookDescription: String
    
    init(bookTitle: String, bookISBN: String, bookAuthor: String, bookPublisher: String, bookEdition: String, bookYearOfPublication: String, bookGenre: String, bookDescription: String) {
        
        self.bookTitle = bookTitle
        self.bookISBN = bookISBN
        self.bookAuthor = bookAuthor
        self.bookPublisher = bookPublisher
        self.bookEdition = bookEdition
        self.bookYearOfPublication = bookYearOfPublication
        self.bookGenre = bookGenre
        self.bookDescription = bookDescription
    }
}



