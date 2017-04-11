//
//  ViewController.swift
//  FMCardCell
//
//  Created by Felipe Marino on 04/05/2017.
//  Copyright (c) 2017 Felipe Marino. All rights reserved.
//

import UIKit
import FMCardCell

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row: \(indexPath.row)")
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// *** ///
        
        tableView.register(FMCardCell.classForCoder(), forCellReuseIdentifier: "FMCardCell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FMCardCell", for: indexPath) as! FMCardCell
        
        cell.selectionStyle = .none
        
        //You can change the default margin values
        cell.topMargin = 11
        cell.bottomMargin = 11
        
        cell.delegate = self
        
        return cell
    }
}

extension ViewController: FMCardCellDelegate {
    func cardViewForCell() -> FMCardView {
        let card = Bundle.main.loadNibNamed("MyPersonalizedCardView", owner: self, options: nil)!.first as! MyPersonalizedCardView
        
        return card        
    }

    func numberOfCardsInCell() -> FMCardCellType    {
        return .Single
    }
}
