//
//  ConfirmationRouterImpl.swift
//  Confirmation
//
//  Created by MacBook on 28/05/21.
//

import Foundation
import Core
import UIKit

public class ConfirmationRouterImpl {
    
    public static func navigateToModule() {
        
        let bundle = Bundle(identifier: "com.casestudy.Confirmation")
        let vc = ConfirmationViewController(nibName: "ConfirmationViewController", bundle: bundle)
        let router = ConfirmationRouterImpl()
        let interactor = ConfirmationInteractorImpl()
        
        let presenter = ConfirmationPresenterImpl(view: vc, interactor: interactor, router: router)
        
//        interactor = presenter
        
        vc.presenter = presenter
        
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
        
        
    }
}

extension ConfirmationRouterImpl: ConfirmationRouter {
    func navigateToSetPin() {
        AppRouter.shared.navigateToPinLogin()
    }
    
    func navigateToTransfer() {
        AppRouter.shared.navigateToTransfer()
    }
    
    func navigateToPin() {
        AppRouter.shared.navigateToPin()
    }
    
    

}
