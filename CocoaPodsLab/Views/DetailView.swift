//
//  DetailView.swift
//  CocoaPodsLab
//
//  Created by Melinda Diaz on 3/3/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class DetailView: UIView {

    public lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "starTrek")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
       return imageView
    }()

    public lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont(name: "Didot", size: 30)
        return label
    }()
    
    public lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont(name: "Didot", size: 30)
        return label
    }()
    public lazy var genderLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()
    
    public lazy var dobLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Didot", size: 23)
        return label
    }()
    public lazy var ageLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()

    public lazy var addressLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 2
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()
    
    public lazy var cityLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()
    
    public lazy var stateLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()
    
    public lazy var zipcodeLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()
    
    public lazy var emailLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textAlignment = .center
           label.font = UIFont(name: "Didot", size: 23)
           return label
       }()
        
        override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            commonInit()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            commonInit()
        }
        
        private func commonInit() {
            setUpImageViewConstraints()
            setUpNameLabelConstraints()
            setUpLastNameLabelConstraints()
            setUpGenderLabelConstraints()
            setUpDobLabelConstraints()
            setUpAgeLabelConstraints()
            setUpAddressLabelConstraints()
            setUpCityLabelConstraints()
            setUpStateLabelConstraints()
           setUpZipcodeLabelConstraints()
            setUpEmailLabelConstraints()
        }
    
    private func setUpImageViewConstraints() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints =  false
        
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.40)
        ])
    }
    private func setUpNameLabelConstraints() {
           addSubview(nameLabel)
           nameLabel.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
           
               nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
              nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
              nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
               nameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15)
           ])
       }
    private func setUpLastNameLabelConstraints() {
             addSubview(lastNameLabel)
             lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
             
             NSLayoutConstraint.activate([
             
                lastNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
                lastNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
               lastNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
             ])
         }
    private func setUpGenderLabelConstraints() {
               addSubview(genderLabel)
               genderLabel.translatesAutoresizingMaskIntoConstraints = false
               
               NSLayoutConstraint.activate([
               
                 genderLabel.topAnchor.constraint(equalTo:  lastNameLabel.bottomAnchor, constant: 20),
                  genderLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                 genderLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
               ])
           }
    private func setUpDobLabelConstraints() {
                  addSubview(dobLabel)
                dobLabel.translatesAutoresizingMaskIntoConstraints = false
                  
                  NSLayoutConstraint.activate([
                  
                    dobLabel.topAnchor.constraint(equalTo:   genderLabel.bottomAnchor, constant: 20),
                    dobLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                       dobLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
                  ])
              }
    private func setUpAgeLabelConstraints() {
                  addSubview(ageLabel)
                ageLabel.translatesAutoresizingMaskIntoConstraints = false
                  
                  NSLayoutConstraint.activate([
                  
                    ageLabel.topAnchor.constraint(equalTo:   dobLabel.bottomAnchor, constant: 20),
                    ageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                       ageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
                  ])
              }
    private func setUpAddressLabelConstraints() {
                    addSubview(addressLabel)
               addressLabel.translatesAutoresizingMaskIntoConstraints = false
                    
                    NSLayoutConstraint.activate([
                    
                      addressLabel.topAnchor.constraint(equalTo:    ageLabel.bottomAnchor, constant: 20),
                      addressLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                         addressLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
                    ])
                }
    private func setUpCityLabelConstraints() {
                       addSubview(cityLabel)
                  cityLabel.translatesAutoresizingMaskIntoConstraints = false
                       
                       NSLayoutConstraint.activate([
                       
                         cityLabel.topAnchor.constraint(equalTo:    addressLabel.bottomAnchor, constant: 20),
                         cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                           cityLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
                       ])
                   }
    private func setUpStateLabelConstraints() {
         addSubview(stateLabel)
    stateLabel.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
         
           stateLabel.topAnchor.constraint(equalTo:    cityLabel.bottomAnchor, constant: 20),
           stateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            stateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
         ])
     }
    private func setUpZipcodeLabelConstraints() {
            addSubview(zipcodeLabel)
       zipcodeLabel.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
            
              zipcodeLabel.topAnchor.constraint(equalTo: stateLabel.bottomAnchor, constant: 20),
              zipcodeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
               zipcodeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
            ])
        }
    
    private func setUpEmailLabelConstraints() {
              addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
              
              NSLayoutConstraint.activate([
              emailLabel.topAnchor.constraint(equalTo: zipcodeLabel.bottomAnchor, constant: 20),
                emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                 emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 40),
              ])
          }
}
