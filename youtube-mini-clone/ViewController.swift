//
//  ViewController.swift
//  youtube-mini-clone
//
//  Created by Amar Tanveer on 08/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getVideos()
        tableView.dataSource = self
        tableView.delegate = self
        model.delegate = self
        
        // Do any additional setup after loading the view.
    }

    func videosFetched(_ videos: [Video]) {
        // Set the returned videos to our property
        self.videos = videos
        
        // Refresh the tableView
        tableView.reloadData()
    }
    
    
    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        // Configure the cell with data
        let title = videos[indexPath.row].title
        cell.textLabel?.text = title
        
        
        return cell
    }
    
    

}

