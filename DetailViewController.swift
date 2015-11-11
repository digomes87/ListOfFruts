//
//  DetailViewController.swift
//  ListOfFruts
//
//  Created by Diego Gomes on 11/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet var imageDetail: UIImageView!
    @IBOutlet var descriptionDetail: UILabel!
    @IBOutlet var moreInformationDetail: UILabel!
 
    
    var imagedetail = ""
    var descriptionDetailLabel = ""
    var moreInformationDetailLabel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageDetail.image = UIImage(named: imagedetail)
        descriptionDetail.text = descriptionDetailLabel
        moreInformationDetail.text = moreInformationDetailLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
