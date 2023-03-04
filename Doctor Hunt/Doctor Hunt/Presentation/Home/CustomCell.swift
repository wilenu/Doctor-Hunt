import UIKit

class CustomCell: UITableViewCell {
    private let imageProfile = UIImageView()
    private let usernameLabel = UILabel()
    private let descriptionLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSetup() {
        setupImage()
        setupUsername()
        setupDescription()
        layout()
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            imageProfile.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            imageProfile.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageProfile.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            imageProfile.widthAnchor.constraint(equalToConstant: 92),
            imageProfile.heightAnchor.constraint(equalToConstant: 87),
            
            usernameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            usernameLabel.leadingAnchor.constraint(equalTo: imageProfile.trailingAnchor, constant: 15),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor ,constant: -12),
            
            descriptionLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 6),
            descriptionLabel.leadingAnchor.constraint(equalTo: imageProfile.trailingAnchor, constant: 15),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor ,constant: -12),
            
        ])
    }
    
    func setupImage() {
        imageProfile.translatesAutoresizingMaskIntoConstraints = false
        imageProfile.contentMode = .scaleAspectFit
        imageProfile.layer.cornerRadius = 15
        imageProfile.clipsToBounds = true
        addSubview(imageProfile)
    }
    
    func setupUsername() {
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.font = .boldSystemFont(ofSize: 20)
        usernameLabel.textColor = .black
        usernameLabel.numberOfLines = 0
        addSubview(usernameLabel)
    }
    
    func setupDescription() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = .systemFont(ofSize: 16)
        descriptionLabel.textColor = .gray
        descriptionLabel.numberOfLines = 0
        addSubview(descriptionLabel)
    }
    
    func setData(image: String, user: String, description: String) {
        usernameLabel.text = user
        descriptionLabel.text = description
        imageProfile.image = UIImage(named: image)
    }
}
