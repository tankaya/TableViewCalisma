//
//  ViewController.swift
//  TableViewCalisma
//
//  Created by Taner Kaya on 21.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // PROPERTY
    
    @IBOutlet weak var futbolcularTableView: UITableView!
    @IBOutlet weak var futbolcuText: UITextField!
    @IBOutlet weak var seciliFutbolcuLabel: UILabel!
    
    var futbolcuListesi : [String] = []
    
 
    //FUNCTIONS
    
    @IBAction func futbolcuEkleButon(_ sender: Any) {
        
        futbolcuListesi.append(futbolcuText.text ?? "Futbolcu")
        
        futbolcularTableView.reloadData()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return futbolcuListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        //var content = cell.defaultContentConfiguration()
        
        //content.text = futbolcuListesi[(indexPath.row)].description
            
        //cell.contentConfiguration = content
        
        cell.textLabel?.text = futbolcuListesi[(indexPath.row)].description
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        
        let seciliFutbolcu = tableView.cellForRow(at: indexPath)
        
        seciliFutbolcuLabel.text = seciliFutbolcu?.textLabel?.text
        
        print(seciliFutbolcuLabel.text)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


