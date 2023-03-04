import Foundation
import UIKit

class HomeDelegate: NSObject {
    weak var viewcontroller: HomeViewController?
}

extension HomeDelegate: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = viewcontroller else { return }
        let data = vc.list[indexPath.row]
        print("\(data.userName)")
    }    
}
