import Foundation
import UIKit

class HomeDataSource: NSObject{
    weak var viewcontroller: HomeViewController?
    
}

extension HomeDataSource : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let vc = viewcontroller else { return 0 }
        return vc.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell, let vc = viewcontroller else { return UITableViewCell() }
        let data = vc.list[indexPath.row]
        cell.setData(image: data.profilePic, user: data.userName, description: data.description)
        return cell
    }
}
