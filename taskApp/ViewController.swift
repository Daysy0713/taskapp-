//
//  ViewController.swift
//  taskApp
//
//  Created by 飯岡祥吾 on 2021/03/01.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    // 各セルの内容を返すメソッド
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           // 再利用可能な cell を得る
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

           return cell
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        performSegue(withIdentifier: "sellSegue", sender: nil)

    }

    // セルが削除が可能なことを伝えるメソッド
      func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle {
          return .delete
      }

      // Delete ボタンが押された時に呼ばれるメソッド
      func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      }

}

