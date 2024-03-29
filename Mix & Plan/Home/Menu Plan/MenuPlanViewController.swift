//
//  MenuPlanViewController.swift
//  Mix & Plan
//
//  Created by aurelia  natasha on 16/07/19.
//  Copyright © 2019 aurelia  natasha. All rights reserved.
//

import UIKit
import CoreData

class MenuPlanViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var menuPlanList: UITableView!
    //var recipeP : [RecipePlan]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let replanBtn = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action:
//            #selector(replanMenu))
        let replanBtn = UIBarButtonItem(title: "Re-plan", style: .plain, target: self, action: #selector(replanMenu))
        
        self.navigationItem.rightBarButtonItem = replanBtn
        
        menuPlanList.delegate = self
        menuPlanList.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //kalo data di coredatanya ga empty, baru tampilin list day nya
        return 7
        
        //kalo coredatanya empty, tampilin "you currently don't have any food plan yet"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuPCell = tableView.dequeueReusableCell(withIdentifier: "menuPlanCell", for: indexPath) as! MenuPlanTableViewCell
        menuPCell.dayLbl.text = "Day \(indexPath.row+1)"
        
        
        return menuPCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
    @objc func replanMenu(){
        print("hello")
        //hapus semua collection view cell nya
        //pake menuPlan.removeAll() -> hapus semua data di coredatanya
        menuPlanList.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
