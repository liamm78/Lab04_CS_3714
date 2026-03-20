//
//  Lab04App.swift
//  Lab04
//
//  Created by lending on 3/20/26.
//


@main
struct Lab04App {
    static func main() {
                
        var author1 = Author(authorID: 1, firstName: "JRR", lastName: "Tolkien", photo: "JRRTolkien.jpg", writesIDS: [1, 3, 4])
        var author2 = Author(authorID: 2, firstName: "George", lastName: "Orwell", photo: "GeorgeOrwell.jpg", writesIDS: [2, 4])
        
        var book1 = Book(bookID: 1, title: "The Hobbit", genre: "Fantasy", numPages: 320, copyRight: true, checkoutIDS: [3, 4], publishedIDS: [1], writesIDS: [1])
        var book2 = Book(bookID: 2, title: "1984", genre: "Dystopian", numPages: 334, copyRight: true, checkoutIDS: [1, 2], publishedIDS: [2, 3], writesIDS: [2])
        var book3 = Book(bookID: 3, title: "Lord of the Rings", genre: "Fantasy", numPages: 1077, copyRight: true, checkoutIDS: [], publishedIDS: [], writesIDS: [1])
        var book4 = Book(bookID: 4, title: "World", genre: "Modern", numPages: 2000, copyRight: true, checkoutIDS: [], publishedIDS: [], writesIDS: [1, 2])
        
        var borrower1 = Borrower(borrowerID: 1, firstName: "John", lastName: "Snow", checkouts: [1, 3])
        var borrower2 = Borrower(borrowerID: 2, firstName: "Arya", lastName: "Stark", checkouts: [2, 4])
        
        var publisher1 = Publisher(publisherID: 1, name: "Boring Books", website: "www.boringbooks.co.uk", publishedIDS: [1, 2])
        var publisher2 = Publisher(publisherID: 2, name: "Interesting Books", website: "www.interestingbooks.co.uk", publishedIDS: [2])
        
        
        
        // An author can write many books. (JRR Tolkien writes the Hobbit and the Lord of the Rings)
        
        // A book can be written by many authors (Tolkien and Orwell both write World
        
        // JRR Tolkien writes the Hobbit.
        let writes1 = Writes(writeID: 1, bookID: 1, authorID: 1)
        // George Orwell writes 1984
        let writes2 = Writes(writeID: 2, bookID: 2, authorID: 2)
                
        // JRR Tolkein writes the Lord of Rings
        let writes3 = Writes(writeID: 3, bookID: 3, authorID: 1)
        
        // JRR tolkein and George Orwell collaborate to write World
        let writes4 = Writes(writeID: 4, bookID: 4, authorID: 1)
        let writes5 = Writes(writeID: 5, bookID: 4, authorID: 2)

        
        
        // A book can be published by many publishers (1984 is published by Publisher Boring Books and later, Publisher interesting Books)
        
        // A publisher can publish many books (Boring Books publishes both the Book Hobbit and Book 1984)
        
        
        // Boring Books publishes the Hobbit
        let published1 = Published(publishedID: 1, bookID: 1, publisherID: 1, date: "9/21/1937")
        
        // Boring Books publishes 1984
        let published2 = Published(publishedID: 2, bookID: 2, publisherID: 1, date: "6/8/1949")
        
        // Interesting Books publishes 1984
        let published3 = Published(publishedID: 3, bookID: 2, publisherID: 2, date: "4/20/1960")
        
        
        // A Book can be checked out by multiple Borrowers (1984 is checked out by John Snow and Arya Stark)
        
        // Borrowers can check out multiple Books (John Snow checked out The Hobbit and 1984)
        
        // John Snow checks out 1984 by George Orwell. It is due on 4/1/2026.
        let checkout1 = Checkout(checkoutID: 1, bookID: 2, borrowerID: 1, dueDate: "4/1/2026")
        
        //Arya Stark checks out 1984 by George Orwell. It is due on 4/1/2026.
        let checkout2 = Checkout(checkoutID: 2, bookID: 2, borrowerID: 2, dueDate: "4/1/2026")
        
        // John Snow checks out The Hobbit by JRR Tolkien. It is due on 4/30/2026.
        let checkout3 = Checkout(checkoutID: 3, bookID: 1, borrowerID: 1, dueDate: "4/30/2026")
        
        // Arya Stark checks out The Hobbit by JRR Tolkien. It is due on 4/30/2026.
        let checkout4 = Checkout(checkoutID: 4, bookID: 1, borrowerID: 2, dueDate: "4/30/2026")
        
        
        
        

        
        
        print("Hi")
    }
}


