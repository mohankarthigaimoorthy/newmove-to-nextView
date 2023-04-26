//
//  ViewController.swift
//  MySite
//
//  Created by Mohan K on 14/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scree: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
       
        
        let frame1 = CGRect(x: 100, y:100, width:200, height:170)
        let myView1 = UIView(frame:frame1)
        myView1.layer.shadowColor = UIColor.black.cgColor
        myView1.layer.borderColor = UIColor.black.cgColor
        myView1.layer.borderWidth = 2
        myView1.layer.cornerRadius = 5
        myView1.layer.shadowRadius = 2
        
        
          let frame2 = CGRect(x: 98, y:500, width:200, height:150)
          let myView2 = UIView(frame:frame2)
          myView2.layer.shadowColor = UIColor.black.cgColor
          myView2.layer.borderColor = UIColor.black.cgColor
          myView2.layer.borderWidth = 2
          myView2.layer.cornerRadius = 5
          myView2.layer.shadowRadius = 2
          
        myView2.backgroundColor = .green
        myView1.backgroundColor = .red
        view.addSubview(myView1)
        view.addSubview(myView2)
    }

    
   @IBAction func didTapButton() {
//        present(SecondViewController(), animated: true)
        
    }

}


class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .blue
        edgesForExtendedLayout = []
            setUpNavBar()
    }
    
    func setUpNavBar(){
        //For back button in navigation bar
        self.navigationController?.view.backgroundColor = UIColor.white
           self.navigationController?.view.tintColor = UIColor.orange
        self.navigationItem.title = "Back"

        let backButton = UIBarButtonItem()
          backButton.title = "Back"
          self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
self.navigationController?.navigationBar.backItem?.title = "View Control        ler"
      }
}
