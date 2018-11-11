//
//  TableViewController.swift
//  test_tableview2
//
//  Created by federico SPAGOCCI on 03/11/2018.
//  Copyright © 2018 Inoob_Spagocci. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController  {
    
//    var elencoLibri:[libro] = []
//    var mylibreria = libreria()
    var elencoricette:[Recipe] = []
    var myricettario = Ricettario()
    var filtered = [Recipe]()
    @IBOutlet var searchBar: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        elencoricette = myricettario.GetRecipes()
        
//        searchbar
      
//
   filtered = elencoricette
        
        
//        elencoLibri = mylibreria.GetElencoLibri()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
   
// searchbar la imposto programmaticamente invece che fisicamente
   
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return elencoricette.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text =  elencoricette[indexPath.row].title
       

        return cell
    }
    
    
  override  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
//   var libro2 = libro(titolo:"libro2",autore:"pippo")
   var ricettaselezionata = elencoricette[indexPath.row]
    
    
        performSegue(withIdentifier: "vai_dettaglio_libro", sender: ricettaselezionata
    )
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vai_dettaglio_libro"{
            let vc = segue.destination as! ViewController
//             var libro2 = libro(titolo:"libro2",autore:"pippo")
            vc.recipe = sender as? Recipe
            
      
          

//
//
        }
        
        
        
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TableViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtered = searchText.isEmpty ? elencoricette : elencoricette.filter { $0.title!.contains(searchText) }
        print(filtered.count)
        
    }
    
    
    
    
}
