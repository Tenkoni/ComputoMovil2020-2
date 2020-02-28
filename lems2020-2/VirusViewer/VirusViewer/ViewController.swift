//
//  ViewController.swift
//  VirusViewer
//
//  Created by 2020-2 on 21/02/20.
//  Copyright © 2020 iOS LAB. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fm = FileManager.default //singleton, instancia de clase
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path) //force to throw, puedes no escribir el catch
        for item in items{
            if item.hasPrefix("virus"){ //has suffix con jpg podría ser más flexible
                pictures.append(item)
            }
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //1: Tratar de encontrar y relacionar la vista Detail.
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            //2: Éxito, ya tengo referencia la vie controler por medio de vc, asignar selectedImage al string que está tocado en usuario.
            vc.selectedImage = pictures[indexPath.row]
            //3: Cambiar la vista
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}




