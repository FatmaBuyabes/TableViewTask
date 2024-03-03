//
//  ViewController.swift
//  StudentAccountTask
//
//  Created by Fatma Buyabes on 03/03/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var studentAccount: StudentAccount?
    
    private let containerView = UIView()
    private let studentNameLabel = UILabel()
    private let studentGpaLabel = UILabel()
    private let studentImageView = UIImageView()
    private let nameLabel = UILabel()
    private let gpaLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(studentNameLabel)
        view.addSubview(studentGpaLabel)
        view.addSubview(studentImageView)
        view.addSubview(containerView)
        view.addSubview(nameLabel)
        view.addSubview(gpaLabel)
        containerView.addSubview(studentImageView)
        containerView.addSubview(studentNameLabel)
        containerView.addSubview(studentGpaLabel)
        containerView.addSubview(nameLabel)
        containerView.addSubview(gpaLabel)
        setUpView()
        setupLayout()
        configureWithStudentAccount()
    }
    
    
    func setUpView(){
        view.backgroundColor = .white
        containerView.backgroundColor = .lightGray
        containerView.layer.cornerRadius = 20
        
        studentImageView.layer.cornerRadius = 20
        studentImageView.clipsToBounds = true
        
        nameLabel.text = "Name:"
        nameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        nameLabel.textColor = .white
                
        gpaLabel.text = "GPA:"
        gpaLabel.font = .systemFont(ofSize: 17, weight: .bold)
        gpaLabel.textColor = .white
        
        studentNameLabel.font = .systemFont(ofSize: 17, weight: .regular)
        studentNameLabel.textColor = .white
        
        studentGpaLabel.font = .systemFont(ofSize: 17, weight: .regular)
        studentGpaLabel.textColor = .white
    }
    func setupLayout(){
        
        containerView.snp.makeConstraints { make in
                    make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
                    make.leading.trailing.equalToSuperview().inset(30)
                    make.height.width.equalTo(210)
                }
                
                studentImageView.snp.makeConstraints { make in
                    make.centerY.equalToSuperview()
                    make.leading.equalToSuperview().offset(20)
                    make.width.height.equalTo(80)
                }
                
                nameLabel.snp.makeConstraints { make in
                    make.top.equalTo(containerView).offset(80)
                    make.leading.equalTo(studentImageView.snp.trailing).offset(20)
                }
                
                studentNameLabel.snp.makeConstraints { make in
                    make.centerY.equalTo(nameLabel)
                    make.leading.equalTo(nameLabel.snp.trailing).offset(5)
                    make.trailing.equalTo(containerView).offset(-20)
                }
                
                gpaLabel.snp.makeConstraints { make in
                    make.top.equalTo(studentNameLabel.snp.bottom).offset(10)
                    make.leading.equalTo(studentImageView.snp.trailing).offset(20)
                }
                
                studentGpaLabel.snp.makeConstraints { make in
                    make.centerY.equalTo(gpaLabel)
                    make.leading.equalTo(gpaLabel.snp.trailing).offset(5)
                    make.trailing.equalTo(containerView).offset(-20)
                }
    }
    
    func configureWithStudentAccount(){
        
        studentNameLabel.text = studentAccount?.studentName
        studentGpaLabel.text = "\(studentAccount?.studentGPA ?? 0)"
       studentImageView.image = UIImage(named: studentAccount!.studentImage)
    }


}

