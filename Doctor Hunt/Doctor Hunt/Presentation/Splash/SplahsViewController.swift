import UIKit

class SplahsViewController: UIViewController{
    private let imageSplash = UIImageView()
    private let labelSplash = UILabel()
    private var timerSplash = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initSetup()
    }
    
    func initSetup() {
        setupImage()
        setupLabel()
        setupTimer()
        layout()
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            imageSplash.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageSplash.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageSplash.widthAnchor.constraint(equalToConstant: 70),
            imageSplash.heightAnchor.constraint(equalToConstant: 70),
            labelSplash.topAnchor.constraint(equalTo: imageSplash.bottomAnchor,constant: 10),
            labelSplash.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            labelSplash.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func setupImage() {
        imageSplash.translatesAutoresizingMaskIntoConstraints = false
        imageSplash.image = UIImage(named: "logo")
        imageSplash.contentMode = .scaleAspectFit
        view.addSubview(imageSplash)
    }
    
    func setupLabel() {
        labelSplash.translatesAutoresizingMaskIntoConstraints = false
        labelSplash.text = "Doctor Hunt"
        labelSplash.font = UIFont.systemFont(ofSize: 20)
        labelSplash.textColor = .black
        labelSplash.textAlignment = .center
        view.addSubview(labelSplash)
    }
    
    func setupTimer() {
        timerSplash = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { timer in
            let viewcontroller = TabBarController()
            viewcontroller.modalPresentationStyle = .fullScreen
            self.present(viewcontroller, animated: true)
        }

    }
}
