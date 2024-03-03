//
//  StudentTableViewController.swift
//  StudentAccountTask
//
//  Created by Fatma Buyabes on 03/03/2024.
//

import UIKit
import SnapKit

class StudentTableViewController: UITableViewController {

    var studentAccount: [StudentAccount] = [StudentAccount(studentName: "Fatma Buyabes", studentGPA: 3.41, studentImage: "1"),
    StudentAccount(studentName: "Awdhah Al-Azemi", studentGPA: 4, studentImage: "3"),
    StudentAccount(studentName: "Haya Alqhttani", studentGPA: 4, studentImage: "4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Students Account"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentAccount.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let student = studentAccount[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        
        cell.textLabel?.text = "\(student.studentName) "
        cell.imageView?.image = UIImage(named: student.studentImage)
        
        //return
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let studentVC = ViewController()
        let selectedStudent = studentAccount[indexPath.row]
        
        studentVC.studentAccount = selectedStudent
        
        navigationController?.pushViewController(studentVC, animated: true)
    }


}
