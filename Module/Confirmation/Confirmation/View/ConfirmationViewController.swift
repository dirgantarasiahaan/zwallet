//
//  ConfirmationViewController.swift
//  Confirmation
//
//  Created by MacBook on 28/05/21.
//

import UIKit
import Core
import Kingfisher

class ConfirmationViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblBalance: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblNotes: UILabel!
    
    var presenter: ConfirmationPresenter?
    
    let contactImage: String = UserDefaultHelper.shared.get(key: .contactImage) ?? ""
    let amount: String = UserDefaultHelper.shared.get(key: .amount) ?? ""
    let balance: String = UserDefaultHelper.shared.get(key: .balance) ?? ""
    let contactname: String = UserDefaultHelper.shared.get(key: .contactName) ?? ""
    let contactPhone: String = UserDefaultHelper.shared.get(key: .contactPhone) ?? ""
    let contactNotes: String = UserDefaultHelper.shared.get(key: .notes) ?? ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: contactImage)
        image.kf.setImage(with: url)
        lblName.text = contactname
        lblPhone.text = contactPhone
        lblAmount.text = "\(Int(amount)?.formatToIdr() ?? "")"
        lblDate.text = DateFormatter().dateNow()
        lblTime.text = DateFormatter().timeNow()
        
        let balanceLeft: Int = (Int(balance) ?? 0) - (Int(amount) ?? 0)
        lblBalance.text = "\(balanceLeft.formatToIdr())"
        
        lblNotes.text = contactNotes

    }

    @IBAction func btnContinue(_ sender: Any) {
        self.presenter?.navigateToSetPin()
    }
    
    @IBAction func btnBackTransfer(_ sender: Any) {
        self.presenter?.navigateToTransfer()
    }
    
}

extension ConfirmationViewController: ConfirmationView {
    
}

extension DateFormatter {
    func dateNow() ->  String {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter.string(from: currentDateTime)
    }
}

extension DateFormatter {
    func timeNow() ->  String {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter.string(from: currentDateTime)
    }
}
