//
//  ViewController.swift
//  openlibraryreq
//
//  Created by retroze on 10/4/16.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchISBN: UISearchBar!
    @IBOutlet weak var resultTXT: UITextView!
    @IBOutlet weak var searchButton: UIButton!
    
    
    @IBAction func buttonClick(sender: AnyObject) {
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"+searchISBN.text!
        let url = NSURL(string:urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding:NSUTF8StringEncoding)
        resultTXT.text = texto! as String
        print(texto!)
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

