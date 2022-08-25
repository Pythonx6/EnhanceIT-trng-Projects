//
//  ViewController.swift
//  ShowluxaryCars
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class CarsListVC: UIViewController {

    var tableView = UITableView()
    var cars: [Cars] = []
    let carCell = "carCell"
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        title = "Top Exotic Cars"
        configureTableView()
        setTableViewDelegates()
        cars = fetchData()
        super.viewDidLoad()
    }
    
    func configureTableView() {
        //adding tableview to VC
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(CarTableViewCell.self, forCellReuseIdentifier: carCell)
      
        tableView.pin(view)
        
        
    }
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension CarsListVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCell(withIdentifier: carCell) as! CarTableViewCell
        
        let car = cars[indexPath.row]
        cell.set(car)
        
        return cell
    }
    
}

extension CarsListVC{
    
    func fetchData() -> [Cars] {
        let cars = [Cars(image: images.r8, title: "Audi R8"),
                    Cars(image: images.ferreri, title: "Ferrari"),
                    Cars(image: images.supra, title: "Supra"),
                    Cars(image: images.koenigssegg, title: "Koegnissegg"),
                    Cars(image: images.brabusMB, title: "This is My car 😍MercedezBenz Brabus🏎")
        ]
        return cars
    }
}
