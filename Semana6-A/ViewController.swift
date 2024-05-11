//
//  ViewController.swift
//  Semana6-A
//
//  Created by Mac21 on 20/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let posts: [Post] = [
        Post(username: "Argenis", imgProfile: "perfil-facebook", imgPost: "luna"),
        Post(username: "Paolo", imgProfile: "perfil-facebook", imgPost: "luna"),
        Post(username: "Salazar", imgProfile: "perfil-facebook", imgPost: "luna"),
        Post(username: "Sihuay", imgProfile: "perfil-facebook", imgPost: "luna")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarTableViewCell
        
        let post = posts[indexPath.row]
        cell.lblname.text = post.username
        cell.imgprofile.image = UIImage(named: post.imgProfile)
        cell.imgpost.image = UIImage(named: post.imgPost)
        
        return cell
    }
    

}

