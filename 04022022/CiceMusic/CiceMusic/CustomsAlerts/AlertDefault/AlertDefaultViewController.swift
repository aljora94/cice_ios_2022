//
//  AlertDefaultViewController.swift
//  CiceMusic
//
//  Created by Alberto Yagüe on 15/2/22.
//

import UIKit

protocol AlertDefaultViewControllerDelegate: AnyObject {
    func primaryButtonPressed()
    func secondButtonPresses()
}

class AlertDefaultViewController: UIViewController {
    
    // MARK: - Variables globales
    var alertManager: CustomAlertManager?
    var type: DefaultAlertType?
    weak var delegate: AlertDefaultViewControllerDelegate?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var titleAlertLBL: UILabel!
    @IBOutlet weak var messageAlertLBL: UILabel!
    @IBOutlet weak var primaryBTN: UIButton!
    @IBOutlet weak var secondaryBTN: UIButton!
    @IBOutlet weak var closeBTN: UIButton!
    
    @IBOutlet weak var backgroundContentView: UIView!
    @IBOutlet weak var alertContentView: UIView!
    
    @IBOutlet weak var constHeightButtonClose: NSLayoutConstraint!
    @IBOutlet weak var constHeightCancelButton: NSLayoutConstraint!
    @IBOutlet weak var constHeightAcceptButton: NSLayoutConstraint!
    // MARK: - IBActions
    
    @IBAction func closeACTION(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func primaryButtonACTION(_ sender: Any) {
        self.dismiss(animated: true) {
            self.delegate?.primaryButtonPressed()
        }
    }
    
    @IBAction func secondaryButtonACTION(_ sender: Any) {
        self.dismiss(animated: true) {
            self.delegate?.secondButtonPresses()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.alpha = 0
        self.configuracionUI()
        // Do any additional setup after loading the view.
    }
    
    private func configuracionUI() {
        
        self.backgroundContentView.alpha = 0.5
        self.primaryBTN.layer.cornerRadius = 25
        self.secondaryBTN.layer.cornerRadius = 25
        self.alertContentView.layer.cornerRadius = 10
        
        switch alertManager?.type{
        case .succesLogin:
            self.titleAlertLBL.text = alertManager?.sucessLoginTitle
            self.messageAlertLBL.text = alertManager?.successLoginMessage
            self.primaryBTN.setTitle(alertManager?.primaryButton, for: .normal)
            self.secondaryBTN.isHidden = true
            self.closeBTN.isHidden = true
            self.constHeightButtonClose.constant = 0
            self.constHeightCancelButton.constant = 0
        case .failureLogin:
            self.titleAlertLBL.text = alertManager?.failureLoginTitle
            self.messageAlertLBL.text = alertManager?.failureLoginMessage
            self.primaryBTN.isHidden = true
            self.constHeightAcceptButton.constant = 0
            self.secondaryBTN.setTitle(alertManager?.secondButton, for: .normal)
        case .cantSendMail:
            self.titleAlertLBL.text = alertManager?.failureMailTitle
            self.messageAlertLBL.text = alertManager?.failureMailMessage
            self.primaryBTN.isHidden = true
            self.constHeightAcceptButton.constant = 0
            self.secondaryBTN.setTitle(alertManager?.secondButton, for: .normal)
        case .generalConfirmation:
            self.titleAlertLBL.text = alertManager?.confirmationTitle
            self.messageAlertLBL.text = alertManager?.confirmationMessage
            self.primaryBTN.setTitle(alertManager?.primaryButton, for: .normal)
            self.secondaryBTN.isHidden = true
            self.closeBTN.isHidden = true
            self.constHeightButtonClose.constant = 0
            self.constHeightCancelButton.constant = 0
        default:
            self.titleAlertLBL.text = "AQUI ANDRES"
            self.messageAlertLBL.text = "Y SI PASA ALGO ???"
            self.primaryBTN.setTitle(alertManager?.primaryButton, for: .normal)
            self.secondaryBTN.setTitle(alertManager?.secondButton, for: .normal)
        }
    }


}
