//
//  ViewController.swift
//  Library of Alexandria
//
//  Created by Kimberley Nikolaevna on 11/3/18.
//  Copyright © 2018 Kimberley Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func saveBookButton(_ sender: Any) {
         createAlert(title: "SAVED", message: "The book has been saved!")
    }
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var isbnField: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var publisherField: UITextField!
    @IBOutlet weak var editionField: UITextField!
    @IBOutlet weak var yearOfPublicationField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    func createAlert(title: String, message: String) {
        
        let saved = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        saved.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in saved.dismiss(animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "displaySummary", sender: self)}))
        
        self.present(saved, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "displaySummary" {
            let title = titleField.text
            let isbn = isbnField.text
            let author = authorField.text
            let publisher = publisherField.text
            let edition = editionField.text
            let yearOfPublication = yearOfPublicationField.text
            let genre = genreField.text
            let description = descriptionField.text

            let book = Book(bookTitle: title!, bookISBN: isbn!, bookAuthor: author!, bookPublisher: publisher!, bookEdition: edition!, bookYearOfPublication: yearOfPublication!, bookGenre: genre!, bookDescription: description!)
            
            if let summaryVC = segue.destination as? SummaryViewController {
                summaryVC.newBook = book
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

