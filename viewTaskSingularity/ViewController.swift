//
//  ViewController.swift
//  viewTaskSingularity
//
//  Created by Rustam Aliyev on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let students: [Student] = [
        Student(name: "Darhan", comment: "Love this movie and always will", date: "07.05.2023", image: UIImage(systemName: "heart.fill")),
        Student(name: "Kate", comment: "I don't like this movie and won't always", date: "07.05.2023", image: UIImage(systemName: "heart.fill")),
        Student(name: "Ameliya", comment: "Love this movie and always will", date: "07.05.2023", image: UIImage(systemName: "heart.fill")),
        Student(name: "Henry", comment: "I don't like this movie and won't always", date: "07.05.2023", image: UIImage(systemName: "heart.fill")),
        Student(name: "Peter", comment: "Love this movie and always will", date: "07.05.2023", image: UIImage(systemName: "heart.fill")),
        Student(name: "Luc", comment: "I don't like this movie and won't always", date: "07.05.2023", image: UIImage(systemName: "heart.fill")),
            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! StudentTableViewCell
        cell.commentCell.text = students[indexPath.row].comment
        cell.dateCell.text = students[indexPath.row].date
        cell.imageCell.image = students[indexPath.row].image
        cell.userName.text = students[indexPath.row].name
        return cell
    }
    
    
}
