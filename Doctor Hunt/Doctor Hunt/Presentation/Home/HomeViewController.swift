import UIKit

class HomeViewController: UIViewController {
    private let tableview = UITableView()
    let dataSourse: HomeDataSource?
    let delegate: HomeDelegate?
    
    let list = [
    UserModel(profilePic: "logo", userName: "name", description: "ios Developer"),
    UserModel(profilePic: "logo", userName: "name", description: "ios Developer"),
    UserModel(profilePic: "logo", userName: "name", description: "ios Developer"),
    UserModel(profilePic: "logo", userName: "name", description: "ios Developer"),
    UserModel(profilePic: "logo", userName: "name", description: "ios Developer"),
    ]
    
    init(dataSource: HomeDataSource,
         delegate: HomeDelegate
    ){
        self.dataSourse = dataSource
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
        self.dataSourse?.viewcontroller = self
        self.delegate?.viewcontroller = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTable()
    }
    
    func setupTable() {
        initTableView()
        layout()
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func initTableView() {
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.dataSource = dataSourse
        tableview.delegate = delegate
        tableview.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        view.addSubview(tableview)
    }
}
