//
//  DetailsViewController.swift
//  Static Weather App
//
//  Created by Alireza Karimi on 2023-04-25.
//

import UIKit

class DetailsViewController: UIViewController {
  
  var city: City!
  
  
  let countryTitleLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "Country"
    lbl.font = .boldSystemFont(ofSize: 20)
    return lbl
  }()
  
  let countryLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    return lbl
  }()
  
  let cityTitleLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "City"
    lbl.font = .boldSystemFont(ofSize: 20)
    return lbl
  }()
  
  let cityLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    return lbl
  }()
  
  let temperatureTitleLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "Temperature"
    lbl.font = .boldSystemFont(ofSize: 20)
    return lbl
  }()
  
  let temperatureLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    return lbl
  }()
  
  let summaryTitleLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "Summary"
    lbl.font = .boldSystemFont(ofSize: 20)
    return lbl
  }()
  
  let summaryLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    return lbl
  }()
  
  let precipitationTitleLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "Precipitation"
    lbl.font = .boldSystemFont(ofSize: 20)
    return lbl
  }()
  
  let precipitationLbl:UILabel = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    return lbl
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    let subViews = [countryTitleLbl, countryLbl, cityTitleLbl, cityLbl, temperatureTitleLbl, temperatureLbl, summaryTitleLbl, summaryLbl, precipitationTitleLbl, precipitationLbl]
    let sv = UIStackView(arrangedSubviews: subViews)
    sv.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(sv)
    sv.axis = .vertical
    sv.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
    sv.leadingAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
    sv.trailingAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
    sv.bottomAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
    sv.centerXAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
    sv.alignment = .center
    sv.distribution = .fillEqually
    
    var nationFlag:String = ""
    switch city.name {
    case "Vancouver":
      nationFlag = "🇨🇦"
    case "Verona":
      nationFlag = "🇮🇹"
    case "japan":
      nationFlag = "🇯🇵"
    case "Brzil":
      nationFlag = "🇧🇷"
    case "Korea":
      nationFlag = "🇰🇷"
    default:
      break
    }
    
    countryLbl.text = nationFlag
    cityLbl.text = city.name
    temperatureLbl.text = String(city.temp)
    summaryLbl.text = city.summary
    precipitationLbl.text = String(city.precipitation) + "%"
  }
}
