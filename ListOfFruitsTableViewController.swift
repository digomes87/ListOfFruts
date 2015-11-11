//
//  ListOfFruitsTableViewController.swift
//  ListOfFruts
//
//  Created by Diego Gomes on 11/11/2015.
//  Follow me @Nylondev
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ListOfFruitsTableViewController: UITableViewController {

    var frutsArray:[Fruts] = [Fruts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fruts1 = Fruts(imageName: "banana.jpg", description: "Fruta tipaca no Brasil", moreInfo: "Vc encontra em qualquer lugar do mundo na verdade")

        let fruts2 = Fruts(imageName: "maca.jpg", description: "Apple fruta", moreInfo: "Se nao fosse essa fruta nao conheceriamos a gravidade e para os mais religiosos também têm,se não fosse pela Apple todos viveriamos pelados no paraiso")
        let fruts3 = Fruts(imageName: "laranja.jpg", description: "Fruta doce", moreInfo: "nem todas sao doces muitas delas sao bem azedas")
        
        let fruts4 = Fruts(imageName: "melancia.jpg", description: "Fruta de consumo em lugares bem quentes", moreInfo: "No verao uma melancia gelada é mara !!")
    
        
        frutsArray.append(fruts1)
        frutsArray.append(fruts2)
        frutsArray.append(fruts3)
        frutsArray.append(fruts4)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return frutsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyCellTableViewCell

        let frutsItem = frutsArray[indexPath.row]
        
        cell.imageCell.image = UIImage(named: frutsItem.imageName)
        cell.labelCell.text = frutsItem.description
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let frutSelected = frutsArray[indexPath.row]
        let detailVc:DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        
        detailVc.imagedetail = frutSelected.imageName
        detailVc.descriptionDetailLabel = frutSelected.description
        detailVc.moreInformationDetailLabel = frutSelected.moreInfo
        
        self.presentViewController(detailVc, animated: true, completion: nil)
        
    }
    
}
