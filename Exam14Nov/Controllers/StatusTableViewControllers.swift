//
//  StatusTableViewControllers.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import UIKit

class StatusTableViewControllers: UITableViewController {
    
    
    @IBOutlet weak var nameDataLabel: UILabel!
    @IBOutlet weak var chainDataLabel: UILabel!
    @IBOutlet weak var lastBlockDataLabel: UILabel!
    @IBOutlet weak var lastBlockHashDataLabel: UILabel!
    @IBOutlet weak var lastBlockTimeDataLabel: UILabel!
    @IBOutlet weak var difficultyDataLabel: UILabel!
    
//    var backend: FakeBackend? {
//        didSet{
//            self.setupViewControllerData()
//        }
//    }
    
    var backend = FakeBackend()
    var blockbook = FakeBlockbook()
    
    
//    var blockbook: FakeBlockbook? {
//        didSet{
//            self.setupViewControllerData()
//        }
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        NotificationCenter.default.addObserver(forName: .statusDataLoaded, object: nil, queue: nil) { _ in
            DispatchQueue.main.async {
                self.loadData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.loadData()
    }
    
    func setupViewControllerData() {
//        guard let backend = self.backend?,
//        let blockbook = self.blockbook else {
//            return
//        }

        self.loadViewIfNeeded()

        

    }
    
    private func loadData() {
//        DispatchQueue.main.async {
//            self.backend = (FakeBackend)(value: LocalDataManager.realm.objects(FakeBackend.self))
//            self.blockbook = [FakeBlockbook](LocalDataManager.realm.objects(FakeBlockbook.self))
//            print(self.backend)
//            self.tableView.reloadData()
//        }
        
//        self.nameDataLabel.text = blockbook.map({$0.coin})
//        self.chainDataLabel.text = backend.chain
//        self.lastBlockDataLabel.text = blockbook[0].bestHeight.description
//        self.lastBlockHashDataLabel.text = backend[0].bestBlockHash
//        self.lastBlockTimeDataLabel.text = blockbook[0].lastBlockTime
//        self.difficultyDataLabel.text = backend[0].difficulty
        
        
        self.nameDataLabel.text = blockbook.coin
        self.chainDataLabel.text = backend.chain
        self.lastBlockDataLabel.text = blockbook.bestHeight.description
        self.lastBlockHashDataLabel.text = backend.bestBlockHash
        self.lastBlockTimeDataLabel.text = blockbook.lastBlockTime
        self.difficultyDataLabel.text = backend.difficulty
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.section)
//        printContent(indexPath.row)
//    }

}
