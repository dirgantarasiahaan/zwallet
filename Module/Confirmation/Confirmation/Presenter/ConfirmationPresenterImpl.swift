//
//  ConfirmationPresenterImpl.swift
//  Confirmation
//
//  Created by MacBook on 28/05/21.
//

import Foundation
import UIKit
import Core

class ConfirmationPresenterImpl: ConfirmationPresenter {

    
    let view: ConfirmationView
    let interactor: ConfirmationInteractor
    let router: ConfirmationRouter

    init(view: ConfirmationView, interactor: ConfirmationInteractor, router: ConfirmationRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func confirmationTransfer() {
        self.router.navigateToPin()
    }
    
    func navigateToSetPin() {
        self.router.navigateToSetPin()
    }
    
    func navigateToTransfer() {
        self.router.navigateToTransfer()
    }
}

extension ConfirmationPresenterImpl: ConfirmationInteractorOutput {
    func confirmationResult(isSuccess: Bool) {
    
    }
    
    
}
