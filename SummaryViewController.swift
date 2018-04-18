//
//  SummaryViewController.swift
//  Library of Alexandria
//
//  Created by Kimberley Nikolaevna on 12/3/18.
//  Copyright © 2018 Kimberley Chan. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isbnLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var editionLabel: UILabel!
    @IBOutlet weak var yearOfPublicationLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var newBook: Book?
    
    override func viewWillAppear(_ animated: Bool) {
        
        titleLabel.text = newBook?.bookTitle
        isbnLabel.text = newBook?.bookISBN
        authorLabel.text = newBook?.bookAuthor
        publisherLabel.text = newBook?.bookPublisher
        editionLabel.text = newBook?.bookEdition
        yearOfPublicationLabel.text = newBook?.bookYearOfPublication
        genreLabel.text = newBook?.bookGenre
        descriptionLabel.text = newBook?.bookDescription
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
